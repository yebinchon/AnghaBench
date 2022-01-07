; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_802_11_rssi_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_802_11_rssi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.host_cmd_ds_command = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@HostCmd_CMD_RSSI_INFO = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i64)* @mwifiex_cmd_802_11_rssi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_802_11_rssi_info(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i64 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* @HostCmd_CMD_RSSI_INFO, align 8
  %8 = call i8* @cpu_to_le16(i64 %7)
  %9 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i64, i64* @S_DS_GEN, align 8
  %12 = add i64 4, %11
  %13 = call i8* @cpu_to_le16(i64 %12)
  %14 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i8* @cpu_to_le16(i64 %16)
  %18 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i8* %17, i8** %21, align 8
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 9
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @cpu_to_le16(i64 %24)
  %26 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %27 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* %25, i8** %29, align 8
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @cpu_to_le16(i64 %32)
  %34 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %35 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %45 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %51 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
