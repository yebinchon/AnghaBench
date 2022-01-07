; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_cmd_802_11_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_cmd_802_11_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_802_11_scan }
%struct.host_cmd_ds_802_11_scan = type { i32, i32, i32 }
%struct.mwifiex_scan_cmd_config = type { i32, i32, i32, i32 }

@HostCmd_CMD_802_11_SCAN = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_cmd_802_11_scan(%struct.host_cmd_ds_command* %0, %struct.mwifiex_scan_cmd_config* %1) #0 {
  %3 = alloca %struct.host_cmd_ds_command*, align 8
  %4 = alloca %struct.mwifiex_scan_cmd_config*, align 8
  %5 = alloca %struct.host_cmd_ds_802_11_scan*, align 8
  store %struct.host_cmd_ds_command* %0, %struct.host_cmd_ds_command** %3, align 8
  store %struct.mwifiex_scan_cmd_config* %1, %struct.mwifiex_scan_cmd_config** %4, align 8
  %6 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %3, align 8
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_scan* %8, %struct.host_cmd_ds_802_11_scan** %5, align 8
  %9 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.host_cmd_ds_802_11_scan*, %struct.host_cmd_ds_802_11_scan** %5, align 8
  %13 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan, %struct.host_cmd_ds_802_11_scan* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.host_cmd_ds_802_11_scan*, %struct.host_cmd_ds_802_11_scan** %5, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan, %struct.host_cmd_ds_802_11_scan* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %4, align 8
  %18 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %16, i32 %19, i32 4)
  %21 = load %struct.host_cmd_ds_802_11_scan*, %struct.host_cmd_ds_802_11_scan** %5, align 8
  %22 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan, %struct.host_cmd_ds_802_11_scan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %4, align 8
  %25 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %4, align 8
  %28 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %23, i32 %26, i32 %29)
  %31 = load i32, i32* @HostCmd_CMD_802_11_SCAN, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %3, align 8
  %34 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %4, align 8
  %36 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 8, %38
  %40 = load i64, i64* @S_DS_GEN, align 8
  %41 = add i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %3, align 8
  %45 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
