; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_start_xmit_bm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_start_xmit_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hp100_private = type { i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, i32, %struct.sk_buff* }

@HP100_CHIPID_SHASTA = common dso_local global i64 0, align 8
@ETH_ZLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@HP100_LAN_100 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"hp100: %s: login to 100Mb/s hub retry\0A\00", align 1
@HP100_LAN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"hp100: %s: link down detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"hp100: %s: cable change 10Mb/s <-> 100Mb/s detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"hp100: %s: interface reset\0A\00", align 1
@HP100_MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_PDA_L = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @hp100_start_xmit_bm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp100_start_xmit_bm(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hp100_private*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %15)
  store %struct.hp100_private* %16, %struct.hp100_private** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %263

22:                                               ; preds = %2
  %23 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %24 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HP100_CHIPID_SHASTA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @ETH_ZLEN, align 4
  %31 = call i64 @skb_padto(%struct.sk_buff* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %267

35:                                               ; preds = %28, %22
  %36 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %37 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %36, i32 0, i32 7
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %42 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %159

45:                                               ; preds = %35
  %46 = load i32, i32* @jiffies, align 4
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i64 @dev_trans_start(%struct.net_device* %47)
  %49 = load i64, i64* @HZ, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @time_before(i32 %46, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %263

54:                                               ; preds = %45
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = call i64 @hp100_check_lan(%struct.net_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %263

59:                                               ; preds = %54
  %60 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %61 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @HP100_LAN_100, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %67 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = call i32 @hp100_stop_interface(%struct.net_device* %75)
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = call i8* @hp100_login_to_vg_hub(%struct.net_device* %77, i32 0)
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %81 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = call i32 @hp100_start_interface(%struct.net_device* %82)
  br label %158

84:                                               ; preds = %65, %59
  %85 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %86 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %85, i32 0, i32 4
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = call i32 (...) @hp100_ints_off()
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = call i32 @hp100_sense_lan(%struct.net_device* %90)
  store i32 %91, i32* %7, align 4
  %92 = call i32 (...) @hp100_ints_on()
  %93 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %94 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %93, i32 0, i32 4
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @HP100_LAN_ERR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %84
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %157

105:                                              ; preds = %84
  %106 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %107 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %105
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %118 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = call i32 @hp100_stop_interface(%struct.net_device* %119)
  %121 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %122 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @HP100_LAN_100, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %111
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = call i8* @hp100_login_to_vg_hub(%struct.net_device* %127, i32 0)
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %131 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %130, i32 0, i32 3
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %126, %111
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = call i32 @hp100_start_interface(%struct.net_device* %133)
  br label %156

135:                                              ; preds = %105
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load %struct.net_device*, %struct.net_device** %5, align 8
  %141 = call i32 @hp100_stop_interface(%struct.net_device* %140)
  %142 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %143 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @HP100_LAN_100, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %135
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = call i8* @hp100_login_to_vg_hub(%struct.net_device* %148, i32 0)
  %150 = ptrtoint i8* %149 to i64
  %151 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %152 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %151, i32 0, i32 3
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %147, %135
  %154 = load %struct.net_device*, %struct.net_device** %5, align 8
  %155 = call i32 @hp100_start_interface(%struct.net_device* %154)
  br label %156

156:                                              ; preds = %153, %132
  br label %157

157:                                              ; preds = %156, %100
  br label %158

158:                                              ; preds = %157, %70
  br label %263

159:                                              ; preds = %35
  %160 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %161 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %160, i32 0, i32 4
  %162 = load i64, i64* %6, align 8
  %163 = call i32 @spin_lock_irqsave(i32* %161, i64 %162)
  %164 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %165 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %164, i32 0, i32 7
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  store %struct.TYPE_4__* %166, %struct.TYPE_4__** %11, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to %struct.TYPE_4__*
  %171 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %172 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %171, i32 0, i32 7
  store %struct.TYPE_4__* %170, %struct.TYPE_4__** %172, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @HP100_MIN_PACKET_SIZE, align 4
  %177 = icmp sge i32 %175, %176
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %159
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  br label %187

185:                                              ; preds = %159
  %186 = load i32, i32* @HP100_MIN_PACKET_SIZE, align 4
  br label %187

187:                                              ; preds = %185, %181
  %188 = phi i32 [ %184, %181 ], [ %186, %185 ]
  store i32 %188, i32* %7, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  store %struct.sk_buff* %189, %struct.sk_buff** %191, align 8
  %192 = load i32, i32* %7, align 4
  %193 = or i32 65536, %192
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 %193, i32* %197, align 4
  %198 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %199 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @HP100_CHIPID_SHASTA, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %187
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  store i32 %204, i32* %208, align 4
  br label %217

209:                                              ; preds = %187
  %210 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  store i32 %212, i32* %216, align 4
  br label %217

217:                                              ; preds = %209, %203
  %218 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %219 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %230 = call i64 @pci_map_single(i32 %220, i32 %223, i32 %228, i32 %229)
  %231 = trunc i64 %230 to i32
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  store i32 %231, i32* %235, align 4
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @TX_PDA_L, align 4
  %240 = call i32 @hp100_outl(i32 %238, i32 %239)
  %241 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %242 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  %245 = load %struct.net_device*, %struct.net_device** %5, align 8
  %246 = getelementptr inbounds %struct.net_device, %struct.net_device* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  %250 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %251 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.net_device*, %struct.net_device** %5, align 8
  %254 = getelementptr inbounds %struct.net_device, %struct.net_device* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, %252
  store i32 %257, i32* %255, align 4
  %258 = load %struct.hp100_private*, %struct.hp100_private** %10, align 8
  %259 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %258, i32 0, i32 4
  %260 = load i64, i64* %6, align 8
  %261 = call i32 @spin_unlock_irqrestore(i32* %259, i64 %260)
  %262 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %262, i32* %3, align 4
  br label %267

263:                                              ; preds = %158, %58, %53, %21
  %264 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %265 = call i32 @dev_kfree_skb(%struct.sk_buff* %264)
  %266 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %263, %217, %33
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @dev_trans_start(%struct.net_device*) #1

declare dso_local i64 @hp100_check_lan(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @hp100_stop_interface(%struct.net_device*) #1

declare dso_local i8* @hp100_login_to_vg_hub(%struct.net_device*, i32) #1

declare dso_local i32 @hp100_start_interface(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hp100_ints_off(...) #1

declare dso_local i32 @hp100_sense_lan(%struct.net_device*) #1

declare dso_local i32 @hp100_ints_on(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @hp100_outl(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
