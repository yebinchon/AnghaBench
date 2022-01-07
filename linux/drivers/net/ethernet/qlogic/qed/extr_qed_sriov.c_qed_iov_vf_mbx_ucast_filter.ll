; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_ucast_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_ucast_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32, i32, i32, i32, %struct.qed_iov_vf_mbx, %struct.TYPE_3__ }
%struct.qed_iov_vf_mbx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vfpf_ucast_filter_tlv }
%struct.vfpf_ucast_filter_tlv = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { %struct.qed_bulletin_content* }
%struct.qed_bulletin_content = type { i32, i32 }
%struct.qed_filter_ucast = type { i32, i32, i32, i32, i32*, i32, i32, i32 }

@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"VF[%d]: opcode 0x%02x type 0x%02x [%s %s] [vport 0x%02x] MAC %02x:%02x:%02x:%02x:%02x:%02x, vlan 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"No VPORT instance available for VF[%d], failing ucast MAC configuration\0A\00", align 1
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@VLAN_ADDR_FORCED = common dso_local global i32 0, align 4
@QED_FILTER_VLAN = common dso_local global i64 0, align 8
@QED_FILTER_MAC_VLAN = common dso_local global i64 0, align 8
@QED_FILTER_ADD = common dso_local global i64 0, align 8
@QED_FILTER_REPLACE = common dso_local global i64 0, align 8
@PFVF_STATUS_FORCED = common dso_local global i32 0, align 4
@MAC_ADDR_FORCED = common dso_local global i32 0, align 4
@QED_FILTER_MAC = common dso_local global i64 0, align 8
@QED_SPQ_MODE_CB = common dso_local global i32 0, align 4
@CHANNEL_TLV_UCAST_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_mbx_ucast_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_mbx_ucast_filter(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_bulletin_content*, align 8
  %8 = alloca %struct.qed_iov_vf_mbx*, align 8
  %9 = alloca %struct.vfpf_ucast_filter_tlv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_filter_ucast, align 8
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  %13 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %14 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %15, align 8
  store %struct.qed_bulletin_content* %16, %struct.qed_bulletin_content** %7, align 8
  %17 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %18 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %17, i32 0, i32 5
  store %struct.qed_iov_vf_mbx* %18, %struct.qed_iov_vf_mbx** %8, align 8
  %19 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %19, i32* %10, align 4
  %20 = call i32 @memset(%struct.qed_filter_ucast* %11, i32 0, i32 40)
  %21 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %8, align 8
  %22 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.vfpf_ucast_filter_tlv* %24, %struct.vfpf_ucast_filter_tlv** %9, align 8
  %25 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %9, align 8
  %26 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %9, align 8
  %31 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %38 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 7
  store i32 %39, i32* %40, align 8
  %41 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %42 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 6
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %9, align 8
  %48 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32* %46, i32 %49, i32 %50)
  %52 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %9, align 8
  %53 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 5
  store i32 %54, i32* %55, align 8
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %57 = load i32, i32* @QED_MSG_IOV, align 4
  %58 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %59 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %70 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %75 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %56, i32 %57, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62, i32 %64, i8* %69, i8* %74, i32 %76, i32 %80, i32 %84, i32 %88, i32 %92, i32 %96, i32 %100, i32 %102)
  %104 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %105 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %3
  %109 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %110 = load i32, i32* @QED_MSG_IOV, align 4
  %111 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %112 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %109, i32 %110, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %115, i32* %10, align 4
  br label %223

116:                                              ; preds = %3
  %117 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %118 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %119 = call i64 @qed_iov_vf_update_unicast_shadow(%struct.qed_hwfn* %117, %struct.qed_vf_info* %118, %struct.qed_filter_ucast* %11)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %122, i32* %10, align 4
  br label %223

123:                                              ; preds = %116
  %124 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %7, align 8
  %125 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @VLAN_ADDR_FORCED, align 4
  %128 = call i32 @BIT(i32 %127)
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @QED_FILTER_VLAN, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* @QED_FILTER_MAC_VLAN, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %137, %131
  %144 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* @QED_FILTER_ADD, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @QED_FILTER_REPLACE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149, %143
  %156 = load i32, i32* @PFVF_STATUS_FORCED, align 4
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %155, %149
  br label %223

158:                                              ; preds = %137, %123
  %159 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %7, align 8
  %160 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MAC_ADDR_FORCED, align 4
  %163 = call i32 @BIT(i32 %162)
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %201

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* @QED_FILTER_MAC, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* @QED_FILTER_MAC_VLAN, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %201

178:                                              ; preds = %172, %166
  %179 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %7, align 8
  %180 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @ether_addr_equal(i32 %181, i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* @QED_FILTER_ADD, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %11, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* @QED_FILTER_REPLACE, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %192, %178
  %199 = load i32, i32* @PFVF_STATUS_FORCED, align 4
  store i32 %199, i32* %10, align 4
  br label %200

200:                                              ; preds = %198, %192, %186
  br label %223

201:                                              ; preds = %172, %158
  %202 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %203 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %204 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @qed_iov_chk_ucast(%struct.qed_hwfn* %202, i32 %205, %struct.qed_filter_ucast* %11)
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %201
  %210 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %210, i32* %10, align 4
  br label %223

211:                                              ; preds = %201
  %212 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %213 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %214 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @QED_SPQ_MODE_CB, align 4
  %217 = call i32 @qed_sp_eth_filter_ucast(%struct.qed_hwfn* %212, i32 %215, %struct.qed_filter_ucast* %11, i32 %216, i32* null)
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %12, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %211
  %221 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %221, i32* %10, align 4
  br label %222

222:                                              ; preds = %220, %211
  br label %223

223:                                              ; preds = %222, %209, %200, %157, %121, %108
  %224 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %225 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %226 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %227 = load i32, i32* @CHANNEL_TLV_UCAST_FILTER, align 4
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @qed_iov_prepare_resp(%struct.qed_hwfn* %224, %struct.qed_ptt* %225, %struct.qed_vf_info* %226, i32 %227, i32 4, i32 %228)
  ret void
}

declare dso_local i32 @memset(%struct.qed_filter_ucast*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i64 @qed_iov_vf_update_unicast_shadow(%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_filter_ucast*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @qed_iov_chk_ucast(%struct.qed_hwfn*, i32, %struct.qed_filter_ucast*) #1

declare dso_local i32 @qed_sp_eth_filter_ucast(%struct.qed_hwfn*, i32, %struct.qed_filter_ucast*, i32, i32*) #1

declare dso_local i32 @qed_iov_prepare_resp(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
