; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_read_phy_reg_mdic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_read_phy_reg_mdic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_phy_info }
%struct.igc_phy_info = type { i64 }

@MAX_PHY_REG_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"PHY Address %d is out of range\0A\00", align 1
@IGC_ERR_PARAM = common dso_local global i32 0, align 4
@IGC_MDIC_REG_SHIFT = common dso_local global i64 0, align 8
@IGC_MDIC_PHY_SHIFT = common dso_local global i64 0, align 8
@IGC_MDIC_OP_READ = common dso_local global i64 0, align 8
@IGC_MDIC = common dso_local global i32 0, align 4
@IGC_GEN_POLL_TIMEOUT = common dso_local global i64 0, align 8
@IGC_MDIC_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"MDI Read did not complete\0A\00", align 1
@IGC_ERR_PHY = common dso_local global i32 0, align 4
@IGC_MDIC_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"MDI Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_hw*, i64, i64*)* @igc_read_phy_reg_mdic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_read_phy_reg_mdic(%struct.igc_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.igc_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.igc_phy_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
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
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @IGC_MDIC_REG_SHIFT, align 8
  %24 = shl i64 %22, %23
  %25 = load %struct.igc_phy_info*, %struct.igc_phy_info** %7, align 8
  %26 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IGC_MDIC_PHY_SHIFT, align 8
  %29 = shl i64 %27, %28
  %30 = or i64 %24, %29
  %31 = load i64, i64* @IGC_MDIC_OP_READ, align 8
  %32 = or i64 %30, %31
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* @IGC_MDIC, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @wr32(i32 %33, i64 %34)
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %50, %21
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @IGC_GEN_POLL_TIMEOUT, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = call i32 @usleep_range(i32 500, i32 1000)
  %42 = load i32, i32* @IGC_MDIC, align 4
  %43 = call i64 @rd32(i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @IGC_MDIC_READY, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %36

53:                                               ; preds = %48, %36
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @IGC_MDIC_READY, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @IGC_ERR_PHY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %74

62:                                               ; preds = %53
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @IGC_MDIC_ERROR, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @IGC_ERR_PHY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %74

71:                                               ; preds = %62
  %72 = load i64, i64* %9, align 8
  %73 = load i64*, i64** %6, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %67, %58, %16
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
