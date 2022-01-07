; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32 }

@__const.lan78xx_set_suspend.ipv4_multicast = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 94], align 4
@__const.lan78xx_set_suspend.ipv6_multicast = private unnamed_addr constant [3 x i32] [i32 51, i32 51, i32 0], align 4
@__const.lan78xx_set_suspend.arp_type = private unnamed_addr constant [2 x i32] [i32 8, i32 6], align 4
@MAC_TX = common dso_local global i32 0, align 4
@MAC_TX_TXEN_ = common dso_local global i32 0, align 4
@MAC_RX = common dso_local global i32 0, align 4
@MAC_RX_RXEN_ = common dso_local global i32 0, align 4
@WUCSR = common dso_local global i32 0, align 4
@WUCSR2 = common dso_local global i32 0, align 4
@WK_SRC = common dso_local global i32 0, align 4
@PMT_CTL = common dso_local global i32 0, align 4
@PMT_CTL_RES_CLR_WKP_EN_ = common dso_local global i32 0, align 4
@PMT_CTL_RES_CLR_WKP_STS_ = common dso_local global i32 0, align 4
@NUM_OF_WUF_CFG = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@PMT_CTL_PHY_WAKE_EN_ = common dso_local global i32 0, align 4
@PMT_CTL_WOL_EN_ = common dso_local global i32 0, align 4
@PMT_CTL_SUS_MODE_MASK_ = common dso_local global i32 0, align 4
@PMT_CTL_SUS_MODE_0_ = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WUCSR_MPEN_ = common dso_local global i32 0, align 4
@PMT_CTL_SUS_MODE_3_ = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WUCSR_BCST_EN_ = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WUCSR_WAKE_EN_ = common dso_local global i32 0, align 4
@WUF_CFGX_EN_ = common dso_local global i32 0, align 4
@WUF_CFGX_TYPE_MCAST_ = common dso_local global i32 0, align 4
@WUF_CFGX_OFFSET_SHIFT_ = common dso_local global i32 0, align 4
@WUF_CFGX_CRC16_MASK_ = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WUCSR_PFDA_EN_ = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@WUF_CFGX_TYPE_ALL_ = common dso_local global i32 0, align 4
@PMT_CTL_WUPS_MASK_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, i32)* @lan78xx_set_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_set_suspend(%struct.lan78xx_net* %0, i32 %1) #0 {
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [2 x i32], align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([3 x i32]* @__const.lan78xx_set_suspend.ipv4_multicast to i8*), i64 12, i1 false)
  %15 = bitcast [3 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.lan78xx_set_suspend.ipv6_multicast to i8*), i64 12, i1 false)
  %16 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([2 x i32]* @__const.lan78xx_set_suspend.arp_type to i8*), i64 8, i1 false)
  %17 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %18 = load i32, i32* @MAC_TX, align 4
  %19 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %17, i32 %18, i32* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @MAC_TX_TXEN_, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %25 = load i32, i32* @MAC_TX, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %29 = load i32, i32* @MAC_RX, align 4
  %30 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %28, i32 %29, i32* %5)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @MAC_RX_RXEN_, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %36 = load i32, i32* @MAC_RX, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %40 = load i32, i32* @WUCSR, align 4
  %41 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %39, i32 %40, i32 0)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %43 = load i32, i32* @WUCSR2, align 4
  %44 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %42, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %46 = load i32, i32* @WK_SRC, align 4
  %47 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %45, i32 %46, i32 -917729)
  store i32 %47, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %48 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %49 = load i32, i32* @PMT_CTL, align 4
  %50 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %48, i32 %49, i32* %10)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @PMT_CTL_RES_CLR_WKP_EN_, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @PMT_CTL_RES_CLR_WKP_STS_, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %67, %2
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NUM_OF_WUF_CFG, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @WUF_CFG(i32 %64)
  %66 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %63, i32 %65, i32 0)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %58

70:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @WAKE_PHY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load i32, i32* @PMT_CTL_PHY_WAKE_EN_, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @PMT_CTL_WOL_EN_, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @PMT_CTL_SUS_MODE_MASK_, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* @PMT_CTL_SUS_MODE_0_, align 4
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %75, %70
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @WAKE_MAGIC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = load i32, i32* @WUCSR_MPEN_, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @PMT_CTL_WOL_EN_, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* @PMT_CTL_SUS_MODE_MASK_, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* @PMT_CTL_SUS_MODE_3_, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %94, %89
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @WAKE_BCAST, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load i32, i32* @WUCSR_BCST_EN_, align 4
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* @PMT_CTL_WOL_EN_, align 4
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @PMT_CTL_SUS_MODE_MASK_, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %10, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* @PMT_CTL_SUS_MODE_0_, align 4
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %113, %108
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @WAKE_MCAST, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %214

