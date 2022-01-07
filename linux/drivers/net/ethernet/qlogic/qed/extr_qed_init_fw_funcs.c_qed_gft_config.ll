; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_gft_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_gft_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"gft_config: must accept at least on of - ipv4 or ipv6'\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"gft_config: must accept at least on of - udp or tcp\0A\00", align 1
@MAX_GFT_PROFILE_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"gft_config: unsupported gft_profile_type\0A\00", align 1
@T_ETH_PACKET_MATCH_RFS_EVENTID = common dso_local global i32 0, align 4
@PRS_REG_CM_HDR_GFT_EVENT_ID_SHIFT = common dso_local global i32 0, align 4
@PARSER_ETH_CONN_CM_HDR = common dso_local global i32 0, align 4
@PRS_REG_CM_HDR_GFT_CM_HDR_SHIFT = common dso_local global i32 0, align 4
@PRS_REG_CM_HDR_GFT = common dso_local global i64 0, align 8
@PRS_REG_LOAD_L2_FILTER = common dso_local global i64 0, align 8
@PRS_REG_SEARCH_TENANT_ID = common dso_local global i64 0, align 8
@GFT_CAM_LINE_MAPPED_VALID = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_PF_ID_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_PF_ID_MASK_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_PF_ID = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE_MASK_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE = common dso_local global i32 0, align 4
@GFT_PROFILE_TCP_PROTOCOL = common dso_local global i32 0, align 4
@GFT_PROFILE_UDP_PROTOCOL = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_IP_VERSION_MASK = common dso_local global i32 0, align 4
@GFT_CAM_LINE_MAPPED_IP_VERSION = common dso_local global i32 0, align 4
@GFT_PROFILE_IPV4 = common dso_local global i32 0, align 4
@GFT_PROFILE_IPV6 = common dso_local global i32 0, align 4
@PRS_REG_GFT_CAM = common dso_local global i64 0, align 8
@CAM_LINE_SIZE = common dso_local global i32 0, align 4
@GFT_RAM_LINE_TUNNEL_DST_PORT = common dso_local global i32 0, align 4
@GFT_RAM_LINE_TUNNEL_OVER_IP_PROTOCOL = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_4_TUPLE = common dso_local global i32 0, align 4
@GFT_RAM_LINE_DST_IP = common dso_local global i32 0, align 4
@GFT_RAM_LINE_SRC_IP = common dso_local global i32 0, align 4
@GFT_RAM_LINE_OVER_IP_PROTOCOL = common dso_local global i32 0, align 4
@GFT_RAM_LINE_ETHERTYPE = common dso_local global i32 0, align 4
@GFT_RAM_LINE_SRC_PORT = common dso_local global i32 0, align 4
@GFT_RAM_LINE_DST_PORT = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_L4_DST_PORT = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_IP_DST_ADDR = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_IP_SRC_ADDR = common dso_local global i32 0, align 4
@GFT_PROFILE_TYPE_TUNNEL_TYPE = common dso_local global i32 0, align 4
@GFT_RAM_LINE_TUNNEL_ETHERTYPE = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_NON_IP_AS_GFT = common dso_local global i64 0, align 8
@PRS_REG_GFT_PROFILE_MASK_RAM = common dso_local global i64 0, align 8
@RAM_LINE_SIZE = common dso_local global i32 0, align 4
@REG_SIZE = common dso_local global i64 0, align 8
@PRS_GFT_CAM_LINES_NO_MATCH = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_GFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_gft_config(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca %struct.qed_ptt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %8
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %29 = call i32 @DP_NOTICE(%struct.qed_hwfn* %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24, %8
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %38 = call i32 @DP_NOTICE(%struct.qed_hwfn* %37, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33, %30
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @MAX_GFT_PROFILE_TYPE, align 4
  %42 = icmp uge i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %45 = call i32 @DP_NOTICE(%struct.qed_hwfn* %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* @T_ETH_PACKET_MATCH_RFS_EVENTID, align 4
  %48 = load i32, i32* @PRS_REG_CM_HDR_GFT_EVENT_ID_SHIFT, align 4
  %49 = shl i32 %47, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* @PARSER_ETH_CONN_CM_HDR, align 4
  %51 = load i32, i32* @PRS_REG_CM_HDR_GFT_CM_HDR_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %17, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %17, align 4
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %56 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %57 = load i64, i64* @PRS_REG_CM_HDR_GFT, align 8
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @qed_wr(%struct.qed_hwfn* %55, %struct.qed_ptt* %56, i64 %57, i32 %58)
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %61 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %62 = load i64, i64* @PRS_REG_LOAD_L2_FILTER, align 8
  %63 = call i32 @qed_wr(%struct.qed_hwfn* %60, %struct.qed_ptt* %61, i64 %62, i32 0)
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %65 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %66 = load i64, i64* @PRS_REG_SEARCH_TENANT_ID, align 8
  %67 = call i32 @qed_wr(%struct.qed_hwfn* %64, %struct.qed_ptt* %65, i64 %66, i32 0)
  store i32 0, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* @GFT_CAM_LINE_MAPPED_VALID, align 4
  %70 = call i32 @SET_FIELD(i32 %68, i32 %69, i32 1)
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* @GFT_CAM_LINE_MAPPED_PF_ID_MASK, align 4
  %73 = load i32, i32* @GFT_CAM_LINE_MAPPED_PF_ID_MASK_MASK, align 4
  %74 = call i32 @SET_FIELD(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* @GFT_CAM_LINE_MAPPED_PF_ID, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @SET_FIELD(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %46
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %81, %46
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE_MASK, align 4
  %87 = load i32, i32* @GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE_MASK_MASK, align 4
  %88 = call i32 @SET_FIELD(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* @GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE, align 4
  %94 = load i32, i32* @GFT_PROFILE_TCP_PROTOCOL, align 4
  %95 = call i32 @SET_FIELD(i32 %92, i32 %93, i32 %94)
  br label %101

96:                                               ; preds = %84
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @GFT_CAM_LINE_MAPPED_UPPER_PROTOCOL_TYPE, align 4
  %99 = load i32, i32* @GFT_PROFILE_UDP_PROTOCOL, align 4
  %100 = call i32 @SET_FIELD(i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %81
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %125, label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @GFT_CAM_LINE_MAPPED_IP_VERSION_MASK, align 4
  %111 = call i32 @SET_FIELD(i32 %109, i32 %110, i32 1)
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @GFT_CAM_LINE_MAPPED_IP_VERSION, align 4
  %117 = load i32, i32* @GFT_PROFILE_IPV4, align 4
  %118 = call i32 @SET_FIELD(i32 %115, i32 %116, i32 %117)
  br label %124

119:                                              ; preds = %108
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* @GFT_CAM_LINE_MAPPED_IP_VERSION, align 4
  %122 = load i32, i32* @GFT_PROFILE_IPV6, align 4
  %123 = call i32 @SET_FIELD(i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %105
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %127 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %128 = load i64, i64* @PRS_REG_GFT_CAM, align 8
  %129 = load i32, i32* @CAM_LINE_SIZE, align 4
  %130 = load i32, i32* %11, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %128, %132
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @qed_wr(%struct.qed_hwfn* %126, %struct.qed_ptt* %127, i64 %133, i32 %134)
  %136 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %137 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %138 = load i64, i64* @PRS_REG_GFT_CAM, align 8
  %139 = load i32, i32* @CAM_LINE_SIZE, align 4
  %140 = load i32, i32* %11, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %138, %142
  %144 = call i32 @qed_rd(%struct.qed_hwfn* %136, %struct.qed_ptt* %137, i64 %143)
  store i32 %144, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* @GFT_RAM_LINE_TUNNEL_DST_PORT, align 4
  %147 = call i32 @SET_FIELD(i32 %145, i32 %146, i32 1)
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* @GFT_RAM_LINE_TUNNEL_OVER_IP_PROTOCOL, align 4
  %150 = call i32 @SET_FIELD(i32 %148, i32 %149, i32 1)
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* @GFT_PROFILE_TYPE_4_TUPLE, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %125
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* @GFT_RAM_LINE_DST_IP, align 4
  %157 = call i32 @SET_FIELD(i32 %155, i32 %156, i32 1)
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* @GFT_RAM_LINE_SRC_IP, align 4
  %160 = call i32 @SET_FIELD(i32 %158, i32 %159, i32 1)
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* @GFT_RAM_LINE_OVER_IP_PROTOCOL, align 4
  %163 = call i32 @SET_FIELD(i32 %161, i32 %162, i32 1)
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* @GFT_RAM_LINE_ETHERTYPE, align 4
  %166 = call i32 @SET_FIELD(i32 %164, i32 %165, i32 1)
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* @GFT_RAM_LINE_SRC_PORT, align 4
  %169 = call i32 @SET_FIELD(i32 %167, i32 %168, i32 1)
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* @GFT_RAM_LINE_DST_PORT, align 4
  %172 = call i32 @SET_FIELD(i32 %170, i32 %171, i32 1)
  br label %221

173:                                              ; preds = %125
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @GFT_PROFILE_TYPE_L4_DST_PORT, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* @GFT_RAM_LINE_OVER_IP_PROTOCOL, align 4
  %180 = call i32 @SET_FIELD(i32 %178, i32 %179, i32 1)
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* @GFT_RAM_LINE_ETHERTYPE, align 4
  %183 = call i32 @SET_FIELD(i32 %181, i32 %182, i32 1)
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* @GFT_RAM_LINE_DST_PORT, align 4
  %186 = call i32 @SET_FIELD(i32 %184, i32 %185, i32 1)
  br label %220

187:                                              ; preds = %173
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* @GFT_PROFILE_TYPE_IP_DST_ADDR, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* @GFT_RAM_LINE_DST_IP, align 4
  %194 = call i32 @SET_FIELD(i32 %192, i32 %193, i32 1)
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* @GFT_RAM_LINE_ETHERTYPE, align 4
  %197 = call i32 @SET_FIELD(i32 %195, i32 %196, i32 1)
  br label %219

198:                                              ; preds = %187
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* @GFT_PROFILE_TYPE_IP_SRC_ADDR, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* @GFT_RAM_LINE_SRC_IP, align 4
  %205 = call i32 @SET_FIELD(i32 %203, i32 %204, i32 1)
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* @GFT_RAM_LINE_ETHERTYPE, align 4
  %208 = call i32 @SET_FIELD(i32 %206, i32 %207, i32 1)
  br label %218

209:                                              ; preds = %198
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* @GFT_PROFILE_TYPE_TUNNEL_TYPE, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* @GFT_RAM_LINE_TUNNEL_ETHERTYPE, align 4
  %216 = call i32 @SET_FIELD(i32 %214, i32 %215, i32 1)
  store i32 1, i32* %21, align 4
  br label %217

217:                                              ; preds = %213, %209
  br label %218

218:                                              ; preds = %217, %202
  br label %219

219:                                              ; preds = %218, %191
  br label %220

220:                                              ; preds = %219, %177
  br label %221

221:                                              ; preds = %220, %154
  %222 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %223 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %224 = load i64, i64* @PRS_REG_SEARCH_NON_IP_AS_GFT, align 8
  %225 = load i32, i32* %21, align 4
  %226 = call i32 @qed_wr(%struct.qed_hwfn* %222, %struct.qed_ptt* %223, i64 %224, i32 %225)
  %227 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %228 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %229 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %230 = load i32, i32* @RAM_LINE_SIZE, align 4
  %231 = load i32, i32* %11, align 4
  %232 = mul nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %229, %233
  %235 = load i32, i32* %19, align 4
  %236 = call i32 @qed_wr(%struct.qed_hwfn* %227, %struct.qed_ptt* %228, i64 %234, i32 %235)
  %237 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %238 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %239 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %240 = load i32, i32* @RAM_LINE_SIZE, align 4
  %241 = load i32, i32* %11, align 4
  %242 = mul nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %239, %243
  %245 = load i64, i64* @REG_SIZE, align 8
  %246 = add nsw i64 %244, %245
  %247 = load i32, i32* %20, align 4
  %248 = call i32 @qed_wr(%struct.qed_hwfn* %237, %struct.qed_ptt* %238, i64 %246, i32 %247)
  %249 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %250 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %251 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %252 = load i32, i32* @RAM_LINE_SIZE, align 4
  %253 = load i32, i32* @PRS_GFT_CAM_LINES_NO_MATCH, align 4
  %254 = mul nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %251, %255
  %257 = call i32 @qed_wr(%struct.qed_hwfn* %249, %struct.qed_ptt* %250, i64 %256, i32 -1)
  %258 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %259 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %260 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %261 = load i32, i32* @RAM_LINE_SIZE, align 4
  %262 = load i32, i32* @PRS_GFT_CAM_LINES_NO_MATCH, align 4
  %263 = mul nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %260, %264
  %266 = load i64, i64* @REG_SIZE, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @qed_wr(%struct.qed_hwfn* %258, %struct.qed_ptt* %259, i64 %267, i32 1023)
  %269 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %270 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %271 = load i64, i64* @PRS_REG_SEARCH_GFT, align 8
  %272 = call i32 @qed_wr(%struct.qed_hwfn* %269, %struct.qed_ptt* %270, i64 %271, i32 1)
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
