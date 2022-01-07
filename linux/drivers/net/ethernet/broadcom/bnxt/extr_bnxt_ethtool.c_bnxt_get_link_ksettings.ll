; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings }
%struct.ethtool_link_settings = type { i32, i32, i32, i8*, i32 }
%struct.bnxt = type { i32, %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i64, i32, i32, i64, i32, i32, i32, i64 }

@supported = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@BNXT_LINK_LINK = common dso_local global i64 0, align 8
@DUPLEX_UNKNOWN = common dso_local global i8* null, align 8
@BNXT_LINK_DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i32 0, align 4
@PORT_PHY_QCFG_RESP_MEDIA_TYPE_TP = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i32 0, align 4
@TP = common dso_local global i32 0, align 4
@FIBRE = common dso_local global i32 0, align 4
@PORT_PHY_QCFG_RESP_MEDIA_TYPE_DAC = common dso_local global i64 0, align 8
@PORT_DA = common dso_local global i32 0, align 4
@PORT_PHY_QCFG_RESP_MEDIA_TYPE_FIBRE = common dso_local global i64 0, align 8
@PORT_FIBRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @bnxt_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_link_info*, align 8
  %7 = alloca %struct.ethtool_link_settings*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bnxt* @netdev_priv(%struct.net_device* %9)
  store %struct.bnxt* %10, %struct.bnxt** %5, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 1
  store %struct.bnxt_link_info* %12, %struct.bnxt_link_info** %6, align 8
  %13 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %13, i32 0, i32 0
  store %struct.ethtool_link_settings* %14, %struct.ethtool_link_settings** %7, align 8
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %16 = load i32, i32* @supported, align 4
  %17 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %15, i32 %16)
  %18 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %22 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %23 = call i32 @bnxt_fw_to_ethtool_support_spds(%struct.bnxt_link_info* %21, %struct.ethtool_link_ksettings* %22)
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %25 = load i32, i32* @advertising, align 4
  %26 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %24, i32 %25)
  %27 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %2
  %32 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %33 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %34 = call i32 @bnxt_fw_to_ethtool_advertised_spds(%struct.bnxt_link_info* %32, %struct.ethtool_link_ksettings* %33)
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %36 = load i32, i32* @advertising, align 4
  %37 = load i32, i32* @Autoneg, align 4
  %38 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @AUTONEG_ENABLE, align 4
  %40 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %41 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %43 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BNXT_LINK_LINK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %49 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %50 = call i32 @bnxt_fw_to_ethtool_lp_adv(%struct.bnxt_link_info* %48, %struct.ethtool_link_ksettings* %49)
  br label %51

51:                                               ; preds = %47, %31
  %52 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %53 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @bnxt_fw_to_ethtool_speed(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netif_carrier_ok(%struct.net_device* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = load i8*, i8** @DUPLEX_UNKNOWN, align 8
  %61 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %62 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %79

63:                                               ; preds = %51
  %64 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %65 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BNXT_LINK_DUPLEX_FULL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i8*, i8** @DUPLEX_FULL, align 8
  %72 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %73 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  br label %78

74:                                               ; preds = %63
  %75 = load i8*, i8** @DUPLEX_HALF, align 8
  %76 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %77 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %59
  br label %101

80:                                               ; preds = %2
  %81 = load i32, i32* @AUTONEG_DISABLE, align 4
  %82 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %83 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %85 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bnxt_fw_to_ethtool_speed(i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i8*, i8** @DUPLEX_HALF, align 8
  %89 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %90 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %92 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BNXT_LINK_DUPLEX_FULL, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %80
  %97 = load i8*, i8** @DUPLEX_FULL, align 8
  %98 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %99 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %96, %80
  br label %101

101:                                              ; preds = %100, %79
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %104 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @PORT_NONE, align 4
  %106 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %107 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %109 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PORT_PHY_QCFG_RESP_MEDIA_TYPE_TP, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %101
  %114 = load i32, i32* @PORT_TP, align 4
  %115 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %116 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %118 = load i32, i32* @supported, align 4
  %119 = load i32, i32* @TP, align 4
  %120 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %117, i32 %118, i32 %119)
  %121 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %122 = load i32, i32* @advertising, align 4
  %123 = load i32, i32* @TP, align 4
  %124 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %121, i32 %122, i32 %123)
  br label %155

125:                                              ; preds = %101
  %126 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %127 = load i32, i32* @supported, align 4
  %128 = load i32, i32* @FIBRE, align 4
  %129 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %126, i32 %127, i32 %128)
  %130 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %131 = load i32, i32* @advertising, align 4
  %132 = load i32, i32* @FIBRE, align 4
  %133 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %130, i32 %131, i32 %132)
  %134 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %135 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PORT_PHY_QCFG_RESP_MEDIA_TYPE_DAC, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %125
  %140 = load i32, i32* @PORT_DA, align 4
  %141 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %142 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %154

143:                                              ; preds = %125
  %144 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %145 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PORT_PHY_QCFG_RESP_MEDIA_TYPE_FIBRE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32, i32* @PORT_FIBRE, align 4
  %151 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %152 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %149, %143
  br label %154

154:                                              ; preds = %153, %139
  br label %155

155:                                              ; preds = %154, %113
  %156 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %157 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %7, align 8
  %160 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %162 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  ret i32 0
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bnxt_fw_to_ethtool_support_spds(%struct.bnxt_link_info*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @bnxt_fw_to_ethtool_advertised_spds(%struct.bnxt_link_info*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i32 @bnxt_fw_to_ethtool_lp_adv(%struct.bnxt_link_info*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @bnxt_fw_to_ethtool_speed(i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
