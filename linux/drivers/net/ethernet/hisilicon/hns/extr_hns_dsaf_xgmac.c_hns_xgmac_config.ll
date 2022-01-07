; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32 }
%struct.mac_params = type { i32, i32, i32, i32 }
%struct.mac_driver = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32*, i32, i32*, i32*, i32, %struct.hns_mac_cb*, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hns_xgmac_init = common dso_local global i32 0, align 4
@hns_xgmac_enable = common dso_local global i32 0, align 4
@hns_xgmac_disable = common dso_local global i32 0, align 4
@hns_xgmac_set_pausefrm_mac_addr = common dso_local global i32 0, align 4
@hns_xgmac_config_pad_and_crc = common dso_local global i32 0, align 4
@hns_xgmac_set_rx_ignore_pause_frames = common dso_local global i32 0, align 4
@hns_xgmac_free = common dso_local global i32 0, align 4
@hns_xgmac_set_tx_auto_pause_frames = common dso_local global i32 0, align 4
@hns_xgmac_config_max_frame_length = common dso_local global i32 0, align 4
@hns_xgmac_pausefrm_cfg = common dso_local global i32 0, align 4
@hns_xgmac_get_info = common dso_local global i32 0, align 4
@hns_xgmac_get_pausefrm_cfg = common dso_local global i32 0, align 4
@hns_xgmac_get_link_status = common dso_local global i32 0, align 4
@hns_xgmac_get_regs = common dso_local global i32 0, align 4
@hns_xgmac_get_stats = common dso_local global i32 0, align 4
@hns_xgmac_get_sset_count = common dso_local global i32 0, align 4
@hns_xgmac_get_regs_count = common dso_local global i32 0, align 4
@hns_xgmac_get_strings = common dso_local global i32 0, align 4
@hns_xgmac_update_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hns_xgmac_config(%struct.hns_mac_cb* %0, %struct.mac_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hns_mac_cb*, align 8
  %5 = alloca %struct.mac_params*, align 8
  %6 = alloca %struct.mac_driver*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %4, align 8
  store %struct.mac_params* %1, %struct.mac_params** %5, align 8
  %7 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %8 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mac_driver* @devm_kzalloc(i32 %9, i32 160, i32 %10)
  store %struct.mac_driver* %11, %struct.mac_driver** %6, align 8
  %12 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %13 = icmp ne %struct.mac_driver* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %108

15:                                               ; preds = %2
  %16 = load i32, i32* @hns_xgmac_init, align 4
  %17 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %18 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %17, i32 0, i32 28
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @hns_xgmac_enable, align 4
  %20 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %21 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %20, i32 0, i32 27
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @hns_xgmac_disable, align 4
  %23 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %24 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %23, i32 0, i32 26
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mac_params*, %struct.mac_params** %5, align 8
  %26 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %29 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %28, i32 0, i32 25
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mac_params*, %struct.mac_params** %5, align 8
  %31 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %34 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %33, i32 0, i32 24
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mac_params*, %struct.mac_params** %5, align 8
  %36 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %39 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %38, i32 0, i32 23
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mac_params*, %struct.mac_params** %5, align 8
  %41 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %44 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %43, i32 0, i32 22
  store i32 %42, i32* %44, align 8
  %45 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %46 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %47 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %46, i32 0, i32 21
  store %struct.hns_mac_cb* %45, %struct.hns_mac_cb** %47, align 8
  %48 = load i32, i32* @hns_xgmac_set_pausefrm_mac_addr, align 4
  %49 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %50 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %49, i32 0, i32 20
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %52 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %51, i32 0, i32 19
  store i32* null, i32** %52, align 8
  %53 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %54 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %53, i32 0, i32 18
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @hns_xgmac_config_pad_and_crc, align 4
  %56 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %57 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %56, i32 0, i32 17
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %59 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %58, i32 0, i32 16
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* @hns_xgmac_set_rx_ignore_pause_frames, align 4
  %61 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %62 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %61, i32 0, i32 15
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @hns_xgmac_free, align 4
  %64 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %65 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %67 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %66, i32 0, i32 13
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* @hns_xgmac_set_tx_auto_pause_frames, align 4
  %69 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %70 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @hns_xgmac_config_max_frame_length, align 4
  %72 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %73 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @hns_xgmac_pausefrm_cfg, align 4
  %75 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %76 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %78 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %77, i32 0, i32 9
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* @hns_xgmac_get_info, align 4
  %80 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %81 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @hns_xgmac_get_pausefrm_cfg, align 4
  %83 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %84 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @hns_xgmac_get_link_status, align 4
  %86 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %87 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @hns_xgmac_get_regs, align 4
  %89 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %90 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @hns_xgmac_get_stats, align 4
  %92 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %93 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @hns_xgmac_get_sset_count, align 4
  %95 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %96 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @hns_xgmac_get_regs_count, align 4
  %98 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %99 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @hns_xgmac_get_strings, align 4
  %101 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %102 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @hns_xgmac_update_stats, align 4
  %104 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %105 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %107 = bitcast %struct.mac_driver* %106 to i8*
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %15, %14
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local %struct.mac_driver* @devm_kzalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
