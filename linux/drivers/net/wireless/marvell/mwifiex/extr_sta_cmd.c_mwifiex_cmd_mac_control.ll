; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_mac_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_mac_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_mac_control }
%struct.host_cmd_ds_mac_control = type { i32 }

@HostCmd_ACT_GEN_SET = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mac_control: only support set cmd\0A\00", align 1
@HostCmd_CMD_MAC_CONTROL = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i64, i32*)* @mwifiex_cmd_mac_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_mac_control(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca %struct.host_cmd_ds_command*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.host_cmd_ds_mac_control*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.host_cmd_ds_mac_control* %13, %struct.host_cmd_ds_mac_control** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @HostCmd_ACT_GEN_SET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @mwifiex_dbg(i32 %20, i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %38

23:                                               ; preds = %4
  %24 = load i64, i64* @HostCmd_CMD_MAC_CONTROL, align 8
  %25 = call i8* @cpu_to_le16(i64 %24)
  %26 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %27 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* @S_DS_GEN, align 8
  %29 = add i64 4, %28
  %30 = call i8* @cpu_to_le16(i64 %29)
  %31 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %32 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.host_cmd_ds_mac_control*, %struct.host_cmd_ds_mac_control** %10, align 8
  %37 = getelementptr inbounds %struct.host_cmd_ds_mac_control, %struct.host_cmd_ds_mac_control* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %23, %17
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
