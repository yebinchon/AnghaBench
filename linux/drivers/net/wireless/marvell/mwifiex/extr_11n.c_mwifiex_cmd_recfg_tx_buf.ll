; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_cmd_recfg_tx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_cmd_recfg_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_txbuf_cfg }
%struct.host_cmd_ds_txbuf_cfg = type { i8*, i8* }

@HostCmd_CMD_RECONFIGURE_TX_BUFF = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cmd: set tx_buf=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_cmd_recfg_tx_buf(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.host_cmd_ds_txbuf_cfg*, align 8
  %10 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.host_cmd_ds_txbuf_cfg* %13, %struct.host_cmd_ds_txbuf_cfg** %9, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @HostCmd_CMD_RECONFIGURE_TX_BUFF, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %18 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @S_DS_GEN, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 16, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %25 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.host_cmd_ds_txbuf_cfg*, %struct.host_cmd_ds_txbuf_cfg** %9, align 8
  %29 = getelementptr inbounds %struct.host_cmd_ds_txbuf_cfg, %struct.host_cmd_ds_txbuf_cfg* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %45 [
    i32 128, label %31
    i32 129, label %44
  ]

31:                                               ; preds = %4
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CMD, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mwifiex_dbg(i32 %34, i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.host_cmd_ds_txbuf_cfg*, %struct.host_cmd_ds_txbuf_cfg** %9, align 8
  %43 = getelementptr inbounds %struct.host_cmd_ds_txbuf_cfg, %struct.host_cmd_ds_txbuf_cfg* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %48

44:                                               ; preds = %4
  br label %45

45:                                               ; preds = %4, %44
  %46 = load %struct.host_cmd_ds_txbuf_cfg*, %struct.host_cmd_ds_txbuf_cfg** %9, align 8
  %47 = getelementptr inbounds %struct.host_cmd_ds_txbuf_cfg, %struct.host_cmd_ds_txbuf_cfg* %46, i32 0, i32 0
  store i8* null, i8** %47, align 8
  br label %48

48:                                               ; preds = %45, %31
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
