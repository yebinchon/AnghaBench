; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hwrm_port_led_cfg_input = type { i32, i32, i32, i8*, i32 }
%struct.bnxt = type { i32, %struct.TYPE_2__*, %struct.bnxt_pf_info }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bnxt_pf_info = type { i32 }
%struct.bnxt_led_cfg = type { i32, i8*, i8*, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETHTOOL_ID_ACTIVE = common dso_local global i32 0, align 4
@PORT_LED_CFG_REQ_LED0_STATE_BLINKALT = common dso_local global i32 0, align 4
@ETHTOOL_ID_INACTIVE = common dso_local global i32 0, align 4
@PORT_LED_CFG_REQ_LED1_STATE_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HWRM_PORT_LED_CFG = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnxt_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_port_led_cfg_input, align 8
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca %struct.bnxt_pf_info*, align 8
  %9 = alloca %struct.bnxt_led_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = bitcast %struct.hwrm_port_led_cfg_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.bnxt* @netdev_priv(%struct.net_device* %15)
  store %struct.bnxt* %16, %struct.bnxt** %7, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 2
  store %struct.bnxt_pf_info* %18, %struct.bnxt_pf_info** %8, align 8
  %19 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %25 = call i64 @BNXT_VF(%struct.bnxt* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %114

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ETHTOOL_ID_ACTIVE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @PORT_LED_CFG_REQ_LED0_STATE_BLINKALT, align 4
  store i32 %35, i32* %10, align 4
  %36 = call i8* @cpu_to_le16(i32 500)
  store i8* %36, i8** %11, align 8
  br label %48

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ETHTOOL_ID_INACTIVE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @PORT_LED_CFG_REQ_LED1_STATE_DEFAULT, align 4
  store i32 %42, i32* %10, align 4
  %43 = call i8* @cpu_to_le16(i32 0)
  store i8* %43, i8** %11, align 8
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %114

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %50 = load i32, i32* @HWRM_PORT_LED_CFG, align 4
  %51 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %49, %struct.hwrm_port_led_cfg_input* %6, i32 %50, i32 -1, i32 -1)
  %52 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %53 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = getelementptr inbounds %struct.hwrm_port_led_cfg_input, %struct.hwrm_port_led_cfg_input* %6, i32 0, i32 3
  store i8* %55, i8** %56, align 8
  %57 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.hwrm_port_led_cfg_input, %struct.hwrm_port_led_cfg_input* %6, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.hwrm_port_led_cfg_input, %struct.hwrm_port_led_cfg_input* %6, i32 0, i32 2
  %62 = bitcast i32* %61 to %struct.bnxt_led_cfg*
  store %struct.bnxt_led_cfg* %62, %struct.bnxt_led_cfg** %9, align 8
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %104, %48
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %66 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @BNXT_LED_DFLT_ENABLES(i32 %70)
  %72 = getelementptr inbounds %struct.hwrm_port_led_cfg_input, %struct.hwrm_port_led_cfg_input* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %76 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bnxt_led_cfg*, %struct.bnxt_led_cfg** %9, align 8
  %84 = getelementptr inbounds %struct.bnxt_led_cfg, %struct.bnxt_led_cfg* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.bnxt_led_cfg*, %struct.bnxt_led_cfg** %9, align 8
  %87 = getelementptr inbounds %struct.bnxt_led_cfg, %struct.bnxt_led_cfg* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load %struct.bnxt_led_cfg*, %struct.bnxt_led_cfg** %9, align 8
  %90 = getelementptr inbounds %struct.bnxt_led_cfg, %struct.bnxt_led_cfg* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.bnxt_led_cfg*, %struct.bnxt_led_cfg** %9, align 8
  %93 = getelementptr inbounds %struct.bnxt_led_cfg, %struct.bnxt_led_cfg* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %95 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bnxt_led_cfg*, %struct.bnxt_led_cfg** %9, align 8
  %103 = getelementptr inbounds %struct.bnxt_led_cfg, %struct.bnxt_led_cfg* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %69
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  %107 = load %struct.bnxt_led_cfg*, %struct.bnxt_led_cfg** %9, align 8
  %108 = getelementptr inbounds %struct.bnxt_led_cfg, %struct.bnxt_led_cfg* %107, i32 1
  store %struct.bnxt_led_cfg* %108, %struct.bnxt_led_cfg** %9, align 8
  br label %63

109:                                              ; preds = %63
  %110 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %111 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %112 = call i32 @hwrm_send_message(%struct.bnxt* %110, %struct.hwrm_port_led_cfg_input* %6, i32 32, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %44, %27
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #2

declare dso_local i64 @BNXT_VF(%struct.bnxt*) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_port_led_cfg_input*, i32, i32, i32) #2

declare dso_local i32 @BNXT_LED_DFLT_ENABLES(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_port_led_cfg_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
