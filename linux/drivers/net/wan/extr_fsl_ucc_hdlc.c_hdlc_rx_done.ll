; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_hdlc_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_hdlc_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_hdlc_private = type { i32, %struct.qe_bd*, %struct.qe_bd*, i32*, %struct.net_device* }
%struct.qe_bd = type { i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32, %struct.net_device* }
%struct.TYPE_5__ = type { i64 }

@R_E_S = common dso_local global i32 0, align 4
@RX_BD_ERRORS = common dso_local global i32 0, align 4
@R_CD_S = common dso_local global i32 0, align 4
@R_OV_S = common dso_local global i32 0, align 4
@R_CR_S = common dso_local global i32 0, align 4
@R_AB_S = common dso_local global i32 0, align 4
@R_NO_S = common dso_local global i32 0, align 4
@R_LG_S = common dso_local global i32 0, align 4
@MAX_RX_BUF_LENGTH = common dso_local global i32 0, align 4
@HDLC_HEAD_LEN = common dso_local global i32 0, align 4
@HDLC_CRC_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R_W_S = common dso_local global i32 0, align 4
@R_I_S = common dso_local global i32 0, align 4
@RX_BD_RING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_hdlc_private*, i32)* @hdlc_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlc_rx_done(%struct.ucc_hdlc_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucc_hdlc_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.qe_bd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ucc_hdlc_private* %0, %struct.ucc_hdlc_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %15 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %14, i32 0, i32 4
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %20 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %19, i32 0, i32 1
  %21 = load %struct.qe_bd*, %struct.qe_bd** %20, align 8
  store %struct.qe_bd* %21, %struct.qe_bd** %9, align 8
  %22 = load %struct.qe_bd*, %struct.qe_bd** %9, align 8
  %23 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %22, i32 0, i32 0
  %24 = call i32 @ioread16be(i32* %23)
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %271, %2
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @R_E_S, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ true, %25 ], [ %33, %30 ]
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %275

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @RX_BD_ERRORS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %114

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @R_CD_S, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %42
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @R_OV_S, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @R_CR_S, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @R_AB_S, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @R_NO_S, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @R_LG_S, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  br label %230

114:                                              ; preds = %37
  %115 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %116 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %119 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @MAX_RX_BUF_LENGTH, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %117, i64 %123
  store i32* %124, i32** %13, align 8
  %125 = load %struct.qe_bd*, %struct.qe_bd** %9, align 8
  %126 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %125, i32 0, i32 1
  %127 = call i32 @ioread16be(i32* %126)
  store i32 %127, i32* %11, align 4
  %128 = load %struct.net_device*, %struct.net_device** %6, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %201 [
    i32 128, label %131
    i32 129, label %169
    i32 130, label %169
  ]

131:                                              ; preds = %114
  %132 = load i32, i32* @HDLC_HEAD_LEN, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %13, align 8
  %136 = load i32, i32* @HDLC_HEAD_LEN, align 4
  %137 = load i32, i32* @HDLC_CRC_SIZE, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %11, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call %struct.sk_buff* @dev_alloc_skb(i32 %141)
  store %struct.sk_buff* %142, %struct.sk_buff** %7, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %144 = icmp ne %struct.sk_buff* %143, null
  br i1 %144, label %153, label %145

145:                                              ; preds = %131
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %280

153:                                              ; preds = %131
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @skb_put(%struct.sk_buff* %154, i32 %155)
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.net_device*, %struct.net_device** %6, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 3
  store %struct.net_device* %160, %struct.net_device** %162, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %13, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @memcpy(i32 %165, i32* %166, i32 %167)
  br label %201

169:                                              ; preds = %114, %114
  %170 = load i32, i32* @HDLC_CRC_SIZE, align 4
  %171 = load i32, i32* %11, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call %struct.sk_buff* @dev_alloc_skb(i32 %173)
  store %struct.sk_buff* %174, %struct.sk_buff** %7, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %176 = icmp ne %struct.sk_buff* %175, null
  br i1 %176, label %185, label %177

177:                                              ; preds = %169
  %178 = load %struct.net_device*, %struct.net_device** %6, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %280

185:                                              ; preds = %169
  %186 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @skb_put(%struct.sk_buff* %186, i32 %187)
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.net_device*, %struct.net_device** %6, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 3
  store %struct.net_device* %192, %struct.net_device** %194, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @memcpy(i32 %197, i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %114, %185, %153
  %202 = load %struct.net_device*, %struct.net_device** %6, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.net_device*, %struct.net_device** %6, align 8
  %211 = getelementptr inbounds %struct.net_device, %struct.net_device* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, %209
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %201
  %222 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %223 = load %struct.net_device*, %struct.net_device** %6, align 8
  %224 = call i32 @hdlc_type_trans(%struct.sk_buff* %222, %struct.net_device* %223)
  %225 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  br label %227

227:                                              ; preds = %221, %201
  %228 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %229 = call i32 @netif_receive_skb(%struct.sk_buff* %228)
  br label %230

230:                                              ; preds = %227, %113
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @R_W_S, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* @R_E_S, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @R_I_S, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.qe_bd*, %struct.qe_bd** %9, align 8
  %239 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %238, i32 0, i32 0
  %240 = call i32 @iowrite16be(i32 %237, i32* %239)
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @R_W_S, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %230
  %246 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %247 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %246, i32 0, i32 0
  store i32 0, i32* %247, align 8
  %248 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %249 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %248, i32 0, i32 2
  %250 = load %struct.qe_bd*, %struct.qe_bd** %249, align 8
  store %struct.qe_bd* %250, %struct.qe_bd** %9, align 8
  br label %271

251:                                              ; preds = %230
  %252 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %253 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @RX_BD_RING_LEN, align 4
  %256 = sub nsw i32 %255, 1
  %257 = icmp slt i32 %254, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %251
  %259 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %260 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 8
  br label %268

263:                                              ; preds = %251
  %264 = load i32, i32* @RX_BD_RING_LEN, align 4
  %265 = sub nsw i32 %264, 1
  %266 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %267 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %263, %258
  %269 = load %struct.qe_bd*, %struct.qe_bd** %9, align 8
  %270 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %269, i64 1
  store %struct.qe_bd* %270, %struct.qe_bd** %9, align 8
  br label %271

271:                                              ; preds = %268, %245
  %272 = load %struct.qe_bd*, %struct.qe_bd** %9, align 8
  %273 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %272, i32 0, i32 0
  %274 = call i32 @ioread16be(i32* %273)
  store i32 %274, i32* %10, align 4
  br label %25

275:                                              ; preds = %34
  %276 = load %struct.qe_bd*, %struct.qe_bd** %9, align 8
  %277 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %4, align 8
  %278 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %277, i32 0, i32 1
  store %struct.qe_bd* %276, %struct.qe_bd** %278, align 8
  %279 = load i32, i32* %12, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %275, %177, %145
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i32 @ioread16be(i32*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hdlc_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @iowrite16be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
