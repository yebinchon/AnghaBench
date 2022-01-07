; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32 }
%struct.qede_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)*, i32 (i32)* }
%struct.qed_link_params = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.qed_link_output = type { i32, %struct.TYPE_4__, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Link settings are not allowed to be changed\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"EEE is not supported\0A\00", align 1
@QED_LINK_OVERRIDE_EEE_CONFIG = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid advertised capabilities %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_EEE_1G_ADV = common dso_local global i32 0, align 4
@QED_EEE_10G_ADV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @qede_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca %struct.qed_link_output, align 4
  %8 = alloca %struct.qed_link_params, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.qede_dev* %10, %struct.qede_dev** %6, align 8
  %11 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %12 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %19 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %25 = call i32 @DP_INFO(%struct.qede_dev* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %138

28:                                               ; preds = %2
  %29 = bitcast %struct.qed_link_output* %7 to %struct.qed_link_params*
  %30 = call i32 @memset(%struct.qed_link_params* %29, i32 0, i32 28)
  %31 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %32 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)** %36, align 8
  %38 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %39 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = bitcast %struct.qed_link_output* %7 to %struct.qed_link_params*
  %42 = call i32 %37(i32 %40, %struct.qed_link_params* %41)
  %43 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %7, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %28
  %47 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %48 = call i32 @DP_INFO(%struct.qede_dev* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %138

51:                                               ; preds = %28
  %52 = call i32 @memset(%struct.qed_link_params* %8, i32 0, i32 28)
  %53 = load i32, i32* @QED_LINK_OVERRIDE_EEE_CONFIG, align 4
  %54 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %8, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %61 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %51
  %66 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %70 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %65, %51
  %78 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %79 = load i32, i32* @QED_MSG_DEBUG, align 4
  %80 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @DP_VERBOSE(%struct.qede_dev* %78, i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %138

86:                                               ; preds = %65
  %87 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @QED_EEE_1G_ADV, align 4
  %95 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %8, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* @QED_EEE_10G_ADV, align 4
  %106 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %8, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %97
  %111 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %8, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %117 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %8, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %122 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %8, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %8, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %128 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)** %132, align 8
  %134 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %135 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %133(i32 %136, %struct.qed_link_params* %8)
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %110, %77, %46, %23
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @memset(%struct.qed_link_params*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
