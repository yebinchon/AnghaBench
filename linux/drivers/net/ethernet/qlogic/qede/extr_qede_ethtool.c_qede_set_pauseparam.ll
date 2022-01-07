; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.qede_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)*, i32 (i32)* }
%struct.qed_link_params = type { i32, i32, i32, i32 }
%struct.qed_link_output = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Pause settings are not allowed to be changed\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@QED_LINK_OVERRIDE_PAUSE_CONFIG = common dso_local global i32 0, align 4
@QED_LM_Autoneg_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"autoneg not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_AUTONEG_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_RX_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @qede_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca %struct.qed_link_params, align 4
  %8 = alloca %struct.qed_link_output, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.qede_dev* %10, %struct.qede_dev** %6, align 8
  %11 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %12 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %17 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %24 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %15, %2
  %29 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %30 = call i32 @DP_INFO(%struct.qede_dev* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %106

33:                                               ; preds = %15
  %34 = bitcast %struct.qed_link_output* %8 to %struct.qed_link_params*
  %35 = call i32 @memset(%struct.qed_link_params* %34, i32 0, i32 16)
  %36 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %37 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)** %41, align 8
  %43 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %44 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %struct.qed_link_output* %8 to %struct.qed_link_params*
  %47 = call i32 %42(i32 %45, %struct.qed_link_params* %46)
  %48 = call i32 @memset(%struct.qed_link_params* %7, i32 0, i32 16)
  %49 = load i32, i32* @QED_LINK_OVERRIDE_PAUSE_CONFIG, align 4
  %50 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %7, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %33
  %58 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @QED_LM_Autoneg_BIT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %65 = call i32 @DP_INFO(%struct.qede_dev* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %106

68:                                               ; preds = %57
  %69 = load i32, i32* @QED_LINK_PAUSE_AUTONEG_ENABLE, align 4
  %70 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %7, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %68, %33
  %74 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @QED_LINK_PAUSE_RX_ENABLE, align 4
  %80 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %7, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @QED_LINK_PAUSE_TX_ENABLE, align 4
  %90 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %7, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %7, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %96 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)** %100, align 8
  %102 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %103 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %101(i32 %104, %struct.qed_link_params* %7)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %93, %63, %28
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @memset(%struct.qed_link_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
