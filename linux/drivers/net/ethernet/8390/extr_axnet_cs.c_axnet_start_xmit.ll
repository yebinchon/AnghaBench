; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ei_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@EN0_IMR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"idle transmitter tx2=%d, lasttx=%d, txing=%d\0A\00", align 1
@TX_PAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"idle transmitter, tx1=%d, lasttx=%d, txing=%d\0A\00", align 1
@tx_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"No Tx buffers free! tx1=%d tx2=%d last=%d\0A\00", align 1
@ENISR_ALL = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @axnet_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axnet_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ei_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.ei_device* @netdev_priv(%struct.net_device* %18)
  store %struct.ei_device* %19, %struct.ei_device** %7, align 8
  %20 = load i32, i32* @ETH_ZLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i32 @netif_stop_queue(%struct.net_device* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %30 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %29, i32 0, i32 6
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @EN0_IMR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb_p(i32 0, i64 %35)
  %37 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %38 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ETH_ZLEN, align 4
  %41 = call i32 @max(i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %43 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %2
  %47 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %48 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %52 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %54 = call i64 @netif_msg_tx_queued(%struct.ei_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %46
  %57 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %58 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %64 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %67 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %70 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @netdev_dbg(%struct.net_device* %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %61, %56, %46
  br label %144

74:                                               ; preds = %2
  %75 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %76 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %74
  %80 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %81 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TX_PAGES, align 4
  %84 = sdiv i32 %83, 2
  %85 = add nsw i32 %82, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %88 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %90 = call i64 @netif_msg_tx_queued(%struct.ei_device* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %79
  %93 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %94 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %100 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %103 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %106 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @netdev_dbg(%struct.net_device* %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %97, %92, %79
  br label %143

110:                                              ; preds = %74
  %111 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %112 = load i32, i32* @tx_err, align 4
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %115 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %118 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %121 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @netif_dbg(%struct.ei_device* %111, i32 %112, %struct.net_device* %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %119, i32 %122)
  %124 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %125 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %124, i32 0, i32 0
  store i32 0, i32* %125, align 4
  %126 = load %struct.net_device*, %struct.net_device** %5, align 8
  %127 = call i32 @netif_stop_queue(%struct.net_device* %126)
  %128 = load i32, i32* @ENISR_ALL, align 4
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* @EN0_IMR, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @outb_p(i32 %128, i64 %131)
  %133 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %134 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %133, i32 0, i32 6
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load %struct.net_device*, %struct.net_device** %5, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %142, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %242

143:                                              ; preds = %109
  br label %144

144:                                              ; preds = %143, %73
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @ei_block_output(%struct.net_device* %151, i32 %152, i32* %155, i32 %156)
  br label %170

158:                                              ; preds = %144
  %159 = load i32, i32* @ETH_ZLEN, align 4
  %160 = call i32 @memset(i32* %23, i32 0, i32 %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %161, i32* %23, i32 %164)
  %166 = load %struct.net_device*, %struct.net_device** %5, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @ei_block_output(%struct.net_device* %166, i32 %167, i32* %23, i32 %168)
  br label %170

170:                                              ; preds = %158, %150
  %171 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %172 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %200, label %175

175:                                              ; preds = %170
  %176 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %177 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %176, i32 0, i32 5
  store i32 1, i32* %177, align 4
  %178 = load %struct.net_device*, %struct.net_device** %5, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @NS8390_trigger_send(%struct.net_device* %178, i32 %179, i32 %180)
  %182 = load %struct.net_device*, %struct.net_device** %5, align 8
  %183 = call i32 @netif_trans_update(%struct.net_device* %182)
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %186 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %184, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %175
  %190 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %191 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %190, i32 0, i32 1
  store i32 -1, i32* %191, align 4
  %192 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %193 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %192, i32 0, i32 4
  store i32 -1, i32* %193, align 4
  br label %199

194:                                              ; preds = %175
  %195 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %196 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %195, i32 0, i32 3
  store i32 -1, i32* %196, align 4
  %197 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %198 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %197, i32 0, i32 4
  store i32 -2, i32* %198, align 4
  br label %199

199:                                              ; preds = %194, %189
  br label %205

200:                                              ; preds = %170
  %201 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %202 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %200, %199
  %206 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %207 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %212 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.net_device*, %struct.net_device** %5, align 8
  %217 = call i32 @netif_stop_queue(%struct.net_device* %216)
  br label %221

218:                                              ; preds = %210, %205
  %219 = load %struct.net_device*, %struct.net_device** %5, align 8
  %220 = call i32 @netif_start_queue(%struct.net_device* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %223 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %222, i32 0, i32 0
  store i32 0, i32* %223, align 4
  %224 = load i32, i32* @ENISR_ALL, align 4
  %225 = load i64, i64* %6, align 8
  %226 = load i64, i64* @EN0_IMR, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @outb_p(i32 %224, i64 %227)
  %229 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %230 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %229, i32 0, i32 6
  %231 = load i64, i64* %11, align 8
  %232 = call i32 @spin_unlock_irqrestore(i32* %230, i64 %231)
  %233 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %234 = call i32 @dev_kfree_skb(%struct.sk_buff* %233)
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.net_device*, %struct.net_device** %5, align 8
  %237 = getelementptr inbounds %struct.net_device, %struct.net_device* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, %235
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %241, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %242

242:                                              ; preds = %221, %110
  %243 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %243)
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @netif_msg_tx_queued(%struct.ei_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.ei_device*, i32, %struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ei_block_output(%struct.net_device*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @NS8390_trigger_send(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
