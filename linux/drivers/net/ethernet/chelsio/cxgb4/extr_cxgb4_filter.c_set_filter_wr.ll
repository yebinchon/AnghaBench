; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_set_filter_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_set_filter_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_16__, %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { %struct.filter_entry* }
%struct.filter_entry = type { i32, %struct.TYPE_15__, %struct.TYPE_17__*, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i32, i32, %struct.TYPE_13__, i32, i32, i64, %struct.TYPE_12__, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.fw_filter2_wr = type { i32, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_FILTER2_WR = common dso_local global i32 0, align 4
@FW_FILTER_WR = common dso_local global i32 0, align 4
@FILTER_DROP = common dso_local global i64 0, align 8
@FILTER_SWITCH = common dso_local global i64 0, align 8
@VLAN_INSERT = common dso_local global i64 0, align 8
@VLAN_REWRITE = common dso_local global i64 0, align 8
@VLAN_REMOVE = common dso_local global i64 0, align 8
@ULP_MODE_TCPDDP = common dso_local global i32 0, align 4
@ULP_MODE_NONE = common dso_local global i32 0, align 4
@CPL_PRIORITY_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_filter_wr(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filter_entry*, align 8
  %7 = alloca %struct.fw_filter2_wr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %12, i64 %14
  store %struct.filter_entry* %15, %struct.filter_entry** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sk_buff* @alloc_skb(i32 200, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %595

23:                                               ; preds = %2
  %24 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %25 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 12
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %31 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %29, %23
  %36 = load %struct.adapter*, %struct.adapter** %4, align 8
  %37 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %38 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 22
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %42 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %46 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 21
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_17__* @t4_l2t_alloc_switching(%struct.adapter* %36, i32 %40, i32 %44, i32 %48)
  %50 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %51 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %50, i32 0, i32 2
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %51, align 8
  %52 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %53 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %52, i32 0, i32 2
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = icmp ne %struct.TYPE_17__* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %35
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %595

61:                                               ; preds = %35
  br label %62

62:                                               ; preds = %61, %29
  %63 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %64 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 20
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %62
  %69 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %70 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %73 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 19
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cxgb4_smt_alloc_switching(i32 %71, i32 %75)
  %77 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %78 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %80 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %68
  %84 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %85 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %84, i32 0, i32 2
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = icmp ne %struct.TYPE_17__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %90 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %89, i32 0, i32 2
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = call i32 @cxgb4_l2t_release(%struct.TYPE_17__* %91)
  %93 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %94 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %93, i32 0, i32 2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %94, align 8
  br label %95

95:                                               ; preds = %88, %83
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %595

100:                                              ; preds = %68
  br label %101

101:                                              ; preds = %100, %62
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = call %struct.fw_filter2_wr* @__skb_put_zero(%struct.sk_buff* %102, i32 200)
  store %struct.fw_filter2_wr* %103, %struct.fw_filter2_wr** %7, align 8
  %104 = load %struct.adapter*, %struct.adapter** %4, align 8
  %105 = getelementptr inbounds %struct.adapter, %struct.adapter* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* @FW_FILTER2_WR, align 4
  %111 = call i32 @FW_WR_OP_V(i32 %110)
  %112 = call i8* @htonl(i32 %111)
  %113 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %114 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %113, i32 0, i32 30
  store i8* %112, i8** %114, align 8
  br label %121

115:                                              ; preds = %101
  %116 = load i32, i32* @FW_FILTER_WR, align 4
  %117 = call i32 @FW_WR_OP_V(i32 %116)
  %118 = call i8* @htonl(i32 %117)
  %119 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %120 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %119, i32 0, i32 30
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %115, %109
  %122 = call i32 @FW_WR_LEN16_V(i32 12)
  %123 = call i8* @htonl(i32 %122)
  %124 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %125 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %124, i32 0, i32 29
  store i8* %123, i8** %125, align 8
  %126 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %127 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @FW_FILTER_WR_TID_V(i32 %128)
  %130 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %131 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 18
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @FW_FILTER_WR_RQTYPE_V(i32 %133)
  %135 = or i32 %129, %134
  %136 = call i32 @FW_FILTER_WR_NOREPLY_V(i32 0)
  %137 = or i32 %135, %136
  %138 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %139 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 17
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @FW_FILTER_WR_IQ_V(i32 %141)
  %143 = or i32 %137, %142
  %144 = call i8* @htonl(i32 %143)
  %145 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %146 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %145, i32 0, i32 28
  store i8* %144, i8** %146, align 8
  %147 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %148 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 16
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @FW_FILTER_WR_RPTTID_V(i32 %150)
  %152 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %153 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @FILTER_DROP, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @FW_FILTER_WR_DROP_V(i32 %158)
  %160 = or i32 %151, %159
  %161 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %162 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 15
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @FW_FILTER_WR_DIRSTEER_V(i32 %164)
  %166 = or i32 %160, %165
  %167 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %168 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 14
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @FW_FILTER_WR_MASKHASH_V(i32 %170)
  %172 = or i32 %166, %171
  %173 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %174 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 13
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @FW_FILTER_WR_DIRSTEERHASH_V(i32 %176)
  %178 = or i32 %172, %177
  %179 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %180 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @FILTER_SWITCH, align 8
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @FW_FILTER_WR_LPBK_V(i32 %185)
  %187 = or i32 %178, %186
  %188 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %189 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 12
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @FW_FILTER_WR_DMAC_V(i64 %191)
  %193 = or i32 %187, %192
  %194 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %195 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @VLAN_INSERT, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %207, label %200

200:                                              ; preds = %121
  %201 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %202 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @VLAN_REWRITE, align 8
  %206 = icmp eq i64 %204, %205
  br label %207

207:                                              ; preds = %200, %121
  %208 = phi i1 [ true, %121 ], [ %206, %200 ]
  %209 = zext i1 %208 to i32
  %210 = call i32 @FW_FILTER_WR_INSVLAN_V(i32 %209)
  %211 = or i32 %193, %210
  %212 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %213 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @VLAN_REMOVE, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %225, label %218

218:                                              ; preds = %207
  %219 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %220 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @VLAN_REWRITE, align 8
  %224 = icmp eq i64 %222, %223
  br label %225

225:                                              ; preds = %218, %207
  %226 = phi i1 [ true, %207 ], [ %224, %218 ]
  %227 = zext i1 %226 to i32
  %228 = call i32 @FW_FILTER_WR_RMVLAN_V(i32 %227)
  %229 = or i32 %211, %228
  %230 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %231 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 11
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @FW_FILTER_WR_HITCNTS_V(i32 %233)
  %235 = or i32 %229, %234
  %236 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %237 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 10
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @FW_FILTER_WR_TXCHAN_V(i32 %239)
  %241 = or i32 %235, %240
  %242 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %243 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @FW_FILTER_WR_PRIO_V(i32 %245)
  %247 = or i32 %241, %246
  %248 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %249 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %248, i32 0, i32 2
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = icmp ne %struct.TYPE_17__* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %225
  %253 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %254 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %253, i32 0, i32 2
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  br label %259

258:                                              ; preds = %225
  br label %259

259:                                              ; preds = %258, %252
  %260 = phi i32 [ %257, %252 ], [ 0, %258 ]
  %261 = call i32 @FW_FILTER_WR_L2TIX_V(i32 %260)
  %262 = or i32 %247, %261
  %263 = call i8* @htonl(i32 %262)
  %264 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %265 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %264, i32 0, i32 27
  store i8* %263, i8** %265, align 8
  %266 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %267 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i8* @htons(i32 %270)
  %272 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %273 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %272, i32 0, i32 26
  store i8* %271, i8** %273, align 8
  %274 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %275 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i8* @htons(i32 %278)
  %280 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %281 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %280, i32 0, i32 25
  store i8* %279, i8** %281, align 8
  %282 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %283 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 4
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 15
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @FW_FILTER_WR_FRAG_V(i32 %286)
  %288 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %289 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 15
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @FW_FILTER_WR_FRAGM_V(i32 %292)
  %294 = or i32 %287, %293
  %295 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %296 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 14
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @FW_FILTER_WR_IVLAN_VLD_V(i32 %299)
  %301 = or i32 %294, %300
  %302 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %303 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 13
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @FW_FILTER_WR_OVLAN_VLD_V(i32 %306)
  %308 = or i32 %301, %307
  %309 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %310 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 14
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @FW_FILTER_WR_IVLAN_VLDM_V(i32 %313)
  %315 = or i32 %308, %314
  %316 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %317 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 13
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @FW_FILTER_WR_OVLAN_VLDM_V(i32 %320)
  %322 = or i32 %315, %321
  %323 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %324 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 8
  %325 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %326 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %325, i32 0, i32 24
  store i64 0, i64* %326, align 8
  %327 = call i32 @FW_FILTER_WR_RX_CHAN_V(i32 0)
  %328 = load %struct.adapter*, %struct.adapter** %4, align 8
  %329 = getelementptr inbounds %struct.adapter, %struct.adapter* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @FW_FILTER_WR_RX_RPL_IQ_V(i32 %332)
  %334 = or i32 %327, %333
  %335 = call i8* @htons(i32 %334)
  %336 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %337 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %336, i32 0, i32 23
  store i8* %335, i8** %337, align 8
  %338 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %339 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 12
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @FW_FILTER_WR_MACI_V(i32 %342)
  %344 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %345 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 12
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @FW_FILTER_WR_MACIM_V(i32 %348)
  %350 = or i32 %343, %349
  %351 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %352 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 4
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 11
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @FW_FILTER_WR_FCOE_V(i32 %355)
  %357 = or i32 %350, %356
  %358 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %359 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %359, i32 0, i32 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 11
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @FW_FILTER_WR_FCOEM_V(i32 %362)
  %364 = or i32 %357, %363
  %365 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %366 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 4
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @FW_FILTER_WR_PORT_V(i32 %369)
  %371 = or i32 %364, %370
  %372 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %373 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 10
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @FW_FILTER_WR_PORTM_V(i32 %376)
  %378 = or i32 %371, %377
  %379 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %380 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 4
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 10
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @FW_FILTER_WR_MATCHTYPE_V(i32 %383)
  %385 = or i32 %378, %384
  %386 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %387 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 9
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @FW_FILTER_WR_MATCHTYPEM_V(i32 %390)
  %392 = or i32 %385, %391
  %393 = call i8* @htonl(i32 %392)
  %394 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %395 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %394, i32 0, i32 22
  store i8* %393, i8** %395, align 8
  %396 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %397 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 4
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 9
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %402 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %401, i32 0, i32 21
  store i32 %400, i32* %402, align 4
  %403 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %404 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 8
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 8
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %409 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %408, i32 0, i32 20
  store i32 %407, i32* %409, align 8
  %410 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %411 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 4
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 8
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %416 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %415, i32 0, i32 19
  store i32 %414, i32* %416, align 4
  %417 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %418 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 8
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i32 0, i32 7
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %423 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %422, i32 0, i32 18
  store i32 %421, i32* %423, align 8
  %424 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %425 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %425, i32 0, i32 4
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = call i8* @htons(i32 %428)
  %430 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %431 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %430, i32 0, i32 17
  store i8* %429, i8** %431, align 8
  %432 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %433 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = call i8* @htons(i32 %436)
  %438 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %439 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %438, i32 0, i32 16
  store i8* %437, i8** %439, align 8
  %440 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %441 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %441, i32 0, i32 4
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = call i8* @htons(i32 %444)
  %446 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %447 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %446, i32 0, i32 15
  store i8* %445, i8** %447, align 8
  %448 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %449 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %449, i32 0, i32 8
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = call i8* @htons(i32 %452)
  %454 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %455 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %454, i32 0, i32 14
  store i8* %453, i8** %455, align 8
  %456 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %457 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %456, i32 0, i32 13
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %460 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 4
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @memcpy(i32 %458, i32 %463, i32 4)
  %465 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %466 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %465, i32 0, i32 12
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %469 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 8
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 6
  %472 = load i32, i32* %471, align 8
  %473 = call i32 @memcpy(i32 %467, i32 %472, i32 4)
  %474 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %475 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %474, i32 0, i32 11
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %478 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %478, i32 0, i32 4
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i32 0, i32 6
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @memcpy(i32 %476, i32 %481, i32 4)
  %483 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %484 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %483, i32 0, i32 10
  %485 = load i32, i32* %484, align 8
  %486 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %487 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %487, i32 0, i32 8
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 5
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @memcpy(i32 %485, i32 %490, i32 4)
  %492 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %493 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %493, i32 0, i32 4
  %495 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %494, i32 0, i32 4
  %496 = load i32, i32* %495, align 8
  %497 = call i8* @htons(i32 %496)
  %498 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %499 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %498, i32 0, i32 9
  store i8* %497, i8** %499, align 8
  %500 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %501 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %501, i32 0, i32 8
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 4
  %505 = call i8* @htons(i32 %504)
  %506 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %507 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %506, i32 0, i32 8
  store i8* %505, i8** %507, align 8
  %508 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %509 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %509, i32 0, i32 4
  %511 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %510, i32 0, i32 5
  %512 = load i32, i32* %511, align 4
  %513 = call i8* @htons(i32 %512)
  %514 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %515 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %514, i32 0, i32 7
  store i8* %513, i8** %515, align 8
  %516 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %517 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %517, i32 0, i32 8
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 4
  %520 = load i32, i32* %519, align 8
  %521 = call i8* @htons(i32 %520)
  %522 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %523 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %522, i32 0, i32 6
  store i8* %521, i8** %523, align 8
  %524 = load %struct.adapter*, %struct.adapter** %4, align 8
  %525 = getelementptr inbounds %struct.adapter, %struct.adapter* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %580

529:                                              ; preds = %259
  %530 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %531 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %531, i32 0, i32 7
  %533 = load i64, i64* %532, align 8
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %529
  %536 = load i32, i32* @ULP_MODE_TCPDDP, align 4
  br label %539

537:                                              ; preds = %529
  %538 = load i32, i32* @ULP_MODE_NONE, align 4
  br label %539

539:                                              ; preds = %537, %535
  %540 = phi i32 [ %536, %535 ], [ %538, %537 ]
  %541 = call i32 @FW_FILTER2_WR_ULP_TYPE_V(i32 %540)
  %542 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %543 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %543, i32 0, i32 7
  %545 = load i64, i64* %544, align 8
  %546 = call i32 @FW_FILTER2_WR_NATMODE_V(i64 %545)
  %547 = or i32 %541, %546
  %548 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %549 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %548, i32 0, i32 1
  store i32 %547, i32* %549, align 4
  %550 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %551 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %550, i32 0, i32 5
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %554 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %554, i32 0, i32 6
  %556 = load i32, i32* %555, align 4
  %557 = call i32 @memcpy(i32 %552, i32 %556, i32 4)
  %558 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %559 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %558, i32 0, i32 4
  %560 = load i32, i32* %559, align 8
  %561 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %562 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %562, i32 0, i32 5
  %564 = load i32, i32* %563, align 8
  %565 = call i32 @memcpy(i32 %560, i32 %564, i32 4)
  %566 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %567 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 8
  %570 = call i8* @htons(i32 %569)
  %571 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %572 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %571, i32 0, i32 3
  store i8* %570, i8** %572, align 8
  %573 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %574 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %574, i32 0, i32 3
  %576 = load i32, i32* %575, align 4
  %577 = call i8* @htons(i32 %576)
  %578 = load %struct.fw_filter2_wr*, %struct.fw_filter2_wr** %7, align 8
  %579 = getelementptr inbounds %struct.fw_filter2_wr, %struct.fw_filter2_wr* %578, i32 0, i32 2
  store i8* %577, i8** %579, align 8
  br label %580

580:                                              ; preds = %539, %259
  %581 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %582 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %581, i32 0, i32 0
  store i32 1, i32* %582, align 8
  %583 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %584 = load i32, i32* @CPL_PRIORITY_CONTROL, align 4
  %585 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %586 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %586, i32 0, i32 4
  %588 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = and i32 %589, 3
  %591 = call i32 @set_wr_txq(%struct.sk_buff* %583, i32 %584, i32 %590)
  %592 = load %struct.adapter*, %struct.adapter** %4, align 8
  %593 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %594 = call i32 @t4_ofld_send(%struct.adapter* %592, %struct.sk_buff* %593)
  store i32 0, i32* %3, align 4
  br label %595

595:                                              ; preds = %580, %95, %56, %20
  %596 = load i32, i32* %3, align 4
  ret i32 %596
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.TYPE_17__* @t4_l2t_alloc_switching(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cxgb4_smt_alloc_switching(i32, i32) #1

declare dso_local i32 @cxgb4_l2t_release(%struct.TYPE_17__*) #1

declare dso_local %struct.fw_filter2_wr* @__skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_WR_LEN16_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_TID_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_RQTYPE_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_NOREPLY_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_IQ_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_RPTTID_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_DROP_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_DIRSTEER_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_MASKHASH_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_DIRSTEERHASH_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_LPBK_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_DMAC_V(i64) #1

declare dso_local i32 @FW_FILTER_WR_INSVLAN_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_RMVLAN_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_HITCNTS_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_TXCHAN_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_PRIO_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_L2TIX_V(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @FW_FILTER_WR_FRAG_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_FRAGM_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_IVLAN_VLD_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_OVLAN_VLD_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_IVLAN_VLDM_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_OVLAN_VLDM_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_RX_CHAN_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_RX_RPL_IQ_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_MACI_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_MACIM_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_FCOE_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_FCOEM_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_PORT_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_PORTM_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_MATCHTYPE_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_MATCHTYPEM_V(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @FW_FILTER2_WR_ULP_TYPE_V(i32) #1

declare dso_local i32 @FW_FILTER2_WR_NATMODE_V(i64) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @t4_ofld_send(%struct.adapter*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
