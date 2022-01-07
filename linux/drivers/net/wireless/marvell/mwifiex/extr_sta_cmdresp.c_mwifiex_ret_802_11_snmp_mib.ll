; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_802_11_snmp_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_802_11_snmp_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_802_11_snmp_mib }
%struct.host_cmd_ds_802_11_snmp_mib = type { i32, i32, i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"info: SNMP_RESP: oid value = %#x,\09query_type = %#x, buf size = %#x\0A\00", align 1
@HostCmd_ACT_GEN_GET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"info: SNMP_RESP: FragThsd =%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"info: SNMP_RESP: RTSThsd =%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"info: SNMP_RESP: TxRetryCount=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"info: SNMP_RESP: DTIM period=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32*)* @mwifiex_ret_802_11_snmp_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_802_11_snmp_mib(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i32* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.host_cmd_ds_802_11_snmp_mib*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_snmp_mib* %13, %struct.host_cmd_ds_802_11_snmp_mib** %7, align 8
  %14 = load %struct.host_cmd_ds_802_11_snmp_mib*, %struct.host_cmd_ds_802_11_snmp_mib** %7, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_802_11_snmp_mib, %struct.host_cmd_ds_802_11_snmp_mib* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le16_to_cpu(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.host_cmd_ds_802_11_snmp_mib*, %struct.host_cmd_ds_802_11_snmp_mib** %7, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_802_11_snmp_mib, %struct.host_cmd_ds_802_11_snmp_mib* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le16_to_cpu(i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INFO, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.host_cmd_ds_802_11_snmp_mib*, %struct.host_cmd_ds_802_11_snmp_mib** %7, align 8
  %29 = getelementptr inbounds %struct.host_cmd_ds_802_11_snmp_mib, %struct.host_cmd_ds_802_11_snmp_mib* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le16_to_cpu(i32 %30)
  %32 = call i32 (i32, i32, i8*, i64, ...) @mwifiex_dbg(i32 %24, i32 %25, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27, i64 %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @HostCmd_ACT_GEN_GET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %3
  %37 = load %struct.host_cmd_ds_802_11_snmp_mib*, %struct.host_cmd_ds_802_11_snmp_mib** %7, align 8
  %38 = getelementptr inbounds %struct.host_cmd_ds_802_11_snmp_mib, %struct.host_cmd_ds_802_11_snmp_mib* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @get_unaligned_le16(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i64, i64* %8, align 8
  switch i64 %47, label %80 [
    i64 130, label %48
    i64 129, label %56
    i64 128, label %64
    i64 131, label %72
  ]

48:                                               ; preds = %46
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %50 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @INFO, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 (i32, i32, i8*, i64, ...) @mwifiex_dbg(i32 %51, i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %81

56:                                               ; preds = %46
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %58 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @INFO, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 (i32, i32, i8*, i64, ...) @mwifiex_dbg(i32 %59, i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  br label %81

64:                                               ; preds = %46
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @INFO, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 (i32, i32, i8*, i64, ...) @mwifiex_dbg(i32 %67, i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  br label %81

72:                                               ; preds = %46
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @INFO, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 (i32, i32, i8*, i64, ...) @mwifiex_dbg(i32 %75, i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %46, %72
  br label %81

81:                                               ; preds = %80, %64, %56, %48
  br label %82

82:                                               ; preds = %81, %3
  ret i32 0
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i64, ...) #1

declare dso_local i32 @get_unaligned_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
