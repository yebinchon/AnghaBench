; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_cmd_amsdu_aggr_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_cmd_amsdu_aggr_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_amsdu_aggr_ctrl }
%struct.host_cmd_ds_amsdu_aggr_ctrl = type { i32, i8*, i8* }
%struct.mwifiex_ds_11n_amsdu_aggr_ctrl = type { i32 }

@HostCmd_CMD_AMSDU_AGGR_CTRL = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_cmd_amsdu_aggr_ctrl(%struct.host_cmd_ds_command* %0, i32 %1, %struct.mwifiex_ds_11n_amsdu_aggr_ctrl* %2) #0 {
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_ds_11n_amsdu_aggr_ctrl*, align 8
  %7 = alloca %struct.host_cmd_ds_amsdu_aggr_ctrl*, align 8
  %8 = alloca i32, align 4
  store %struct.host_cmd_ds_command* %0, %struct.host_cmd_ds_command** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mwifiex_ds_11n_amsdu_aggr_ctrl* %2, %struct.mwifiex_ds_11n_amsdu_aggr_ctrl** %6, align 8
  %9 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.host_cmd_ds_amsdu_aggr_ctrl* %11, %struct.host_cmd_ds_amsdu_aggr_ctrl** %7, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @HostCmd_CMD_AMSDU_AGGR_CTRL, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @S_DS_GEN, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 24, %18
  %20 = trunc i64 %19 to i32
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %23 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.host_cmd_ds_amsdu_aggr_ctrl*, %struct.host_cmd_ds_amsdu_aggr_ctrl** %7, align 8
  %27 = getelementptr inbounds %struct.host_cmd_ds_amsdu_aggr_ctrl, %struct.host_cmd_ds_amsdu_aggr_ctrl* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %39 [
    i32 128, label %29
    i32 129, label %38
  ]

29:                                               ; preds = %3
  %30 = load %struct.mwifiex_ds_11n_amsdu_aggr_ctrl*, %struct.mwifiex_ds_11n_amsdu_aggr_ctrl** %6, align 8
  %31 = getelementptr inbounds %struct.mwifiex_ds_11n_amsdu_aggr_ctrl, %struct.mwifiex_ds_11n_amsdu_aggr_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.host_cmd_ds_amsdu_aggr_ctrl*, %struct.host_cmd_ds_amsdu_aggr_ctrl** %7, align 8
  %35 = getelementptr inbounds %struct.host_cmd_ds_amsdu_aggr_ctrl, %struct.host_cmd_ds_amsdu_aggr_ctrl* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.host_cmd_ds_amsdu_aggr_ctrl*, %struct.host_cmd_ds_amsdu_aggr_ctrl** %7, align 8
  %37 = getelementptr inbounds %struct.host_cmd_ds_amsdu_aggr_ctrl, %struct.host_cmd_ds_amsdu_aggr_ctrl* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %42

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %3, %38
  %40 = load %struct.host_cmd_ds_amsdu_aggr_ctrl*, %struct.host_cmd_ds_amsdu_aggr_ctrl** %7, align 8
  %41 = getelementptr inbounds %struct.host_cmd_ds_amsdu_aggr_ctrl, %struct.host_cmd_ds_amsdu_aggr_ctrl* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %29
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
