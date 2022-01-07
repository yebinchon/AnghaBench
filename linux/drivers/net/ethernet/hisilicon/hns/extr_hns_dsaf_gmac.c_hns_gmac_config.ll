; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32 }
%struct.mac_params = type { i32, i32, i32, i32 }
%struct.mac_driver = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hns_mac_cb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hns_gmac_init = common dso_local global i32 0, align 4
@hns_gmac_enable = common dso_local global i32 0, align 4
@hns_gmac_disable = common dso_local global i32 0, align 4
@hns_gmac_free = common dso_local global i32 0, align 4
@hns_gmac_adjust_link = common dso_local global i32 0, align 4
@hns_gmac_need_adjust_link = common dso_local global i32 0, align 4
@hns_gmac_set_tx_auto_pause_frames = common dso_local global i32 0, align 4
@hns_gmac_config_max_frame_length = common dso_local global i32 0, align 4
@hns_gmac_pause_frm_cfg = common dso_local global i32 0, align 4
@hns_gmac_set_mac_addr = common dso_local global i32 0, align 4
@hns_gmac_config_an_mode = common dso_local global i32 0, align 4
@hns_gmac_config_loopback = common dso_local global i32 0, align 4
@hns_gmac_config_pad_and_crc = common dso_local global i32 0, align 4
@hns_gmac_set_duplex_type = common dso_local global i32 0, align 4
@hns_gmac_set_rx_auto_pause_frames = common dso_local global i32 0, align 4
@hns_gmac_get_info = common dso_local global i32 0, align 4
@hns_gmac_autoneg_stat = common dso_local global i32 0, align 4
@hns_gmac_get_pausefrm_cfg = common dso_local global i32 0, align 4
@hns_gmac_get_link_status = common dso_local global i32 0, align 4
@hns_gmac_get_regs = common dso_local global i32 0, align 4
@hns_gmac_get_regs_count = common dso_local global i32 0, align 4
@hns_gmac_get_stats = common dso_local global i32 0, align 4
@hns_gmac_get_sset_count = common dso_local global i32 0, align 4
@hns_gmac_get_strings = common dso_local global i32 0, align 4
@hns_gmac_update_stats = common dso_local global i32 0, align 4
@hns_gmac_set_promisc = common dso_local global i32 0, align 4
@hns_gmac_wait_fifo_clean = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hns_gmac_config(%struct.hns_mac_cb* %0, %struct.mac_params* %1) #0 {
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
  %11 = call %struct.mac_driver* @devm_kzalloc(i32 %9, i32 136, i32 %10)
  store %struct.mac_driver* %11, %struct.mac_driver** %6, align 8
  %12 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %13 = icmp ne %struct.mac_driver* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %122

15:                                               ; preds = %2
  %16 = load i32, i32* @hns_gmac_init, align 4
  %17 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %18 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %17, i32 0, i32 31
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @hns_gmac_enable, align 4
  %20 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %21 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %20, i32 0, i32 30
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @hns_gmac_disable, align 4
  %23 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %24 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %23, i32 0, i32 29
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @hns_gmac_free, align 4
  %26 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %27 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %26, i32 0, i32 28
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @hns_gmac_adjust_link, align 4
  %29 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %30 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %29, i32 0, i32 27
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @hns_gmac_need_adjust_link, align 4
  %32 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %33 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %32, i32 0, i32 26
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @hns_gmac_set_tx_auto_pause_frames, align 4
  %35 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %36 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %35, i32 0, i32 25
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @hns_gmac_config_max_frame_length, align 4
  %38 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %39 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %38, i32 0, i32 24
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @hns_gmac_pause_frm_cfg, align 4
  %41 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %42 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %41, i32 0, i32 23
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mac_params*, %struct.mac_params** %5, align 8
  %44 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %47 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %46, i32 0, i32 22
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mac_params*, %struct.mac_params** %5, align 8
  %49 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %52 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %51, i32 0, i32 21
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mac_params*, %struct.mac_params** %5, align 8
  %54 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %57 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %56, i32 0, i32 20
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mac_params*, %struct.mac_params** %5, align 8
  %59 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %62 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %61, i32 0, i32 19
  store i32 %60, i32* %62, align 8
  %63 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %64 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %65 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %64, i32 0, i32 18
  store %struct.hns_mac_cb* %63, %struct.hns_mac_cb** %65, align 8
  %66 = load i32, i32* @hns_gmac_set_mac_addr, align 4
  %67 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %68 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %67, i32 0, i32 17
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @hns_gmac_config_an_mode, align 4
  %70 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %71 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %70, i32 0, i32 16
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @hns_gmac_config_loopback, align 4
  %73 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %74 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %73, i32 0, i32 15
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @hns_gmac_config_pad_and_crc, align 4
  %76 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %77 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %76, i32 0, i32 14
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @hns_gmac_set_duplex_type, align 4
  %79 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %80 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %79, i32 0, i32 13
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @hns_gmac_set_rx_auto_pause_frames, align 4
  %82 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %83 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %82, i32 0, i32 12
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @hns_gmac_get_info, align 4
  %85 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %86 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @hns_gmac_autoneg_stat, align 4
  %88 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %89 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %88, i32 0, i32 10
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @hns_gmac_get_pausefrm_cfg, align 4
  %91 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %92 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @hns_gmac_get_link_status, align 4
  %94 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %95 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @hns_gmac_get_regs, align 4
  %97 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %98 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @hns_gmac_get_regs_count, align 4
  %100 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %101 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @hns_gmac_get_stats, align 4
  %103 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %104 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @hns_gmac_get_sset_count, align 4
  %106 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %107 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @hns_gmac_get_strings, align 4
  %109 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %110 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @hns_gmac_update_stats, align 4
  %112 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %113 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @hns_gmac_set_promisc, align 4
  %115 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %116 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @hns_gmac_wait_fifo_clean, align 4
  %118 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %119 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %121 = bitcast %struct.mac_driver* %120 to i8*
  store i8* %121, i8** %3, align 8
  br label %122

122:                                              ; preds = %15, %14
  %123 = load i8*, i8** %3, align 8
  ret i8* %123
}

declare dso_local %struct.mac_driver* @devm_kzalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
