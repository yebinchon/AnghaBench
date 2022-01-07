; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_nvm.c_igb_shift_in_eec_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_nvm.c_igb_shift_in_eec_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_DO = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64)* @igb_shift_in_eec_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_shift_in_eec_bits(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @E1000_EECD, align 4
  %9 = call i64 @rd32(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @E1000_EECD_DO, align 8
  %11 = load i64, i64* @E1000_EECD_DI, align 8
  %12 = or i64 %10, %11
  %13 = xor i64 %12, -1
  %14 = load i64, i64* %5, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %41, %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = shl i64 %21, 1
  store i64 %22, i64* %7, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = call i32 @igb_raise_eec_clk(%struct.e1000_hw* %23, i64* %5)
  %25 = load i32, i32* @E1000_EECD, align 4
  %26 = call i64 @rd32(i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* @E1000_EECD_DI, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %5, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @E1000_EECD_DO, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i64, i64* %7, align 8
  %37 = or i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %35, %20
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = call i32 @igb_lower_eec_clk(%struct.e1000_hw* %39, i64* %5)
  br label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %16

44:                                               ; preds = %16
  %45 = load i64, i64* %7, align 8
  ret i64 %45
}

declare dso_local i64 @rd32(i32) #1

declare dso_local i32 @igb_raise_eec_clk(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @igb_lower_eec_clk(%struct.e1000_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