132:                                              ; preds = %127
  %133 = load i32, i32* @WUCSR_WAKE_EN_, align 4
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %137 = call i32 @lan78xx_wakeframe_crc16(i32* %136, i32 3)
  store i32 %137, i32* %8, align 4
  %138 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @WUF_CFG(i32 %139)
  %141 = load i32, i32* @WUF_CFGX_EN_, align 4
  %142 = load i32, i32* @WUF_CFGX_TYPE_MCAST_, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @WUF_CFGX_OFFSET_SHIFT_, align 4
  %145 = shl i32 0, %144
  %146 = or i32 %143, %145
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @WUF_CFGX_CRC16_MASK_, align 4
  %149 = and i32 %147, %148
  %150 = or i32 %146, %149
  %151 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %138, i32 %140, i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @WUF_MASK0(i32 %153)
  %155 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %152, i32 %154, i32 7)
  store i32 %155, i32* %6, align 4
  %156 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @WUF_MASK1(i32 %157)
  %159 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %156, i32 %158, i32 0)
  store i32 %159, i32* %6, align 4
  %160 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @WUF_MASK2(i32 %161)
  %163 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %160, i32 %162, i32 0)
  store i32 %163, i32* %6, align 4
  %164 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @WUF_MASK3(i32 %165)
  %167 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %164, i32 %166, i32 0)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  %170 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %171 = call i32 @lan78xx_wakeframe_crc16(i32* %170, i32 2)
  store i32 %171, i32* %8, align 4
  %172 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @WUF_CFG(i32 %173)
  %175 = load i32, i32* @WUF_CFGX_EN_, align 4
  %176 = load i32, i32* @WUF_CFGX_TYPE_MCAST_, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @WUF_CFGX_OFFSET_SHIFT_, align 4
  %179 = shl i32 0, %178
  %180 = or i32 %177, %179
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @WUF_CFGX_CRC16_MASK_, align 4
  %183 = and i32 %181, %182
  %184 = or i32 %180, %183
  %185 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %172, i32 %174, i32 %184)
  store i32 %185, i32* %6, align 4
  %186 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @WUF_MASK0(i32 %187)
  %189 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %186, i32 %188, i32 3)
  store i32 %189, i32* %6, align 4
  %190 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @WUF_MASK1(i32 %191)
  %193 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %190, i32 %192, i32 0)
  store i32 %193, i32* %6, align 4
  %194 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @WUF_MASK2(i32 %195)
  %197 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %194, i32 %196, i32 0)
  store i32 %197, i32* %6, align 4
  %198 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @WUF_MASK3(i32 %199)
  %201 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %198, i32 %200, i32 0)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* @PMT_CTL_WOL_EN_, align 4
  %205 = load i32, i32* %10, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* @PMT_CTL_SUS_MODE_MASK_, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %10, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* @PMT_CTL_SUS_MODE_0_, align 4
  %212 = load i32, i32* %10, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %132, %127
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @WAKE_UCAST, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %214
  %220 = load i32, i32* @WUCSR_PFDA_EN_, align 4
  %221 = load i32, i32* %9, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* @PMT_CTL_WOL_EN_, align 4
  %224 = load i32, i32* %10, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* @PMT_CTL_SUS_MODE_MASK_, align 4
  %227 = xor i32 %226, -1
  %228 = load i32, i32* %10, align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* @PMT_CTL_SUS_MODE_0_, align 4
  %231 = load i32, i32* %10, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %219, %214
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @WAKE_ARP, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %286

