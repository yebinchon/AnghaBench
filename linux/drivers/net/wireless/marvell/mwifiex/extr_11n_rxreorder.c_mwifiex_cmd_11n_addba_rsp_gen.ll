; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_cmd_11n_addba_rsp_gen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_cmd_11n_addba_rsp_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.host_cmd_ds_11n_addba_rsp }
%struct.host_cmd_ds_11n_addba_rsp = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.host_cmd_ds_11n_addba_req = type { i8*, i32, i8*, i32, i32 }
%struct.mwifiex_sta_node = type { i64 }

@MWIFIEX_BSS_ROLE_STA = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BA setup with unknown TDLS peer %pM!\0A\00", align 1
@MWIFIEX_11AC_STA_AMPDU_DEF_RXWINSIZE = common dso_local global i32 0, align 4
@HostCmd_CMD_11N_ADDBA_RSP = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_TID_MASK = common dso_local global i32 0, align 4
@BLOCKACKPARAM_TID_POS = common dso_local global i32 0, align 4
@ADDBA_RSP_STATUS_ACCEPT = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@BA_STREAM_NOT_ALLOWED = common dso_local global i64 0, align 8
@BLOCKACKPARAM_AMSDU_SUPP_MASK = common dso_local global i32 0, align 4
@BLOCKACKPARAM_WINSIZE_POS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_cmd_11n_addba_rsp_gen(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_11n_addba_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca %struct.host_cmd_ds_11n_addba_req*, align 8
  %8 = alloca %struct.host_cmd_ds_11n_addba_rsp*, align 8
  %9 = alloca %struct.mwifiex_sta_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store %struct.host_cmd_ds_11n_addba_req* %2, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %14 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.host_cmd_ds_11n_addba_rsp* %16, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %18 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %22 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %21)
  %23 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %3
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %27 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ISSUPP_TDLS_ENABLED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %25
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %33
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %45 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i64 @memcmp(i32 %43, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %40
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 2
  %53 = call i32 @spin_lock_bh(i32* %52)
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %55 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %56 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %54, i32 %57)
  store %struct.mwifiex_sta_node* %58, %struct.mwifiex_sta_node** %9, align 8
  %59 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %9, align 8
  %60 = icmp ne %struct.mwifiex_sta_node* %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 2
  %64 = call i32 @spin_unlock_bh(i32* %63)
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i32, i32* @ERROR, align 4
  %69 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %70 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mwifiex_dbg(%struct.TYPE_8__* %67, i32 %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %71)
  store i32 -1, i32* %4, align 4
  br label %190

73:                                               ; preds = %50
  %74 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %9, align 8
  %75 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @MWIFIEX_11AC_STA_AMPDU_DEF_RXWINSIZE, align 4
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %78, %73
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %82 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %81, i32 0, i32 2
  %83 = call i32 @spin_unlock_bh(i32* %82)
  br label %84

84:                                               ; preds = %80, %40, %33, %25, %3
  %85 = load i32, i32* @HostCmd_CMD_11N_ADDBA_RSP, align 4
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %88 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @S_DS_GEN, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 40, %90
  %92 = trunc i64 %91 to i32
  %93 = call i8* @cpu_to_le16(i32 %92)
  %94 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %95 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %97 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %100 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ETH_ALEN, align 4
  %103 = call i32 @memcpy(i32 %98, i32 %101, i32 %102)
  %104 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %105 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %108 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %110 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %113 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %115 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %118 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %120 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @le16_to_cpu(i8* %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @IEEE80211_ADDBA_PARAM_TID_MASK, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @BLOCKACKPARAM_TID_POS, align 4
  %127 = ashr i32 %125, %126
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %11, align 8
  %129 = load i32, i32* @ADDBA_RSP_STATUS_ACCEPT, align 4
  %130 = call i8* @cpu_to_le16(i32 %129)
  %131 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %132 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* @IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %13, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %138 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %84
  %143 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %144 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @BA_STREAM_NOT_ALLOWED, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %142, %84
  %153 = load i32, i32* @BLOCKACKPARAM_AMSDU_SUPP_MASK, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %13, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %152, %142
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @BLOCKACKPARAM_WINSIZE_POS, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %13, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i8* @cpu_to_le16(i32 %163)
  %165 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %166 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = load %struct.host_cmd_ds_11n_addba_rsp*, %struct.host_cmd_ds_11n_addba_rsp** %8, align 8
  %168 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, %struct.host_cmd_ds_11n_addba_rsp* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @le16_to_cpu(i8* %169)
  %171 = load i32, i32* @IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @BLOCKACKPARAM_WINSIZE_POS, align 4
  %174 = ashr i32 %172, %173
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i8* @cpu_to_le16(i32 %175)
  %177 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %178 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  %179 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %180 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %181 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i64, i64* %11, align 8
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.host_cmd_ds_11n_addba_req*, %struct.host_cmd_ds_11n_addba_req** %7, align 8
  %186 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, %struct.host_cmd_ds_11n_addba_req* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @le16_to_cpu(i8* %187)
  %189 = call i32 @mwifiex_11n_create_rx_reorder_tbl(%struct.mwifiex_private* %179, i32 %182, i64 %183, i32 %184, i32 %188)
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %157, %61
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i64 @ISSUPP_TDLS_ENABLED(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @mwifiex_11n_create_rx_reorder_tbl(%struct.mwifiex_private*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
