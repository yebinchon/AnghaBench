; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_rf_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_rf_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.host_cmd_ds_rf_ant_siso, %struct.host_cmd_ds_rf_ant_mimo }
%struct.host_cmd_ds_rf_ant_siso = type { i8*, i8* }
%struct.host_cmd_ds_rf_ant_mimo = type { i8*, i8*, i8*, i8* }
%struct.mwifiex_ds_ant_cfg = type { i32, i32 }

@HostCmd_CMD_RF_ANTENNA = common dso_local global i32 0, align 4
@HT_STREAM_2X2 = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@HostCmd_ACT_SET_TX = common dso_local global i32 0, align 4
@HostCmd_ACT_SET_RX = common dso_local global i32 0, align 4
@HostCmd_ACT_SET_BOTH = common dso_local global i32 0, align 4
@HostCmd_ACT_GET_TX = common dso_local global i32 0, align 4
@HostCmd_ACT_GET_RX = common dso_local global i32 0, align 4
@HostCmd_ACT_GET_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, %struct.mwifiex_ds_ant_cfg*)* @mwifiex_cmd_rf_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_rf_antenna(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i32 %2, %struct.mwifiex_ds_ant_cfg* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_ds_ant_cfg*, align 8
  %9 = alloca %struct.host_cmd_ds_rf_ant_mimo*, align 8
  %10 = alloca %struct.host_cmd_ds_rf_ant_siso*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mwifiex_ds_ant_cfg* %3, %struct.mwifiex_ds_ant_cfg** %8, align 8
  %11 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store %struct.host_cmd_ds_rf_ant_mimo* %13, %struct.host_cmd_ds_rf_ant_mimo** %9, align 8
  %14 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.host_cmd_ds_rf_ant_siso* %16, %struct.host_cmd_ds_rf_ant_siso** %10, align 8
  %17 = load i32, i32* @HostCmd_CMD_RF_ANTENNA, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %20 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %114 [
    i32 128, label %22
    i32 129, label %77
  ]

22:                                               ; preds = %4
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HT_STREAM_2X2, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %22
  %31 = load i32, i32* @S_DS_GEN, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 32, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %37 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @HostCmd_ACT_SET_TX, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %9, align 8
  %41 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mwifiex_ds_ant_cfg*, %struct.mwifiex_ds_ant_cfg** %8, align 8
  %43 = getelementptr inbounds %struct.mwifiex_ds_ant_cfg, %struct.mwifiex_ds_ant_cfg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %9, align 8
  %47 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @HostCmd_ACT_SET_RX, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %9, align 8
  %51 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.mwifiex_ds_ant_cfg*, %struct.mwifiex_ds_ant_cfg** %8, align 8
  %53 = getelementptr inbounds %struct.mwifiex_ds_ant_cfg, %struct.mwifiex_ds_ant_cfg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %9, align 8
  %57 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %76

58:                                               ; preds = %22
  %59 = load i32, i32* @S_DS_GEN, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 16, %60
  %62 = trunc i64 %61 to i32
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %65 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @HostCmd_ACT_SET_BOTH, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.host_cmd_ds_rf_ant_siso*, %struct.host_cmd_ds_rf_ant_siso** %10, align 8
  %69 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_siso, %struct.host_cmd_ds_rf_ant_siso* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.mwifiex_ds_ant_cfg*, %struct.mwifiex_ds_ant_cfg** %8, align 8
  %71 = getelementptr inbounds %struct.mwifiex_ds_ant_cfg, %struct.mwifiex_ds_ant_cfg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.host_cmd_ds_rf_ant_siso*, %struct.host_cmd_ds_rf_ant_siso** %10, align 8
  %75 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_siso, %struct.host_cmd_ds_rf_ant_siso* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %58, %30
  br label %114

77:                                               ; preds = %4
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %79 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HT_STREAM_2X2, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %77
  %86 = load i32, i32* @S_DS_GEN, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 32, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %92 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @HostCmd_ACT_GET_TX, align 4
  %94 = call i8* @cpu_to_le16(i32 %93)
  %95 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %9, align 8
  %96 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @HostCmd_ACT_GET_RX, align 4
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %9, align 8
  %100 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %113

101:                                              ; preds = %77
  %102 = load i32, i32* @S_DS_GEN, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 16, %103
  %105 = trunc i64 %104 to i32
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %108 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @HostCmd_ACT_GET_BOTH, align 4
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = load %struct.host_cmd_ds_rf_ant_siso*, %struct.host_cmd_ds_rf_ant_siso** %10, align 8
  %112 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_siso, %struct.host_cmd_ds_rf_ant_siso* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %101, %85
  br label %114

114:                                              ; preds = %4, %113, %76
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
