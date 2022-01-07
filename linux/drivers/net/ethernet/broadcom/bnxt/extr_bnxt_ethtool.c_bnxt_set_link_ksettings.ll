; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings }
%struct.ethtool_link_settings = type { i64, i64, i32 }
%struct.bnxt = type { i32, %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i64, i64, i8*, i32, i32, i8*, i8* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@advertising = common dso_local global i32 0, align 4
@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@PORT_PHY_QCFG_RESP_PHY_TYPE_BASET = common dso_local global i64 0, align 8
@PORT_PHY_QCFG_RESP_PHY_TYPE_BASETE = common dso_local global i64 0, align 8
@PORT_PHY_QCFG_RESP_MEDIA_TYPE_TP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"10GBase-T devices must autoneg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"HALF DUPLEX is not supported!\0A\00", align 1
@BNXT_LINK_DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @bnxt_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_link_info*, align 8
  %8 = alloca %struct.ethtool_link_settings*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.bnxt* @netdev_priv(%struct.net_device* %15)
  store %struct.bnxt* %16, %struct.bnxt** %6, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 1
  store %struct.bnxt_link_info* %18, %struct.bnxt_link_info** %7, align 8
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %19, i32 0, i32 0
  store %struct.ethtool_link_settings* %20, %struct.ethtool_link_settings** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %22 = call i32 @BNXT_SINGLE_PF(%struct.bnxt* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %129

27:                                               ; preds = %2
  %28 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %8, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AUTONEG_ENABLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %27
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %39 = load i32, i32* @advertising, align 4
  %40 = call i32 @BNXT_ETHTOOL_TO_FW_SPDS(i8* %37, %struct.ethtool_link_ksettings* %38, i32 %39)
  %41 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %42 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %43 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %50 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %49, i32 0, i32 6
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %53 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %58

54:                                               ; preds = %36
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %57 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %48
  store i32 1, i32* %9, align 4
  br label %115

59:                                               ; preds = %27
  %60 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %61 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* @PORT_PHY_QCFG_RESP_PHY_TYPE_BASET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @PORT_PHY_QCFG_RESP_PHY_TYPE_BASETE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %72 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PORT_PHY_QCFG_RESP_MEDIA_TYPE_TP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70, %66, %59
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = call i32 @netdev_err(%struct.net_device* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %124

81:                                               ; preds = %70
  %82 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %8, align 8
  %83 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DUPLEX_HALF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = call i32 @netdev_err(%struct.net_device* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %124

92:                                               ; preds = %81
  %93 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %8, align 8
  %94 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %11, align 4
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i8* @bnxt_get_fw_speed(%struct.net_device* %96, i32 %97)
  store i8* %98, i8** %13, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %124

104:                                              ; preds = %92
  %105 = load i8*, i8** %13, align 8
  %106 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %107 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @BNXT_LINK_DUPLEX_FULL, align 4
  %109 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %110 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %112 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %111, i32 0, i32 3
  store i32 0, i32* %112, align 8
  %113 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %114 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %113, i32 0, i32 2
  store i8* null, i8** %114, align 8
  br label %115

115:                                              ; preds = %104, %58
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = call i64 @netif_running(%struct.net_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @bnxt_hwrm_set_link_setting(%struct.bnxt* %120, i32 %121, i32 0)
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %101, %87, %76
  %125 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %126 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %124, %24
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BNXT_SINGLE_PF(%struct.bnxt*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BNXT_ETHTOOL_TO_FW_SPDS(i8*, %struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i8* @bnxt_get_fw_speed(%struct.net_device*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnxt_hwrm_set_link_setting(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
