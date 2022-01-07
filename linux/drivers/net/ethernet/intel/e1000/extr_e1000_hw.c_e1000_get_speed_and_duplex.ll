; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_get_speed_and_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_get_speed_and_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i64 }

@e1000_82543 = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"1000 Mbs, \00", align 1
@E1000_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"100 Mbs, \00", align 1
@SPEED_10 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"10 Mbs, \00", align 1
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c" Half Duplex\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"1000 Mbs, Full Duplex\0A\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@PHY_AUTONEG_EXP = common dso_local global i32 0, align 4
@NWAY_ER_LP_NWAY_CAPS = common dso_local global i64 0, align 8
@PHY_LP_ABILITY = common dso_local global i32 0, align 4
@NWAY_LPAR_100TX_FD_CAPS = common dso_local global i64 0, align 8
@NWAY_LPAR_10T_FD_CAPS = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_speed_and_duplex(%struct.e1000_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_82543, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %3
  %17 = load i32, i32* @STATUS, align 4
  %18 = call i32 @er32(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i64, i64* @SPEED_1000, align 8
  %25 = load i64*, i64** %6, align 8
  store i64 %24, i64* %25, align 8
  %26 = call i32 @e_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %41

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i64, i64* @SPEED_100, align 8
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = call i32 @e_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %40

36:                                               ; preds = %27
  %37 = load i64, i64* @SPEED_10, align 8
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  %39 = call i32 @e_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @E1000_STATUS_FD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i64, i64* @FULL_DUPLEX, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  %49 = call i32 @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %54

50:                                               ; preds = %41
  %51 = load i64, i64* @HALF_DUPLEX, align 8
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  %53 = call i32 @e_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %46
  br label %61

55:                                               ; preds = %3
  %56 = call i32 @e_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i64, i64* @SPEED_1000, align 8
  %58 = load i64*, i64** %6, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* @FULL_DUPLEX, align 8
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %54
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @e1000_phy_igp, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %121

67:                                               ; preds = %61
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %121

72:                                               ; preds = %67
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %74 = load i32, i32* @PHY_AUTONEG_EXP, align 4
  %75 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %73, i32 %74, i64* %10)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %4, align 8
  br label %123

80:                                               ; preds = %72
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @NWAY_ER_LP_NWAY_CAPS, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* @HALF_DUPLEX, align 8
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  br label %120

88:                                               ; preds = %80
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %90 = load i32, i32* @PHY_LP_ABILITY, align 4
  %91 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %89, i32 %90, i64* %10)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i64, i64* %9, align 8
  store i64 %95, i64* %4, align 8
  br label %123

96:                                               ; preds = %88
  %97 = load i64*, i64** %6, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SPEED_100, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @NWAY_LPAR_100TX_FD_CAPS, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101, %96
  %107 = load i64*, i64** %6, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SPEED_10, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @NWAY_LPAR_10T_FD_CAPS, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111, %101
  %117 = load i64, i64* @HALF_DUPLEX, align 8
  %118 = load i64*, i64** %7, align 8
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %111, %106
  br label %120

120:                                              ; preds = %119, %85
  br label %121

121:                                              ; preds = %120, %67, %61
  %122 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %122, i64* %4, align 8
  br label %123

123:                                              ; preds = %121, %94, %78
  %124 = load i64, i64* %4, align 8
  ret i64 %124
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
