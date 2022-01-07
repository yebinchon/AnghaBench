; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_setup_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_setup_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32, %struct.if_usb_card* }
%struct.if_usb_card = type { i32 }
%struct.cmd_ds_set_boot2_ver = type { i32, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.cmd_ds_802_11_fw_wake_method = type { i32, i8*, %struct.TYPE_2__, i32 }
%struct.wol_config = type { i32 }

@CMD_SET_BOOT2_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Setting boot2 version failed\0A\00", align 1
@EHS_WAKE_ON_UNICAST_DATA = common dso_local global i32 0, align 4
@CMD_ACT_GET = common dso_local global i32 0, align 4
@CMD_802_11_FW_WAKE_METHOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Firmware does not seem to support PS mode\0A\00", align 1
@FW_CAPINFO_PS = common dso_local global i32 0, align 4
@CMD_WAKE_METHOD_COMMAND_INT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Firmware seems to support PS with wake-via-command\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Firmware doesn't wake via command interrupt; disabling PS mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*)* @if_usb_setup_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_setup_firmware(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.cmd_ds_set_boot2_ver, align 8
  %5 = alloca %struct.cmd_ds_802_11_fw_wake_method, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %6 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %7 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %6, i32 0, i32 4
  %8 = load %struct.if_usb_card*, %struct.if_usb_card** %7, align 8
  store %struct.if_usb_card* %8, %struct.if_usb_card** %3, align 8
  %9 = call i8* @cpu_to_le16(i32 32)
  %10 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, %struct.cmd_ds_set_boot2_ver* %4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, %struct.cmd_ds_set_boot2_ver* %4, i32 0, i32 1
  store i8* null, i8** %12, align 8
  %13 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %14 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, %struct.cmd_ds_set_boot2_ver* %4, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %18 = load i32, i32* @CMD_SET_BOOT2_VER, align 4
  %19 = call i64 @lbs_cmd_with_response(%struct.lbs_private* %17, i32 %18, %struct.cmd_ds_set_boot2_ver* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @lbs_deb_usb(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 0
  store i32 2, i32* %25, align 8
  %26 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 1
  store i32 20, i32* %27, align 4
  %28 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %29 = load i32, i32* @EHS_WAKE_ON_UNICAST_DATA, align 4
  %30 = call i32 @lbs_host_sleep_cfg(%struct.lbs_private* %28, i32 %29, %struct.wol_config* null)
  %31 = call i8* @cpu_to_le16(i32 32)
  %32 = getelementptr inbounds %struct.cmd_ds_802_11_fw_wake_method, %struct.cmd_ds_802_11_fw_wake_method* %5, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @CMD_ACT_GET, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = getelementptr inbounds %struct.cmd_ds_802_11_fw_wake_method, %struct.cmd_ds_802_11_fw_wake_method* %5, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %38 = load i32, i32* @CMD_802_11_FW_WAKE_METHOD, align 4
  %39 = bitcast %struct.cmd_ds_802_11_fw_wake_method* %5 to %struct.cmd_ds_set_boot2_ver*
  %40 = call i64 @lbs_cmd_with_response(%struct.lbs_private* %37, i32 %38, %struct.cmd_ds_set_boot2_ver* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %23
  %43 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %44 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @netdev_info(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @FW_CAPINFO_PS, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %50 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %73

53:                                               ; preds = %23
  %54 = getelementptr inbounds %struct.cmd_ds_802_11_fw_wake_method, %struct.cmd_ds_802_11_fw_wake_method* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @le16_to_cpu(i32 %55)
  %57 = load i64, i64* @CMD_WAKE_METHOD_COMMAND_INT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @lbs_deb_usb(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %72

61:                                               ; preds = %53
  %62 = load i32, i32* @FW_CAPINFO_PS, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %69 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @netdev_info(i32 %70, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %61, %59
  br label %73

73:                                               ; preds = %72, %42
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_set_boot2_ver*) #1

declare dso_local i32 @lbs_deb_usb(i8*) #1

declare dso_local i32 @lbs_host_sleep_cfg(%struct.lbs_private*, i32, %struct.wol_config*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
