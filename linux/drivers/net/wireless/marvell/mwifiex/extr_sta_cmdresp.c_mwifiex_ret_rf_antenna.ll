; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_rf_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_rf_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i8*, i8*, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64 }
%struct.host_cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_rf_ant_siso, %struct.host_cmd_ds_rf_ant_mimo }
%struct.host_cmd_ds_rf_ant_siso = type { i32, i32 }
%struct.host_cmd_ds_rf_ant_mimo = type { i32, i32, i32, i32 }

@HT_STREAM_2X2 = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"RF_ANT_RESP: Tx action = 0x%x, Tx Mode = 0x%04x\09Rx action = 0x%x, Rx Mode = 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"RF_ANT_RESP: action = 0x%x, Mode = 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_rf_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_rf_antenna(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca %struct.host_cmd_ds_rf_ant_mimo*, align 8
  %6 = alloca %struct.host_cmd_ds_rf_ant_siso*, align 8
  %7 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  %8 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.host_cmd_ds_rf_ant_mimo* %10, %struct.host_cmd_ds_rf_ant_mimo** %5, align 8
  %11 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.host_cmd_ds_rf_ant_siso* %13, %struct.host_cmd_ds_rf_ant_siso** %6, align 8
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 2
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  store %struct.mwifiex_adapter* %16, %struct.mwifiex_adapter** %7, align 8
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HT_STREAM_2X2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %2
  %23 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %5, align 8
  %24 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le16_to_cpu(i32 %25)
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %5, align 8
  %30 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16_to_cpu(i32 %31)
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %34 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %36 = load i32, i32* @INFO, align 4
  %37 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %5, align 8
  %38 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le16_to_cpu(i32 %39)
  %41 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %5, align 8
  %42 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le16_to_cpu(i32 %43)
  %45 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %5, align 8
  %46 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = load %struct.host_cmd_ds_rf_ant_mimo*, %struct.host_cmd_ds_rf_ant_mimo** %5, align 8
  %50 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_mimo, %struct.host_cmd_ds_rf_ant_mimo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le16_to_cpu(i32 %51)
  %53 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i8*, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %35, i32 %36, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %44, i8* %48, i8* %52)
  br label %78

54:                                               ; preds = %2
  %55 = load %struct.host_cmd_ds_rf_ant_siso*, %struct.host_cmd_ds_rf_ant_siso** %6, align 8
  %56 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_siso, %struct.host_cmd_ds_rf_ant_siso* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le16_to_cpu(i32 %57)
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %60 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.host_cmd_ds_rf_ant_siso*, %struct.host_cmd_ds_rf_ant_siso** %6, align 8
  %62 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_siso, %struct.host_cmd_ds_rf_ant_siso* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le16_to_cpu(i32 %63)
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %68 = load i32, i32* @INFO, align 4
  %69 = load %struct.host_cmd_ds_rf_ant_siso*, %struct.host_cmd_ds_rf_ant_siso** %6, align 8
  %70 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_siso, %struct.host_cmd_ds_rf_ant_siso* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @le16_to_cpu(i32 %71)
  %73 = load %struct.host_cmd_ds_rf_ant_siso*, %struct.host_cmd_ds_rf_ant_siso** %6, align 8
  %74 = getelementptr inbounds %struct.host_cmd_ds_rf_ant_siso, %struct.host_cmd_ds_rf_ant_siso* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i8*, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %67, i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %72, i8* %76)
  br label %78

78:                                               ; preds = %54, %22
  ret i32 0
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
