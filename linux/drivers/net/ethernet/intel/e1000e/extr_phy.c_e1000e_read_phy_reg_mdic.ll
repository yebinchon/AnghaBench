; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_read_phy_reg_mdic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_read_phy_reg_mdic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_phy_info }
%struct.TYPE_2__ = type { i64 }
%struct.e1000_phy_info = type { i32 }

@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PHY Address %d is out of range\0A\00", align 1
@E1000_ERR_PARAM = common dso_local global i32 0, align 4
@E1000_MDIC_REG_SHIFT = common dso_local global i32 0, align 4
@E1000_MDIC_PHY_SHIFT = common dso_local global i32 0, align 4
@E1000_MDIC_OP_READ = common dso_local global i32 0, align 4
@MDIC = common dso_local global i32 0, align 4
@E1000_GEN_POLL_TIMEOUT = common dso_local global i32 0, align 4
@E1000_MDIC_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MDI Read did not complete\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_MDIC_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"MDI Error\0A\00", align 1
@E1000_MDIC_REG_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"MDI Read offset error - requested %d, returned %d\0A\00", align 1
@e1000_pch2lan = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_read_phy_reg_mdic(%struct.e1000_hw* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.e1000_phy_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  store %struct.e1000_phy_info* %12, %struct.e1000_phy_info** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @E1000_ERR_PARAM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %103

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %8, align 8
  %26 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @E1000_MDIC_PHY_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %24, %29
  %31 = load i32, i32* @E1000_MDIC_OP_READ, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @MDIC, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ew32(i32 %33, i32 %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %51, %21
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @E1000_GEN_POLL_TIMEOUT, align 4
  %39 = mul nsw i32 %38, 3
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = call i32 @udelay(i32 50)
  %43 = load i32, i32* @MDIC, align 4
  %44 = call i32 @er32(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @E1000_MDIC_READY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %54

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %36

54:                                               ; preds = %49, %36
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @E1000_MDIC_READY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @E1000_ERR_PHY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %103

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @E1000_MDIC_ERROR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @E1000_ERR_PHY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %103

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @E1000_MDIC_REG_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @E1000_MDIC_REG_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %86 = ashr i32 %84, %85
  %87 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load i32, i32* @E1000_ERR_PHY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %103

90:                                               ; preds = %72
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64*, i64** %7, align 8
  store i64 %92, i64* %93, align 8
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @e1000_pch2lan, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = call i32 @udelay(i32 100)
  br label %102

102:                                              ; preds = %100, %90
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %80, %68, %59, %16
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
