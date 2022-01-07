; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_tx_power_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_tx_power_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_txpwr_cfg }
%struct.host_cmd_ds_txpwr_cfg = type { i8*, i32 }
%struct.mwifiex_types_power_group = type { i8* }

@HostCmd_CMD_TXPWR_CFG = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host_cmd_ds_command*, i32, %struct.host_cmd_ds_txpwr_cfg*)* @mwifiex_cmd_tx_power_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_tx_power_cfg(%struct.host_cmd_ds_command* %0, i32 %1, %struct.host_cmd_ds_txpwr_cfg* %2) #0 {
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.host_cmd_ds_txpwr_cfg*, align 8
  %7 = alloca %struct.mwifiex_types_power_group*, align 8
  %8 = alloca %struct.host_cmd_ds_txpwr_cfg*, align 8
  store %struct.host_cmd_ds_command* %0, %struct.host_cmd_ds_command** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.host_cmd_ds_txpwr_cfg* %2, %struct.host_cmd_ds_txpwr_cfg** %6, align 8
  %9 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.host_cmd_ds_txpwr_cfg* %11, %struct.host_cmd_ds_txpwr_cfg** %8, align 8
  %12 = load i32, i32* @HostCmd_CMD_TXPWR_CFG, align 4
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @S_DS_GEN, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 16
  %19 = trunc i64 %18 to i32
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %22 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %78 [
    i32 128, label %24
    i32 129, label %73
  ]

24:                                               ; preds = %3
  %25 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %6, align 8
  %26 = getelementptr inbounds %struct.host_cmd_ds_txpwr_cfg, %struct.host_cmd_ds_txpwr_cfg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %6, align 8
  %31 = ptrtoint %struct.host_cmd_ds_txpwr_cfg* %30 to i64
  %32 = add i64 %31, 16
  %33 = inttoptr i64 %32 to %struct.mwifiex_types_power_group*
  store %struct.mwifiex_types_power_group* %33, %struct.mwifiex_types_power_group** %7, align 8
  %34 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %8, align 8
  %35 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %6, align 8
  %36 = load %struct.mwifiex_types_power_group*, %struct.mwifiex_types_power_group** %7, align 8
  %37 = getelementptr inbounds %struct.mwifiex_types_power_group, %struct.mwifiex_types_power_group* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @le16_to_cpu(i8* %38)
  %40 = sext i32 %39 to i64
  %41 = add i64 24, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memmove(%struct.host_cmd_ds_txpwr_cfg* %34, %struct.host_cmd_ds_txpwr_cfg* %35, i32 %42)
  %44 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %8, align 8
  %45 = bitcast %struct.host_cmd_ds_txpwr_cfg* %44 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 16
  %47 = bitcast i32* %46 to %struct.mwifiex_types_power_group*
  store %struct.mwifiex_types_power_group* %47, %struct.mwifiex_types_power_group** %7, align 8
  %48 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %49 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @le16_to_cpu(i8* %50)
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 8
  %54 = load %struct.mwifiex_types_power_group*, %struct.mwifiex_types_power_group** %7, align 8
  %55 = getelementptr inbounds %struct.mwifiex_types_power_group, %struct.mwifiex_types_power_group* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @le16_to_cpu(i8* %56)
  %58 = sext i32 %57 to i64
  %59 = add i64 %53, %58
  %60 = trunc i64 %59 to i32
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %63 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %68

64:                                               ; preds = %24
  %65 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %8, align 8
  %66 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %6, align 8
  %67 = call i32 @memmove(%struct.host_cmd_ds_txpwr_cfg* %65, %struct.host_cmd_ds_txpwr_cfg* %66, i32 16)
  br label %68

68:                                               ; preds = %64, %29
  %69 = load i32, i32* %5, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %8, align 8
  %72 = getelementptr inbounds %struct.host_cmd_ds_txpwr_cfg, %struct.host_cmd_ds_txpwr_cfg* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %78

73:                                               ; preds = %3
  %74 = load i32, i32* %5, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %8, align 8
  %77 = getelementptr inbounds %struct.host_cmd_ds_txpwr_cfg, %struct.host_cmd_ds_txpwr_cfg* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %3, %73, %68
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memmove(%struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
