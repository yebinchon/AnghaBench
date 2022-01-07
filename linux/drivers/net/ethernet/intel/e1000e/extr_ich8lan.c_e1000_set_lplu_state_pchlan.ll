; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_set_lplu_state_pchlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_set_lplu_state_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@HV_OEM_BITS = common dso_local global i32 0, align 4
@HV_OEM_BITS_LPLU = common dso_local global i32 0, align 4
@HV_OEM_BITS_RESTART_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_lplu_state_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_lplu_state_pchlan(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = load i32, i32* @HV_OEM_BITS, align 4
  %10 = call i64 @e1e_rphy(%struct.e1000_hw* %8, i32 %9, i32* %7)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.0*
  %35 = call i32 %32(%struct.e1000_hw.0* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @HV_OEM_BITS_RESTART_AN, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %43 = load i32, i32* @HV_OEM_BITS, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @e1e_wphy(%struct.e1000_hw* %42, i32 %43, i32 %44)
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %41, %13
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
