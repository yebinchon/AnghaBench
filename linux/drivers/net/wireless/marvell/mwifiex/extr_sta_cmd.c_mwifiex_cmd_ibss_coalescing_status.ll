; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_ibss_coalescing_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_ibss_coalescing_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_ds_command = type { i64, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_802_11_ibss_status }
%struct.host_cmd_ds_802_11_ibss_status = type { i8*, i8* }

@HostCmd_CMD_802_11_IBSS_COALESCING_STATUS = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host_cmd_ds_command*, i32, i32*)* @mwifiex_cmd_ibss_coalescing_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_ibss_coalescing_status(%struct.host_cmd_ds_command* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.host_cmd_ds_802_11_ibss_status*, align 8
  store %struct.host_cmd_ds_command* %0, %struct.host_cmd_ds_command** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_ibss_status* %10, %struct.host_cmd_ds_802_11_ibss_status** %7, align 8
  %11 = load i32, i32* @HostCmd_CMD_802_11_IBSS_COALESCING_STATUS, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @S_DS_GEN, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 16, %16
  %18 = trunc i64 %17 to i32
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %23 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %7, align 8
  %27 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %43 [
    i32 128, label %29
    i32 129, label %42
  ]

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %7, align 8
  %37 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %7, align 8
  %40 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %39, i32 0, i32 0
  store i8* null, i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %32
  br label %44

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %3, %42
  br label %44

44:                                               ; preds = %43, %41
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
