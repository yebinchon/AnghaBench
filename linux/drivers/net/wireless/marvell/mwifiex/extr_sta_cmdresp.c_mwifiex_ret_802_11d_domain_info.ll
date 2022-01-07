; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_802_11d_domain_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_802_11d_domain_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_802_11d_domain_info_rsp }
%struct.host_cmd_ds_802_11d_domain_info_rsp = type { i64, %struct.mwifiex_ietypes_domain_param_set }
%struct.mwifiex_ietypes_domain_param_set = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IEEE80211_COUNTRY_STRING_LEN = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"info: 11D Domain Info Resp: no_of_triplet=%d\0A\00", align 1
@MWIFIEX_MAX_TRIPLET_802_11D = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"11D: invalid number of triplets %d returned\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"11D: invalid action:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_802_11d_domain_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_802_11d_domain_info(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.host_cmd_ds_802_11d_domain_info_rsp*, align 8
  %7 = alloca %struct.mwifiex_ietypes_domain_param_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  %10 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.host_cmd_ds_802_11d_domain_info_rsp* %12, %struct.host_cmd_ds_802_11d_domain_info_rsp** %6, align 8
  %13 = load %struct.host_cmd_ds_802_11d_domain_info_rsp*, %struct.host_cmd_ds_802_11d_domain_info_rsp** %6, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_802_11d_domain_info_rsp, %struct.host_cmd_ds_802_11d_domain_info_rsp* %13, i32 0, i32 1
  store %struct.mwifiex_ietypes_domain_param_set* %14, %struct.mwifiex_ietypes_domain_param_set** %7, align 8
  %15 = load %struct.host_cmd_ds_802_11d_domain_info_rsp*, %struct.host_cmd_ds_802_11d_domain_info_rsp** %6, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_802_11d_domain_info_rsp, %struct.host_cmd_ds_802_11d_domain_info_rsp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @le16_to_cpu(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mwifiex_ietypes_domain_param_set*, %struct.mwifiex_ietypes_domain_param_set** %7, align 8
  %20 = getelementptr inbounds %struct.mwifiex_ietypes_domain_param_set, %struct.mwifiex_ietypes_domain_param_set* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @le16_to_cpu(i64 %22)
  %24 = load i32, i32* @IEEE80211_COUNTRY_STRING_LEN, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  store i64 %27, i64* %9, align 8
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @INFO, align 4
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @mwifiex_dbg(i32 %30, i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @MWIFIEX_MAX_TRIPLET_802_11D, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FATAL, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @mwifiex_dbg(i32 %40, i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  store i32 -1, i32* %3, align 4
  br label %58

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %48 [
    i32 128, label %46
    i32 129, label %47
  ]

46:                                               ; preds = %44
  br label %57

47:                                               ; preds = %44
  br label %57

48:                                               ; preds = %44
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %50 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ERROR, align 4
  %53 = load %struct.host_cmd_ds_802_11d_domain_info_rsp*, %struct.host_cmd_ds_802_11d_domain_info_rsp** %6, align 8
  %54 = getelementptr inbounds %struct.host_cmd_ds_802_11d_domain_info_rsp, %struct.host_cmd_ds_802_11d_domain_info_rsp* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @mwifiex_dbg(i32 %51, i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  store i32 -1, i32* %3, align 4
  br label %58

57:                                               ; preds = %47, %46
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %48, %37
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
