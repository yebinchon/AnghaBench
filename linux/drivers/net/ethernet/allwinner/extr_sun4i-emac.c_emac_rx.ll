; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.emac_board_info = type { i32, i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i8* }

@emac_rx.rxlen_last = internal global i32 0, align 4
@EMAC_RX_FBC_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"RXCount: %x\0A\00", align 1
@EMAC_RX_CTL_REG = common dso_local global i64 0, align 8
@EMAC_RX_CTL_DMA_EN = common dso_local global i32 0, align 4
@EMAC_INT_CTL_REG = common dso_local global i64 0, align 8
@EMAC_RX_IO_DATA_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"receive header: %x\0A\00", align 1
@EMAC_UNDOCUMENTED_MAGIC = common dso_local global i32 0, align 4
@EMAC_CTL_REG = common dso_local global i64 0, align 8
@EMAC_CTL_RX_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"rxhdr: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"RX: status %02x, length %04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"RX: Bad Packet (runt)\0A\00", align 1
@EMAC_RX_IO_DATA_STATUS_OK = common dso_local global i32 0, align 4
@EMAC_RX_IO_DATA_STATUS_CRC_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"crc error\0A\00", align 1
@EMAC_RX_IO_DATA_STATUS_LEN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"length error\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"RxLen %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @emac_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_board_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %12)
  store %struct.emac_board_info* %13, %struct.emac_board_info** %3, align 8
  br label %14

