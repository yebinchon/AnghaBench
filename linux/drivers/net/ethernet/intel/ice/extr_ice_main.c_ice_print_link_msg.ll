; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_print_link_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_print_link_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ice_aqc_get_phy_caps_data = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"100 G\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"50 G\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"40 G\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"25 G\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"20 G\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"10 G\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"5 G\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"2.5 G\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"1 G\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"100 M\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Rx/Tx\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"RS-FEC\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"FC-FEC/BASE-R\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@ICE_AQ_AN_COMPLETED = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_SW_CFG = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"Get phy capability failed.\0A\00", align 1
@ICE_AQC_PHY_FEC_25G_RS_528_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_544_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_KR_REQ = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [81 x i8] c"NIC Link is up %sbps, Requested FEC: %s, FEC: %s, Autoneg: %s, Flow Control: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_print_link_msg(%struct.ice_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %13 = icmp ne %struct.ice_vsi* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %167

15:                                               ; preds = %2
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %167

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %25 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %30 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @netdev_info(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %167

33:                                               ; preds = %22
  %34 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %35 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %34, i32 0, i32 3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %51 [
    i32 140, label %41
    i32 133, label %42
    i32 134, label %43
    i32 135, label %44
    i32 137, label %45
    i32 138, label %46
    i32 132, label %47
    i32 136, label %48
    i32 141, label %49
    i32 139, label %50
  ]

41:                                               ; preds = %33
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %52

42:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %52

43:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %52

44:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %52

45:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %52

46:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %52

47:                                               ; preds = %33
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %52

48:                                               ; preds = %33
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %52

49:                                               ; preds = %33
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %52

50:                                               ; preds = %33
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %52

51:                                               ; preds = %33
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %52

52:                                               ; preds = %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41
  %53 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %54 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %53, i32 0, i32 3
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %63 [
    i32 131, label %59
    i32 128, label %60
    i32 129, label %61
    i32 130, label %62
  ]

59:                                               ; preds = %52
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %64

60:                                               ; preds = %52
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %64

61:                                               ; preds = %52
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %10, align 8
  br label %64

62:                                               ; preds = %52
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  br label %64

63:                                               ; preds = %52
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %64

64:                                               ; preds = %63, %62, %61, %60, %59
  %65 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %66 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %65, i32 0, i32 3
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %74 [
    i32 143, label %72
    i32 142, label %72
    i32 144, label %73
  ]

72:                                               ; preds = %64, %64
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %75

73:                                               ; preds = %64
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %75

74:                                               ; preds = %64
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %75

75:                                               ; preds = %74, %73, %72
  %76 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %77 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %76, i32 0, i32 3
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ICE_AQ_AN_COMPLETED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %11, align 8
  br label %88

87:                                               ; preds = %75
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8** %11, align 8
  br label %88

88:                                               ; preds = %87, %86
  %89 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %90 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32* %94, i32 4, i32 %95)
  store %struct.ice_aqc_get_phy_caps_data* %96, %struct.ice_aqc_get_phy_caps_data** %5, align 8
  %97 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %5, align 8
  %98 = icmp ne %struct.ice_aqc_get_phy_caps_data* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %88
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %155

100:                                              ; preds = %88
  %101 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %102 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %101, i32 0, i32 3
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = load i32, i32* @ICE_AQC_REPORT_SW_CFG, align 4
  %105 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %5, align 8
  %106 = call i32 @ice_aq_get_phy_caps(%struct.TYPE_12__* %103, i32 0, i32 %104, %struct.ice_aqc_get_phy_caps_data* %105, i32* null)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %100
  %110 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %111 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @netdev_info(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %100
  %115 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %5, align 8
  %116 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_528_REQ, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %5, align 8
  %123 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_544_REQ, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121, %114
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %7, align 8
  br label %146

129:                                              ; preds = %121
  %130 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %5, align 8
  %131 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %129
  %137 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %5, align 8
  %138 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ICE_AQC_PHY_FEC_25G_KR_REQ, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136, %129
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8** %7, align 8
  br label %145

144:                                              ; preds = %136
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %7, align 8
  br label %145

145:                                              ; preds = %144, %143
  br label %146

146:                                              ; preds = %145, %128
  %147 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %148 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %147, i32 0, i32 2
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %5, align 8
  %154 = call i32 @devm_kfree(i32* %152, %struct.ice_aqc_get_phy_caps_data* %153)
  br label %155

155:                                              ; preds = %146, %99
  %156 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %157 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %8, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 (i32, i8*, ...) @netdev_info(i32 %158, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.22, i64 0, i64 0), i8* %159, i8* %160, i8* %161, i8* %162, i8* %163)
  %165 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %166 = call i32 @ice_print_topo_conflict(%struct.ice_vsi* %165)
  br label %167

167:                                              ; preds = %155, %28, %21, %14
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ice_aq_get_phy_caps(%struct.TYPE_12__*, i32, i32, %struct.ice_aqc_get_phy_caps_data*, i32*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_aqc_get_phy_caps_data*) #1

declare dso_local i32 @ice_print_topo_conflict(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
