; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_write_phy_reg_mdic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_write_phy_reg_mdic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_phy_info }
%struct.igc_phy_info = type { i64 }

@MAX_PHY_REG_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"PHY Address %d is out of range\0A\00", align 1
@IGC_ERR_PARAM = common dso_local global i32 0, align 4
@IGC_MDIC_REG_SHIFT = common dso_local global i64 0, align 8
@IGC_MDIC_PHY_SHIFT = common dso_local global i64 0, align 8
@IGC_MDIC_OP_WRITE = common dso_local global i64 0, align 8
@IGC_MDIC = common dso_local global i32 0, align 4
@IGC_GEN_POLL_TIMEOUT = common dso_local global i64 0, align 8
@IGC_MDIC_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"MDI Write did not complete\0A\00", align 1
@IGC_ERR_PHY = common dso_local global i32 0, align 4
@IGC_MDIC_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"MDI Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_hw*, i64, i64)* @igc_write_phy_reg_mdic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_write_phy_reg_mdic(%struct.igc_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.igc_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.igc_phy_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %12 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %11, i32 0, i32 0
  store %struct.igc_phy_info* %12, %struct.igc_phy_info** %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MAX_PHY_REG_ADDRESS, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @IGC_ERR_PARAM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %74

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @IGC_MDIC_REG_SHIFT, align 8
  %25 = shl i64 %23, %24
  %26 = or i64 %22, %25
  %27 = load %struct.igc_phy_info*, %struct.igc_phy_info** %7, align 8
  %28 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IGC_MDIC_PHY_SHIFT, align 8
  %31 = shl i64 %29, %30
  %32 = or i64 %26, %31
  %33 = load i64, i64* @IGC_MDIC_OP_WRITE, align 8
  %34 = or i64 %32, %33
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* @IGC_MDIC, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @wr32(i32 %35, i64 %36)
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %52, %21
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @IGC_GEN_POLL_TIMEOUT, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = call i32 @usleep_range(i32 500, i32 1000)
  %44 = load i32, i32* @IGC_MDIC, align 4
  %45 = call i64 @rd32(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @IGC_MDIC_READY, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %38

55:                                               ; preds = %50, %38
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @IGC_MDIC_READY, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @IGC_ERR_PHY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %74

64:                                               ; preds = %55
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @IGC_MDIC_ERROR, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @IGC_ERR_PHY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %69, %60, %16
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local i32 @hw_dbg(i8*, ...) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
