; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_frame_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_frame_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i64, %struct.slic_stats }
%struct.slic_stats = type { i32 }
%struct.sk_buff = type { i64 }
%struct.slic_rx_info_oasis = type { i32, i32 }
%struct.slic_rx_info_mojave = type { i32 }

@SLIC_MODEL_OASIS = common dso_local global i64 0, align 8
@SLIC_VRHSTATB_TPCSUM = common dso_local global i32 0, align 4
@rx_tpcsum = common dso_local global i32 0, align 4
@SLIC_VRHSTAT_TPOFLO = common dso_local global i32 0, align 4
@rx_tpoflow = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_TPHLEN = common dso_local global i32 0, align 4
@rx_tphlen = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_IPCSUM = common dso_local global i32 0, align 4
@rx_ipcsum = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_IPLERR = common dso_local global i32 0, align 4
@rx_iplen = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_IPHERR = common dso_local global i32 0, align 4
@rx_iphlen = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_RCVE = common dso_local global i32 0, align 4
@rx_early = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_BUFF = common dso_local global i32 0, align 4
@rx_buffoflow = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_CODE = common dso_local global i32 0, align 4
@rx_lcode = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_DRBL = common dso_local global i32 0, align 4
@rx_drbl = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_CRC = common dso_local global i32 0, align 4
@rx_crc = common dso_local global i32 0, align 4
@SLIC_VRHSTAT_802OE = common dso_local global i32 0, align 4
@rx_oflow802 = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_802UE = common dso_local global i32 0, align 4
@rx_uflow802 = common dso_local global i32 0, align 4
@SLIC_VRHSTATB_CARRE = common dso_local global i32 0, align 4
@tx_carrier = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_XPERR = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_XERRSHFT = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_XCSERR = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_XUFLOW = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_XHLEN = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_NETERR = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_NERRSHFT = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_NERRMSK = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_NCSERR = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_NUFLOW = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_NHLEN = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_LNKERR = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_LERRMSK = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_LDEARLY = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_LBOFLO = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_LCODERR = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_LDBLNBL = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_LCRCERR = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_LOFLO = common dso_local global i32 0, align 4
@SLIC_VGBSTAT_LUFLO = common dso_local global i32 0, align 4
@rx_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*, %struct.sk_buff*)* @slic_handle_frame_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_handle_frame_error(%struct.slic_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.slic_stats*, align 8
  %6 = alloca %struct.slic_rx_info_oasis*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.slic_rx_info_mojave*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %14 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %15 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %14, i32 0, i32 1
  store %struct.slic_stats* %15, %struct.slic_stats** %5, align 8
  %16 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %17 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SLIC_MODEL_OASIS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %160

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.slic_rx_info_oasis*
  store %struct.slic_rx_info_oasis* %25, %struct.slic_rx_info_oasis** %6, align 8
  %26 = load %struct.slic_rx_info_oasis*, %struct.slic_rx_info_oasis** %6, align 8
  %27 = getelementptr inbounds %struct.slic_rx_info_oasis, %struct.slic_rx_info_oasis* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.slic_rx_info_oasis*, %struct.slic_rx_info_oasis** %6, align 8
  %31 = getelementptr inbounds %struct.slic_rx_info_oasis, %struct.slic_rx_info_oasis* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SLIC_VRHSTATB_TPCSUM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %40 = load i32, i32* @rx_tpcsum, align 4
  %41 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %21
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SLIC_VRHSTAT_TPOFLO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %49 = load i32, i32* @rx_tpoflow, align 4
  %50 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SLIC_VRHSTATB_TPHLEN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %58 = load i32, i32* @rx_tphlen, align 4
  %59 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @SLIC_VRHSTATB_IPCSUM, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %67 = load i32, i32* @rx_ipcsum, align 4
  %68 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SLIC_VRHSTATB_IPLERR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %76 = load i32, i32* @rx_iplen, align 4
  %77 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SLIC_VRHSTATB_IPHERR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %85 = load i32, i32* @rx_iphlen, align 4
  %86 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @SLIC_VRHSTATB_RCVE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %94 = load i32, i32* @rx_early, align 4
  %95 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @SLIC_VRHSTATB_BUFF, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %103 = load i32, i32* @rx_buffoflow, align 4
  %104 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SLIC_VRHSTATB_CODE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %112 = load i32, i32* @rx_lcode, align 4
  %113 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @SLIC_VRHSTATB_DRBL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %121 = load i32, i32* @rx_drbl, align 4
  %122 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @SLIC_VRHSTATB_CRC, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %130 = load i32, i32* @rx_crc, align 4
  %131 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @SLIC_VRHSTAT_802OE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %139 = load i32, i32* @rx_oflow802, align 4
  %140 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @SLIC_VRHSTATB_802UE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %148 = load i32, i32* @rx_uflow802, align 4
  %149 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @SLIC_VRHSTATB_CARRE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %157 = load i32, i32* @tx_carrier, align 4
  %158 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %150
  br label %302

160:                                              ; preds = %2
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to %struct.slic_rx_info_mojave*
  store %struct.slic_rx_info_mojave* %164, %struct.slic_rx_info_mojave** %9, align 8
  %165 = load %struct.slic_rx_info_mojave*, %struct.slic_rx_info_mojave** %9, align 8
  %166 = getelementptr inbounds %struct.slic_rx_info_mojave, %struct.slic_rx_info_mojave* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le32_to_cpu(i32 %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @SLIC_VGBSTAT_XPERR, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %160
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @SLIC_VGBSTAT_XERRSHFT, align 4
  %176 = ashr i32 %174, %175
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @SLIC_VGBSTAT_XCSERR, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %182 = load i32, i32* @rx_tpcsum, align 4
  %183 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %173
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @SLIC_VGBSTAT_XUFLOW, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %190 = load i32, i32* @rx_tpoflow, align 4
  %191 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %184
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @SLIC_VGBSTAT_XHLEN, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %198 = load i32, i32* @rx_tphlen, align 4
  %199 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %197, i32 %198)
  br label %200

200:                                              ; preds = %196, %192
  br label %201

201:                                              ; preds = %200, %160
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @SLIC_VGBSTAT_NETERR, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %236

206:                                              ; preds = %201
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @SLIC_VGBSTAT_NERRSHFT, align 4
  %209 = ashr i32 %207, %208
  %210 = load i32, i32* @SLIC_VGBSTAT_NERRMSK, align 4
  %211 = and i32 %209, %210
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* @SLIC_VGBSTAT_NCSERR, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %206
  %216 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %217 = load i32, i32* @rx_ipcsum, align 4
  %218 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %206
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* @SLIC_VGBSTAT_NUFLOW, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %225 = load i32, i32* @rx_iplen, align 4
  %226 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %224, i32 %225)
  br label %227

