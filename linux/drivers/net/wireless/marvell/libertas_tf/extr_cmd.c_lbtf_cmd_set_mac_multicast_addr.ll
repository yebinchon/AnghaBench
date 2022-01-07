; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_cmd_set_mac_multicast_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_cmd_set_mac_multicast_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32, i32 }
%struct.cmd_ds_mac_multicast_addr = type { %struct.TYPE_2__, i32, i8*, i8* }
%struct.TYPE_2__ = type { i8* }

@LBTF_DEB_CMD = common dso_local global i32 0, align 4
@CMD_ACT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MULTICAST_ADR: setting %d addresses\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_MAC_MULTICAST_ADR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbtf_cmd_set_mac_multicast_addr(%struct.lbtf_private* %0) #0 {
  %2 = alloca %struct.lbtf_private*, align 8
  %3 = alloca %struct.cmd_ds_mac_multicast_addr, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %2, align 8
  %4 = load i32, i32* @LBTF_DEB_CMD, align 4
  %5 = call i32 @lbtf_deb_enter(i32 %4)
  %6 = call i8* @cpu_to_le16(i32 32)
  %7 = getelementptr inbounds %struct.cmd_ds_mac_multicast_addr, %struct.cmd_ds_mac_multicast_addr* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = load i32, i32* @CMD_ACT_SET, align 4
  %10 = call i8* @cpu_to_le16(i32 %9)
  %11 = getelementptr inbounds %struct.cmd_ds_mac_multicast_addr, %struct.cmd_ds_mac_multicast_addr* %3, i32 0, i32 3
  store i8* %10, i8** %11, align 8
  %12 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %13 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = getelementptr inbounds %struct.cmd_ds_mac_multicast_addr, %struct.cmd_ds_mac_multicast_addr* %3, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.cmd_ds_mac_multicast_addr, %struct.cmd_ds_mac_multicast_addr* %3, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @lbtf_deb_cmd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds %struct.cmd_ds_mac_multicast_addr, %struct.cmd_ds_mac_multicast_addr* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %23 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %26 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i32 @memcpy(i32 %21, i32 %24, i32 %29)
  %31 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %32 = load i32, i32* @CMD_MAC_MULTICAST_ADR, align 4
  %33 = getelementptr inbounds %struct.cmd_ds_mac_multicast_addr, %struct.cmd_ds_mac_multicast_addr* %3, i32 0, i32 0
  %34 = call i32 @lbtf_cmd_async(%struct.lbtf_private* %31, i32 %32, %struct.TYPE_2__* %33, i32 32)
  %35 = load i32, i32* @LBTF_DEB_CMD, align 4
  %36 = call i32 @lbtf_deb_leave(i32 %35)
  ret i32 0
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbtf_deb_cmd(i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @lbtf_cmd_async(%struct.lbtf_private*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
