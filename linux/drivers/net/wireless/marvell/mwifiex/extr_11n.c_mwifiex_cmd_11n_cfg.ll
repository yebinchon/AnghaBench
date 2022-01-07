; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_cmd_11n_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_cmd_11n_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_11n_cfg }
%struct.host_cmd_ds_11n_cfg = type { i8*, i8*, i8*, i8* }
%struct.mwifiex_ds_11n_tx_cfg = type { i64, i64, i64 }

@HostCmd_CMD_11N_CFG = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_cmd_11n_cfg(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i64 %2, %struct.mwifiex_ds_11n_tx_cfg* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mwifiex_ds_11n_tx_cfg*, align 8
  %9 = alloca %struct.host_cmd_ds_11n_cfg*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mwifiex_ds_11n_tx_cfg* %3, %struct.mwifiex_ds_11n_tx_cfg** %8, align 8
  %10 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.host_cmd_ds_11n_cfg* %12, %struct.host_cmd_ds_11n_cfg** %9, align 8
  %13 = load i64, i64* @HostCmd_CMD_11N_CFG, align 8
  %14 = call i8* @cpu_to_le16(i64 %13)
  %15 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* @S_DS_GEN, align 8
  %18 = add i64 32, %17
  %19 = call i8* @cpu_to_le16(i64 %18)
  %20 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i8* @cpu_to_le16(i64 %22)
  %24 = load %struct.host_cmd_ds_11n_cfg*, %struct.host_cmd_ds_11n_cfg** %9, align 8
  %25 = getelementptr inbounds %struct.host_cmd_ds_11n_cfg, %struct.host_cmd_ds_11n_cfg* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mwifiex_ds_11n_tx_cfg*, %struct.mwifiex_ds_11n_tx_cfg** %8, align 8
  %27 = getelementptr inbounds %struct.mwifiex_ds_11n_tx_cfg, %struct.mwifiex_ds_11n_tx_cfg* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @cpu_to_le16(i64 %28)
  %30 = load %struct.host_cmd_ds_11n_cfg*, %struct.host_cmd_ds_11n_cfg** %9, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_11n_cfg, %struct.host_cmd_ds_11n_cfg* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.mwifiex_ds_11n_tx_cfg*, %struct.mwifiex_ds_11n_tx_cfg** %8, align 8
  %33 = getelementptr inbounds %struct.mwifiex_ds_11n_tx_cfg, %struct.mwifiex_ds_11n_tx_cfg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @cpu_to_le16(i64 %34)
  %36 = load %struct.host_cmd_ds_11n_cfg*, %struct.host_cmd_ds_11n_cfg** %9, align 8
  %37 = getelementptr inbounds %struct.host_cmd_ds_11n_cfg, %struct.host_cmd_ds_11n_cfg* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %4
  %45 = load %struct.mwifiex_ds_11n_tx_cfg*, %struct.mwifiex_ds_11n_tx_cfg** %8, align 8
  %46 = getelementptr inbounds %struct.mwifiex_ds_11n_tx_cfg, %struct.mwifiex_ds_11n_tx_cfg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @cpu_to_le16(i64 %47)
  %49 = load %struct.host_cmd_ds_11n_cfg*, %struct.host_cmd_ds_11n_cfg** %9, align 8
  %50 = getelementptr inbounds %struct.host_cmd_ds_11n_cfg, %struct.host_cmd_ds_11n_cfg* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %44, %4
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