238:                                              ; preds = %233
  %239 = load i32, i32* @WUCSR_WAKE_EN_, align 4
  %240 = load i32, i32* %9, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %9, align 4
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %243 = call i32 @lan78xx_wakeframe_crc16(i32* %242, i32 2)
  store i32 %243, i32* %8, align 4
  %244 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @WUF_CFG(i32 %245)
  %247 = load i32, i32* @WUF_CFGX_EN_, align 4
  %248 = load i32, i32* @WUF_CFGX_TYPE_ALL_, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @WUF_CFGX_OFFSET_SHIFT_, align 4
  %251 = shl i32 0, %250
  %252 = or i32 %249, %251
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @WUF_CFGX_CRC16_MASK_, align 4
  %255 = and i32 %253, %254
  %256 = or i32 %252, %255
  %257 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %244, i32 %246, i32 %256)
  store i32 %257, i32* %6, align 4
  %258 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @WUF_MASK0(i32 %259)
  %261 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %258, i32 %260, i32 12288)
  store i32 %261, i32* %6, align 4
  %262 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %263 = load i32, i32* %7, align 4
  %264 = call i32 @WUF_MASK1(i32 %263)
  %265 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %262, i32 %264, i32 0)
  store i32 %265, i32* %6, align 4
  %266 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @WUF_MASK2(i32 %267)
  %269 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %266, i32 %268, i32 0)
  store i32 %269, i32* %6, align 4
  %270 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @WUF_MASK3(i32 %271)
  %273 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %270, i32 %272, i32 0)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %7, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %7, align 4
  %276 = load i32, i32* @PMT_CTL_WOL_EN_, align 4
  %277 = load i32, i32* %10, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* @PMT_CTL_SUS_MODE_MASK_, align 4
  %280 = xor i32 %279, -1
  %281 = load i32, i32* %10, align 4
  %282 = and i32 %281, %280
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* @PMT_CTL_SUS_MODE_0_, align 4
  %284 = load i32, i32* %10, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %10, align 4
  br label %286

286:                                              ; preds = %238, %233
  %287 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %288 = load i32, i32* @WUCSR, align 4
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %287, i32 %288, i32 %289)
  store i32 %290, i32* %6, align 4
  %291 = load i32, i32* %4, align 4
  %292 = sext i32 %291 to i64
  %293 = call i32 @hweight_long(i64 %292)
  %294 = icmp sgt i32 %293, 1
  br i1 %294, label %295, label %306

295:                                              ; preds = %286
  %296 = load i32, i32* @PMT_CTL_WOL_EN_, align 4
  %297 = load i32, i32* %10, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* @PMT_CTL_SUS_MODE_MASK_, align 4
  %300 = xor i32 %299, -1
  %301 = load i32, i32* %10, align 4
  %302 = and i32 %301, %300
  store i32 %302, i32* %10, align 4
  %303 = load i32, i32* @PMT_CTL_SUS_MODE_0_, align 4
  %304 = load i32, i32* %10, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %10, align 4
  br label %306

306:                                              ; preds = %295, %286
  %307 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %308 = load i32, i32* @PMT_CTL, align 4
  %309 = load i32, i32* %10, align 4
  %310 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %307, i32 %308, i32 %309)
  store i32 %310, i32* %6, align 4
  %311 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %312 = load i32, i32* @PMT_CTL, align 4
  %313 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %311, i32 %312, i32* %5)
  store i32 %313, i32* %6, align 4
  %314 = load i32, i32* @PMT_CTL_WUPS_MASK_, align 4
  %315 = load i32, i32* %5, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %5, align 4
  %317 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %318 = load i32, i32* @PMT_CTL, align 4
  %319 = load i32, i32* %5, align 4
  %320 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %317, i32 %318, i32 %319)
  store i32 %320, i32* %6, align 4
  %321 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %322 = load i32, i32* @MAC_RX, align 4
  %323 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %321, i32 %322, i32* %5)
  store i32 %323, i32* %6, align 4
  %324 = load i32, i32* @MAC_RX_RXEN_, align 4
  %325 = load i32, i32* %5, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %5, align 4
  %327 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %328 = load i32, i32* @MAC_RX, align 4
  %329 = load i32, i32* %5, align 4
  %330 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %327, i32 %328, i32 %329)
  store i32 %330, i32* %6, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #2

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #2

declare dso_local i32 @WUF_CFG(i32) #2

declare dso_local i32 @lan78xx_wakeframe_crc16(i32*, i32) #2

declare dso_local i32 @WUF_MASK0(i32) #2

declare dso_local i32 @WUF_MASK1(i32) #2

declare dso_local i32 @WUF_MASK2(i32) #2

declare dso_local i32 @WUF_MASK3(i32) #2

declare dso_local i32 @hweight_long(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
