; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_setup_copper_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_setup_copper_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64 }

@e1000_phy_igp = common dso_local global i64 0, align 8
@e1000_phy_m88 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"gbe_dhg_phy_setup failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Forcing speed and duplex\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error Forcing Speed and Duplex\0A\00", align 1
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Valid link established!!!\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to establish link!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = call i64 @e1000_copper_link_preconfig(%struct.e1000_hw* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %2, align 8
  br label %117

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_phy_igp, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = call i64 @e1000_copper_link_igp_setup(%struct.e1000_hw* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  br label %117

26:                                               ; preds = %19
  br label %51

27:                                               ; preds = %13
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @e1000_phy_m88, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = call i64 @e1000_copper_link_mgp_setup(%struct.e1000_hw* %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  store i64 %39, i64* %2, align 8
  br label %117

40:                                               ; preds = %33
  br label %50

41:                                               ; preds = %27
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = call i64 @gbe_dhg_phy_setup(%struct.e1000_hw* %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %2, align 8
  br label %117

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %26
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = call i64 @e1000_copper_link_autoneg(%struct.e1000_hw* %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, i64* %4, align 8
  store i64 %62, i64* %2, align 8
  br label %117

63:                                               ; preds = %56
  br label %74

64:                                               ; preds = %51
  %65 = call i32 @e_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = call i64 @e1000_phy_force_speed_duplex(%struct.e1000_hw* %66)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i64, i64* %4, align 8
  store i64 %72, i64* %2, align 8
  br label %117

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %63
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %111, %74
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 10
  br i1 %77, label %78, label %114

78:                                               ; preds = %75
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = load i32, i32* @PHY_STATUS, align 4
  %81 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %79, i32 %80, i32* %6)
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i64, i64* %4, align 8
  store i64 %85, i64* %2, align 8
  br label %117

86:                                               ; preds = %78
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = load i32, i32* @PHY_STATUS, align 4
  %89 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %87, i32 %88, i32* %6)
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i64, i64* %4, align 8
  store i64 %93, i64* %2, align 8
  br label %117

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @MII_SR_LINK_STATUS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = call i64 @e1000_copper_link_postconfig(%struct.e1000_hw* %100)
  store i64 %101, i64* %4, align 8
  %102 = load i64, i64* %4, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i64, i64* %4, align 8
  store i64 %105, i64* %2, align 8
  br label %117

106:                                              ; preds = %99
  %107 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %108, i64* %2, align 8
  br label %117

109:                                              ; preds = %94
  %110 = call i32 @udelay(i32 10)
  br label %111

111:                                              ; preds = %109
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %75

114:                                              ; preds = %75
  %115 = call i32 @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %116, i64* %2, align 8
  br label %117

117:                                              ; preds = %114, %106, %104, %92, %84, %70, %61, %46, %38, %24, %11
  %118 = load i64, i64* %2, align 8
  ret i64 %118
}

declare dso_local i64 @e1000_copper_link_preconfig(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_igp_setup(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_mgp_setup(%struct.e1000_hw*) #1

declare dso_local i64 @gbe_dhg_phy_setup(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_copper_link_autoneg(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_phy_force_speed_duplex(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_copper_link_postconfig(%struct.e1000_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