14:                                               ; preds = %1, %323, %367
  %15 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %16 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EMAC_RX_FBC_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i8* @readl(i64 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %23 = call i64 @netif_msg_rx_status(%struct.emac_board_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %27 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %14
  %32 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %33 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %32, i32 0, i32 3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %36, label %84

36:                                               ; preds = %31
  %37 = load i32, i32* @emac_rx.rxlen_last, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %36
  %40 = load i32, i32* @emac_rx.rxlen_last, align 4
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %47 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %46, i32 0, i32 3
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i8* @eth_type_trans(%struct.sk_buff* %48, %struct.net_device* %49)
  %51 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %52 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %51, i32 0, i32 3
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  %55 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %56 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %55, i32 0, i32 3
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = call i32 @netif_rx(%struct.sk_buff* %57)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %65 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %64, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %65, align 8
  store i32 0, i32* @emac_rx.rxlen_last, align 4
  %66 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %67 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @EMAC_RX_CTL_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i8* @readl(i64 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @EMAC_RX_CTL_DMA_EN, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %79 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EMAC_RX_CTL_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  br label %84

84:                                               ; preds = %39, %36, %31
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %117, label %87

87:                                               ; preds = %84
  %88 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %89 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %91 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i8* @readl(i64 %94)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, 271
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %101 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %107 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @EMAC_RX_FBC_REG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i8* @readl(i64 %110)
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %87
  br label %368

116:                                              ; preds = %87
  br label %117

117:                                              ; preds = %116, %84
  %118 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %119 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @EMAC_RX_IO_DATA_REG, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i8* @readl(i64 %122)
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %7, align 4
  %125 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %126 = call i64 @netif_msg_rx_status(%struct.emac_board_info* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %117
  %129 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %130 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 (i32, i8*, ...) @dev_dbg(i32 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %128, %117
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @EMAC_UNDOCUMENTED_MAGIC, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %218

138:                                              ; preds = %134
  %139 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %140 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @EMAC_CTL_REG, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i8* @readl(i64 %143)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @EMAC_CTL_RX_EN, align 4
  %148 = xor i32 %147, -1
  %149 = and i32 %146, %148
  %150 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %151 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @EMAC_CTL_REG, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  %156 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %157 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @EMAC_RX_CTL_REG, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i8* @readl(i64 %160)
  %162 = ptrtoint i8* %161 to i32
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %163, 8
  %165 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %166 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @EMAC_RX_CTL_REG, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 %164, i64 %169)
  br label %171

171:                                              ; preds = %179, %138
  %172 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %173 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @EMAC_RX_CTL_REG, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i8* @readl(i64 %176)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %171
  %180 = load i32, i32* %7, align 4
  %181 = and i32 %180, 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %171, label %183

183:                                              ; preds = %179
  %184 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %185 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @EMAC_CTL_REG, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i8* @readl(i64 %188)
  %190 = ptrtoint i8* %189 to i32
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @EMAC_CTL_RX_EN, align 4
  %193 = or i32 %191, %192
  %194 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %195 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @EMAC_CTL_REG, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @writel(i32 %193, i64 %198)
  %200 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %201 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i8* @readl(i64 %204)
  %206 = ptrtoint i8* %205 to i32
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = or i32 %207, 271
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %211 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @EMAC_INT_CTL_REG, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i32 %209, i64 %214)
  %216 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %217 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  br label %368

218:                                              ; preds = %134
  store i32 1, i32* %6, align 4
  %219 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %220 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @EMAC_RX_IO_DATA_REG, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i8* @readl(i64 %223)
  %225 = ptrtoint i8* %224 to i32
  store i32 %225, i32* %8, align 4
  %226 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %227 = call i64 @netif_msg_rx_status(%struct.emac_board_info* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %218
  %230 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %231 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = call i32 (i32, i8*, ...) @dev_dbg(i32 %232, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %229, %218
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @EMAC_RX_IO_DATA_LEN(i32 %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @EMAC_RX_IO_DATA_STATUS(i32 %238)
  store i32 %239, i32* %9, align 4
  %240 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %241 = call i64 @netif_msg_rx_status(%struct.emac_board_info* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %235
  %244 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %245 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %11, align 4
  %249 = call i32 (i32, i8*, ...) @dev_dbg(i32 %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %243, %235
  %251 = load i32, i32* %11, align 4
  %252 = icmp slt i32 %251, 64
  br i1 %252, label %253, label %263

253:                                              ; preds = %250
  store i32 0, i32* %6, align 4
  %254 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %255 = call i64 @netif_msg_rx_err(%struct.emac_board_info* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %259 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (i32, i8*, ...) @dev_dbg(i32 %260, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %262

262:                                              ; preds = %257, %253
  br label %263

263:                                              ; preds = %262, %250
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* @EMAC_RX_IO_DATA_STATUS_OK, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  %268 = xor i1 %267, true
  %269 = zext i1 %268 to i32
  %270 = call i64 @unlikely(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %313

272:                                              ; preds = %263
  store i32 0, i32* %6, align 4
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* @EMAC_RX_IO_DATA_STATUS_CRC_ERR, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %292

277:                                              ; preds = %272
  %278 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %279 = call i64 @netif_msg_rx_err(%struct.emac_board_info* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %283 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (i32, i8*, ...) @dev_dbg(i32 %284, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %286

286:                                              ; preds = %281, %277
  %287 = load %struct.net_device*, %struct.net_device** %2, align 8
  %288 = getelementptr inbounds %struct.net_device, %struct.net_device* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %286, %272
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* @EMAC_RX_IO_DATA_STATUS_LEN_ERR, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %312

297:                                              ; preds = %292
  %298 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %299 = call i64 @netif_msg_rx_err(%struct.emac_board_info* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %297
  %302 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %303 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 (i32, i8*, ...) @dev_dbg(i32 %304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %306

306:                                              ; preds = %301, %297
  %307 = load %struct.net_device*, %struct.net_device** %2, align 8
  %308 = getelementptr inbounds %struct.net_device, %struct.net_device* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %306, %292
  br label %313

313:                                              ; preds = %312, %263
  %314 = load i32, i32* %6, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %367

316:                                              ; preds = %313
  %317 = load %struct.net_device*, %struct.net_device** %2, align 8
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %318, 4
  %320 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %317, i32 %319)
  store %struct.sk_buff* %320, %struct.sk_buff** %4, align 8
  %321 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %322 = icmp ne %struct.sk_buff* %321, null
  br i1 %322, label %324, label %323

323:                                              ; preds = %316
  br label %14

324:                                              ; preds = %316
  %325 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %326 = call i32 @skb_reserve(%struct.sk_buff* %325, i32 2)
  %327 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %328 = load i32, i32* %11, align 4
  %329 = sub nsw i32 %328, 4
  %330 = call i32* @skb_put(%struct.sk_buff* %327, i32 %329)
  store i32* %330, i32** %5, align 8
  %331 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %332 = call i64 @netif_msg_rx_status(%struct.emac_board_info* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %324
  %335 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %336 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = call i32 (i32, i8*, ...) @dev_dbg(i32 %337, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %334, %324
  %341 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %342 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @EMAC_RX_IO_DATA_REG, align 8
  %345 = add nsw i64 %343, %344
  %346 = load i32*, i32** %5, align 8
  %347 = load i32, i32* %11, align 4
  %348 = call i32 @emac_inblk_32bit(i64 %345, i32* %346, i32 %347)
  %349 = load i32, i32* %11, align 4
  %350 = load %struct.net_device*, %struct.net_device** %2, align 8
  %351 = getelementptr inbounds %struct.net_device, %struct.net_device* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %353, %349
  store i32 %354, i32* %352, align 4
  %355 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %356 = load %struct.net_device*, %struct.net_device** %2, align 8
  %357 = call i8* @eth_type_trans(%struct.sk_buff* %355, %struct.net_device* %356)
  %358 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %359 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %358, i32 0, i32 0
  store i8* %357, i8** %359, align 8
  %360 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %361 = call i32 @netif_rx(%struct.sk_buff* %360)
  %362 = load %struct.net_device*, %struct.net_device** %2, align 8
  %363 = getelementptr inbounds %struct.net_device, %struct.net_device* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %340, %313
  br label %14

368:                                              ; preds = %183, %115
  ret void
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i64 @netif_msg_rx_status(%struct.emac_board_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i8* @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @EMAC_RX_IO_DATA_LEN(i32) #1

declare dso_local i32 @EMAC_RX_IO_DATA_STATUS(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.emac_board_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @emac_inblk_32bit(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
