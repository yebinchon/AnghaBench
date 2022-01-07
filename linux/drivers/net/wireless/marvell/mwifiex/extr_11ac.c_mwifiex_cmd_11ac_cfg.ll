; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_cmd_11ac_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_cmd_11ac_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_11ac_vht_cfg }
%struct.host_cmd_11ac_vht_cfg = type { i8*, i8*, i8*, i32, i32, i8* }
%struct.mwifiex_11ac_vht_cfg = type { i32, i32, i32, i32, i32 }

@HostCmd_CMD_11AC_CFG = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_cmd_11ac_cfg(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i64 %2, %struct.mwifiex_11ac_vht_cfg* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mwifiex_11ac_vht_cfg*, align 8
  %9 = alloca %struct.host_cmd_11ac_vht_cfg*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mwifiex_11ac_vht_cfg* %3, %struct.mwifiex_11ac_vht_cfg** %8, align 8
  %10 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.host_cmd_11ac_vht_cfg* %12, %struct.host_cmd_11ac_vht_cfg** %9, align 8
  %13 = load i64, i64* @HostCmd_CMD_11AC_CFG, align 8
  %14 = call i8* @cpu_to_le16(i64 %13)
  %15 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* @S_DS_GEN, align 8
  %18 = add i64 40, %17
  %19 = call i8* @cpu_to_le16(i64 %18)
  %20 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i8* @cpu_to_le16(i64 %22)
  %24 = load %struct.host_cmd_11ac_vht_cfg*, %struct.host_cmd_11ac_vht_cfg** %9, align 8
  %25 = getelementptr inbounds %struct.host_cmd_11ac_vht_cfg, %struct.host_cmd_11ac_vht_cfg* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mwifiex_11ac_vht_cfg*, %struct.mwifiex_11ac_vht_cfg** %8, align 8
  %27 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.host_cmd_11ac_vht_cfg*, %struct.host_cmd_11ac_vht_cfg** %9, align 8
  %30 = getelementptr inbounds %struct.host_cmd_11ac_vht_cfg, %struct.host_cmd_11ac_vht_cfg* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mwifiex_11ac_vht_cfg*, %struct.mwifiex_11ac_vht_cfg** %8, align 8
  %32 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.host_cmd_11ac_vht_cfg*, %struct.host_cmd_11ac_vht_cfg** %9, align 8
  %35 = getelementptr inbounds %struct.host_cmd_11ac_vht_cfg, %struct.host_cmd_11ac_vht_cfg* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mwifiex_11ac_vht_cfg*, %struct.mwifiex_11ac_vht_cfg** %8, align 8
  %37 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.host_cmd_11ac_vht_cfg*, %struct.host_cmd_11ac_vht_cfg** %9, align 8
  %41 = getelementptr inbounds %struct.host_cmd_11ac_vht_cfg, %struct.host_cmd_11ac_vht_cfg* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mwifiex_11ac_vht_cfg*, %struct.mwifiex_11ac_vht_cfg** %8, align 8
  %43 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.host_cmd_11ac_vht_cfg*, %struct.host_cmd_11ac_vht_cfg** %9, align 8
  %47 = getelementptr inbounds %struct.host_cmd_11ac_vht_cfg, %struct.host_cmd_11ac_vht_cfg* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.mwifiex_11ac_vht_cfg*, %struct.mwifiex_11ac_vht_cfg** %8, align 8
  %49 = getelementptr inbounds %struct.mwifiex_11ac_vht_cfg, %struct.mwifiex_11ac_vht_cfg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.host_cmd_11ac_vht_cfg*, %struct.host_cmd_11ac_vht_cfg** %9, align 8
  %53 = getelementptr inbounds %struct.host_cmd_11ac_vht_cfg, %struct.host_cmd_11ac_vht_cfg* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
