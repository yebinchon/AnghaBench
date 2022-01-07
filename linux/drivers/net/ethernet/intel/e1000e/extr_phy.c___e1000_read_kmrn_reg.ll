; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c___e1000_read_kmrn_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c___e1000_read_kmrn_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_KMRNCTRLSTA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_REN = common dso_local global i32 0, align 4
@KMRNCTRLSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i64*, i32)* @__e1000_read_kmrn_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__e1000_read_kmrn_reg(%struct.e1000_hw* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %18, align 8
  %20 = icmp ne i64 (%struct.e1000_hw.1*)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  br label %66

22:                                               ; preds = %14
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %26, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %29 = bitcast %struct.e1000_hw* %28 to %struct.e1000_hw.1*
  %30 = call i64 %27(%struct.e1000_hw.1* %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %5, align 8
  br label %66

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @E1000_KMRNCTRLSTA_REN, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @KMRNCTRLSTA, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ew32(i32 %44, i32 %45)
  %47 = call i32 (...) @e1e_flush()
  %48 = call i32 @udelay(i32 2)
  %49 = load i32, i32* @KMRNCTRLSTA, align 4
  %50 = call i32 @er32(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64*, i64** %8, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %36
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.0*
  %64 = call i32 %61(%struct.e1000_hw.0* %63)
  br label %65

65:                                               ; preds = %56, %36
  store i64 0, i64* %5, align 8
  br label %66

66:                                               ; preds = %65, %33, %21
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