227:                                              ; preds = %223, %219
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* @SLIC_VGBSTAT_NHLEN, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %233 = load i32, i32* @rx_iphlen, align 4
  %234 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %232, i32 %233)
  br label %235

235:                                              ; preds = %231, %227
  br label %236

236:                                              ; preds = %235, %201
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @SLIC_VGBSTAT_LNKERR, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %301

241:                                              ; preds = %236
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* @SLIC_VGBSTAT_LERRMSK, align 4
  %244 = and i32 %242, %243
  store i32 %244, i32* %13, align 4
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* @SLIC_VGBSTAT_LDEARLY, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %250 = load i32, i32* @rx_early, align 4
  %251 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %249, i32 %250)
  br label %252

252:                                              ; preds = %248, %241
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* @SLIC_VGBSTAT_LBOFLO, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %258 = load i32, i32* @rx_buffoflow, align 4
  %259 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %257, i32 %258)
  br label %260

260:                                              ; preds = %256, %252
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* @SLIC_VGBSTAT_LCODERR, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %266 = load i32, i32* @rx_lcode, align 4
  %267 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %265, i32 %266)
  br label %268

268:                                              ; preds = %264, %260
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* @SLIC_VGBSTAT_LDBLNBL, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %268
  %273 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %274 = load i32, i32* @rx_drbl, align 4
  %275 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %268
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* @SLIC_VGBSTAT_LCRCERR, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %282 = load i32, i32* @rx_crc, align 4
  %283 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %281, i32 %282)
  br label %284

284:                                              ; preds = %280, %276
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* @SLIC_VGBSTAT_LOFLO, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %290 = load i32, i32* @rx_oflow802, align 4
  %291 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %284
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* @SLIC_VGBSTAT_LUFLO, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %298 = load i32, i32* @rx_uflow802, align 4
  %299 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %297, i32 %298)
  br label %300

300:                                              ; preds = %296, %292
  br label %301

301:                                              ; preds = %300, %236
  br label %302

302:                                              ; preds = %301, %159
  %303 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %304 = load i32, i32* @rx_errors, align 4
  %305 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %303, i32 %304)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
