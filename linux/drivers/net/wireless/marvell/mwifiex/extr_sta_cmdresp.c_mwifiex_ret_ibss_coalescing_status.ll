; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_ibss_coalescing_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_ibss_coalescing_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_802_11_ibss_status }
%struct.host_cmd_ds_802_11_ibss_status = type { i32, i32, i32, i32 }

@HostCmd_ACT_GEN_SET = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"info: new BSSID %pM\0A\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"new BSSID is NULL\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@ADHOC_COALESCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_ibss_coalescing_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_ibss_coalescing_status(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.host_cmd_ds_802_11_ibss_status*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  %7 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_ibss_status* %9, %struct.host_cmd_ds_802_11_ibss_status** %6, align 8
  %10 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %6, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le16_to_cpu(i32 %12)
  %14 = load i64, i64* @HostCmd_ACT_GEN_SET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @INFO, align 4
  %22 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %6, align 8
  %23 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %6, align 8
  %27 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @is_zero_ether_addr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FATAL, align 4
  %36 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %34, i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %79

37:                                               ; preds = %17
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %6, align 8
  %44 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ether_addr_equal(i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %37
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %50 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %6, align 8
  %55 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memcpy(i32 %53, i32 %56, i32 %57)
  %59 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %6, align 8
  %60 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 %62, i64* %66, align 8
  %67 = load %struct.host_cmd_ds_802_11_ibss_status*, %struct.host_cmd_ds_802_11_ibss_status** %6, align 8
  %68 = getelementptr inbounds %struct.host_cmd_ds_802_11_ibss_status, %struct.host_cmd_ds_802_11_ibss_status* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le16_to_cpu(i32 %69)
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  %75 = load i32, i32* @ADHOC_COALESCED, align 4
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %77 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %48, %37
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %31, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
