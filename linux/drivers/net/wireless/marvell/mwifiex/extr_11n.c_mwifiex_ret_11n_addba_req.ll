; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_ret_11n_addba_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_ret_11n_addba_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.host_cmd_ds_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_11n_addba_rsp }
%struct.host_cmd_ds_11n_addba_rsp = type { i64, i32, i32, i32, i32 }
%struct.mwifiex_tx_ba_stream_tbl = type { i32, i8* }
%struct.mwifiex_ra_list_tbl = type { i32, i8* }

@SSN_MASK = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_TID_MASK = common dso_local global i32 0, align 4
@BLOCKACKPARAM_TID_POS = common dso_local global i32 0, align 4
@BA_RESULT_SUCCESS = common dso_local global i32 0, align 4
@BA_SETUP_NONE = common dso_local global i8* null, align 8
@TYPE_DELBA_SENT = common dso_local global i32 0, align 4
@BA_RESULT_TIMEOUT = common dso_local global i64 0, align 8
@BA_STREAM_NOT_ALLOWED = common dso_local global i64 0, align 8
@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"info: BA stream complete\0A\00", align 1
@BA_SETUP_COMPLETE = common dso_local global i8* null, align 8
@BLOCKACKPARAM_AMSDU_SUPP_MASK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"BA stream not created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_ret_11n_addba_req(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.host_cmd_ds_11n_addba_rsp*, align 8
  %9 = alloca %struct.mwifiex_tx_ba_stream_tbl*, align 8
  %10 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  %12 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.host_cmd_ds_11n_addba_rsp* %14, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %15 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %20 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = load i32, i32* @SSN_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %27 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @IEEE80211_ADDBA_PARAM_TID_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @BLOCKACKPARAM_TID_POS, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mwifiex_wmm_downgrade_tid(%struct.mwifiex_private* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %39 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private* %36, i32 %37, i32 %40)
  store %struct.mwifiex_ra_list_tbl* %41, %struct.mwifiex_ra_list_tbl** %10, align 8
  %42 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %43 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load i32, i32* @BA_RESULT_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %2
  %49 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %10, align 8
  %50 = icmp ne %struct.mwifiex_ra_list_tbl* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i8*, i8** @BA_SETUP_NONE, align 8
  %53 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %10, align 8
  %54 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %10, align 8
  %56 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %48
  %58 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %61 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TYPE_DELBA_SENT, align 4
  %64 = call i32 @mwifiex_del_ba_tbl(%struct.mwifiex_private* %58, i32 %59, i32 %62, i32 %63, i32 1)
  %65 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %66 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BA_RESULT_TIMEOUT, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load i64, i64* @BA_STREAM_NOT_ALLOWED, align 8
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i64 %71, i64* %78, align 8
  br label %79

79:                                               ; preds = %70, %57
  store i32 0, i32* %3, align 4
  br label %145

80:                                               ; preds = %2
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %84 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.mwifiex_tx_ba_stream_tbl* @mwifiex_get_ba_tbl(%struct.mwifiex_private* %81, i32 %82, i32 %85)
  store %struct.mwifiex_tx_ba_stream_tbl* %86, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %87 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %88 = icmp ne %struct.mwifiex_tx_ba_stream_tbl* %87, null
  br i1 %88, label %89, label %138

89:                                               ; preds = %80
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %91 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @EVENT, align 4
  %94 = call i32 @mwifiex_dbg(i32 %92, i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %95 = load i8*, i8** @BA_SETUP_COMPLETE, align 8
  %96 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %97 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @BLOCKACKPARAM_AMSDU_SUPP_MASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %89
  %103 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %104 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %110 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @BA_STREAM_NOT_ALLOWED, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %121 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %125

122:                                              ; preds = %108, %102, %89
  %123 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %124 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %10, align 8
  %127 = icmp ne %struct.mwifiex_ra_list_tbl* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %130 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %10, align 8
  %133 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i8*, i8** @BA_SETUP_COMPLETE, align 8
  %135 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %10, align 8
  %136 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %128, %125
  br label %144

138:                                              ; preds = %80
  %139 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %140 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ERROR, align 4
  %143 = call i32 @mwifiex_dbg(i32 %141, i32 %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %138, %137
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %79
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mwifiex_wmm_downgrade_tid(%struct.mwifiex_private*, i32) #1

declare dso_local %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private*, i32, i32) #1

declare dso_local i32 @mwifiex_del_ba_tbl(%struct.mwifiex_private*, i32, i32, i32, i32) #1

declare dso_local %struct.mwifiex_tx_ba_stream_tbl* @mwifiex_get_ba_tbl(%struct.mwifiex_private*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
