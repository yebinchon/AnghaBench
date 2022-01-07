; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_update_phy_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_update_phy_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"failed to update link (rc: %x)\0A\00", align 1
@BNXT_AUTONEG_FLOW_CTRL = common dso_local global i32 0, align 4
@BNXT_LINK_PAUSE_BOTH = common dso_local global i32 0, align 4
@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@BNXT_LINK_AUTO_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to update phy setting (rc: %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_update_phy_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_update_phy_setting(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_link_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 1
  store %struct.bnxt_link_info* %10, %struct.bnxt_link_info** %8, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = call i32 @bnxt_update_link(%struct.bnxt* %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @netdev_err(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %150

22:                                               ; preds = %1
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = call i32 @BNXT_SINGLE_PF(%struct.bnxt* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %150

27:                                               ; preds = %22
  %28 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %29 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %36 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BNXT_LINK_PAUSE_BOTH, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %41 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %34, %27
  %46 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %47 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %54 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %57 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %52, %45
  %62 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %63 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %61
  %69 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %70 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @BNXT_AUTO_MODE(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %77 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %80 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %75
  %85 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %86 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %89 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %84
  br label %111

94:                                               ; preds = %61
  %95 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %96 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BNXT_LINK_AUTO_NONE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 1, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %94
  %102 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %103 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %102, i32 0, i32 9
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %106 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %105, i32 0, i32 10
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %101
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %113 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @netif_carrier_ok(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  store i32 1, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %111
  %119 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %120 = call i32 @bnxt_eee_config_ok(%struct.bnxt* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  store i32 1, i32* %7, align 4
  br label %123

123:                                              ; preds = %122, %118
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @bnxt_hwrm_set_link_setting(%struct.bnxt* %127, i32 %128, i32 %129)
  store i32 %130, i32* %4, align 4
  br label %138

131:                                              ; preds = %123
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %136 = call i32 @bnxt_hwrm_set_pause(%struct.bnxt* %135)
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %126
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %143 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @netdev_err(i32 %144, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %150

148:                                              ; preds = %138
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %141, %26, %15
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @bnxt_update_link(%struct.bnxt*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @BNXT_SINGLE_PF(%struct.bnxt*) #1

declare dso_local i64 @BNXT_AUTO_MODE(i64) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @bnxt_eee_config_ok(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_set_link_setting(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_hwrm_set_pause(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
