; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.net_device*, %struct.TYPE_2__* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.qlc_83xx_idc }
%struct.qlc_83xx_idc = type { i32, i32 }

@QLC_83XX_MODULE_LOADED = common dso_local global i32 0, align 4
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4
@qlcnic_sriov_vf_poll_dev_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_sriov_vf_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_vf_resume(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlc_83xx_idc*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.qlc_83xx_idc* %10, %struct.qlc_83xx_idc** %4, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load i32, i32* @QLC_83XX_MODULE_LOADED, align 4
  %15 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %4, align 8
  %16 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %15, i32 0, i32 1
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = call i32 @qlcnic_83xx_enable_mbx_interrupt(%struct.qlcnic_adapter* %18)
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = call i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter* %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %1
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = load i32, i32* @QLCNIC_BC_CMD_CHANNEL_INIT, align 4
  %29 = call i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %26
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i64 @netif_running(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @qlcnic_up(%struct.qlcnic_adapter* %37, %struct.net_device* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load i32, i32* @NETDEV_UP, align 4
  %45 = call i32 @qlcnic_restore_indev_addr(%struct.net_device* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netif_device_attach(%struct.net_device* %49)
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %52 = load i32, i32* @qlcnic_sriov_vf_poll_dev_state, align 4
  %53 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %4, align 8
  %54 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @qlcnic_schedule_work(%struct.qlcnic_adapter* %51, i32 %52, i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %48, %24
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_enable_mbx_interrupt(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @qlcnic_up(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_restore_indev_addr(%struct.net_device*, i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_schedule_work(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
