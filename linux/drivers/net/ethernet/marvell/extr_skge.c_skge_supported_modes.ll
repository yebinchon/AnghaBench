; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_supported_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_supported_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, i64 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@CHIP_ID_YUKON = common dso_local global i64 0, align 8
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*)* @skge_supported_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_supported_modes(%struct.skge_hw* %0) #0 {
  %2 = alloca %struct.skge_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %2, align 8
  %4 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %5 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %10 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SUPPORTED_TP, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %25 = call i64 @is_genesis(%struct.skge_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %8
  %28 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %29 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %8
  %39 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %40 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_ID_YUKON, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49, %27
  br label %59

51:                                               ; preds = %1
  %52 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %53 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %50
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
