; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_edata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_edata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, %struct.i2400m_roq*, %struct.TYPE_3__ }
%struct.i2400m_roq = type { i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.device = type { i32 }
%struct.i2400m_pl_edata_hdr = type { i32, i32 }
%struct.i2400m_roq_data = type { i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"(i2400m %p skb_rx %p single %u payload %p size %zu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"ERX: HW BUG? message with short header (%zu vs %zu bytes expected)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ERX: skb %p reusing\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"ERX: no memory to clone skb\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"ERX: skb %p cloned from %p\0A\00", align 1
@I2400M_RO_NEEDED = common dso_local global i32 0, align 4
@I2400M_RO_TYPE_SHIFT = common dso_local global i32 0, align 4
@I2400M_RO_TYPE = common dso_local global i32 0, align 4
@I2400M_RO_CIN_SHIFT = common dso_local global i32 0, align 4
@I2400M_RO_CIN = common dso_local global i32 0, align 4
@I2400M_RO_SN_SHIFT = common dso_local global i32 0, align 4
@I2400M_RO_SN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"ERX: reorder needed: type %u cin %u [ws %u] sn %u/%u len %zuB\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"HW BUG? unknown reorder type %u\0A\00", align 1
@i2400m_rx_roq_destroy = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"(i2400m %p skb_rx %p single %u payload %p size %zu) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.sk_buff*, i32, i8*, i64)* @i2400m_rx_edata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_rx_edata(%struct.i2400m* %0, %struct.sk_buff* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.i2400m*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.i2400m_pl_edata_hdr*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.i2400m_roq*, align 8
  %22 = alloca %struct.i2400m_roq_data*, align 8
  %23 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %24 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %25 = call %struct.device* @i2400m_dev(%struct.i2400m* %24)
  store %struct.device* %25, %struct.device** %11, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to %struct.i2400m_pl_edata_hdr*
  store %struct.i2400m_pl_edata_hdr* %27, %struct.i2400m_pl_edata_hdr** %12, align 8
  %28 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %29 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %13, align 8
  %32 = load i32, i32* @ETH_HLEN, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 8
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  %37 = load %struct.device*, %struct.device** %11, align 8
  %38 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @d_fnstart(i32 2, %struct.device* %37, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %38, %struct.sk_buff* %39, i32 %40, i8* %41, i64 %42)
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %5
  %47 = load %struct.device*, %struct.device** %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 8)
  br label %234

50:                                               ; preds = %5
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %14, align 8
  %56 = load %struct.device*, %struct.device** %11, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %58 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 3, %struct.device* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %57)
  br label %78

59:                                               ; preds = %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %60, i32 %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %14, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %64 = icmp eq %struct.sk_buff* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.device*, %struct.device** %11, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.net_device*, %struct.net_device** %13, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %233

73:                                               ; preds = %59
  %74 = load %struct.device*, %struct.device** %11, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 3, %struct.device* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %75, %struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %73, %53
  %79 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr i8, i8* %80, i64 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = ptrtoint i8* %81 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @skb_pull(%struct.sk_buff* %79, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %93 = call i64 @skb_end_pointer(%struct.sk_buff* %92)
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8*, i8** %9, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sub i64 %98, 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @skb_trim(%struct.sk_buff* %91, i32 %100)
  %102 = load %struct.i2400m_pl_edata_hdr*, %struct.i2400m_pl_edata_hdr** %12, align 8
  %103 = getelementptr inbounds %struct.i2400m_pl_edata_hdr, %struct.i2400m_pl_edata_hdr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* @I2400M_RO_NEEDED, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %17, align 4
  %109 = load %struct.i2400m_pl_edata_hdr*, %struct.i2400m_pl_edata_hdr** %12, align 8
  %110 = getelementptr inbounds %struct.i2400m_pl_edata_hdr, %struct.i2400m_pl_edata_hdr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %227

114:                                              ; preds = %78
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @I2400M_RO_TYPE_SHIFT, align 4
  %117 = lshr i32 %115, %116
  %118 = load i32, i32* @I2400M_RO_TYPE, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @I2400M_RO_CIN_SHIFT, align 4
  %122 = lshr i32 %120, %121
  %123 = load i32, i32* @I2400M_RO_CIN, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @I2400M_RO_SN_SHIFT, align 4
  %127 = lshr i32 %125, %126
  %128 = load i32, i32* @I2400M_RO_SN, align 4
  %129 = and i32 %127, %128
  store i32 %129, i32* %20, align 4
  %130 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %131 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %130, i32 0, i32 0
  %132 = load i64, i64* %23, align 8
  %133 = call i32 @spin_lock_irqsave(i32* %131, i64 %132)
  %134 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %135 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %134, i32 0, i32 2
  %136 = load %struct.i2400m_roq*, %struct.i2400m_roq** %135, align 8
  %137 = icmp eq %struct.i2400m_roq* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %114
  %139 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %140 = call i32 @kfree_skb(%struct.sk_buff* %139)
  %141 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %142 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %141, i32 0, i32 0
  %143 = load i64, i64* %23, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  br label %234

145:                                              ; preds = %114
  %146 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %147 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %146, i32 0, i32 2
  %148 = load %struct.i2400m_roq*, %struct.i2400m_roq** %147, align 8
  %149 = load i32, i32* %19, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %148, i64 %150
  store %struct.i2400m_roq* %151, %struct.i2400m_roq** %21, align 8
  %152 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %153 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %152, i32 0, i32 1
  %154 = call i32 @kref_get(i32* %153)
  %155 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %156 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %155, i32 0, i32 0
  %157 = load i64, i64* %23, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = bitcast i32* %160 to %struct.i2400m_roq_data*
  store %struct.i2400m_roq_data* %161, %struct.i2400m_roq_data** %22, align 8
  %162 = load i32, i32* %20, align 4
  %163 = load %struct.i2400m_roq_data*, %struct.i2400m_roq_data** %22, align 8
  %164 = getelementptr inbounds %struct.i2400m_roq_data, %struct.i2400m_roq_data* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load %struct.i2400m_roq_data*, %struct.i2400m_roq_data** %22, align 8
  %167 = getelementptr inbounds %struct.i2400m_roq_data, %struct.i2400m_roq_data* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.device*, %struct.device** %11, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %19, align 4
  %171 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %172 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %176 = load i32, i32* %20, align 4
  %177 = call i32 @__i2400m_roq_nsn(%struct.i2400m_roq* %175, i32 %176)
  %178 = load i64, i64* %10, align 8
  %179 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %168, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %169, i32 %170, i32 %173, i32 %174, i32 %177, i64 %178)
  %180 = load %struct.device*, %struct.device** %11, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @d_dump(i32 2, %struct.device* %180, i8* %181, i64 %182)
  %184 = load i32, i32* %18, align 4
  switch i32 %184, label %210 [
    i32 129, label %185
    i32 131, label %191
    i32 128, label %197
    i32 130, label %204
  ]

185:                                              ; preds = %145
  %186 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %187 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %188 = call i32 @i2400m_roq_reset(%struct.i2400m* %186, %struct.i2400m_roq* %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %190 = call i32 @kfree_skb(%struct.sk_buff* %189)
  br label %214

191:                                              ; preds = %145
  %192 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %193 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %195 = load i32, i32* %20, align 4
  %196 = call i32 @i2400m_roq_queue(%struct.i2400m* %192, %struct.i2400m_roq* %193, %struct.sk_buff* %194, i32 %195)
  br label %214

197:                                              ; preds = %145
  %198 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %199 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %200 = load i32, i32* %20, align 4
  %201 = call i32 @i2400m_roq_update_ws(%struct.i2400m* %198, %struct.i2400m_roq* %199, i32 %200)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %203 = call i32 @kfree_skb(%struct.sk_buff* %202)
  br label %214

204:                                              ; preds = %145
  %205 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %206 = load %struct.i2400m_roq*, %struct.i2400m_roq** %21, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %208 = load i32, i32* %20, align 4
  %209 = call i32 @i2400m_roq_queue_update_ws(%struct.i2400m* %205, %struct.i2400m_roq* %206, %struct.sk_buff* %207, i32 %208)
  br label %214

210:                                              ; preds = %145
  %211 = load %struct.device*, %struct.device** %11, align 8
  %212 = load i32, i32* %18, align 4
  %213 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %211, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %210, %204, %197, %191, %185
  %215 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %216 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %215, i32 0, i32 0
  %217 = load i64, i64* %23, align 8
  %218 = call i32 @spin_lock_irqsave(i32* %216, i64 %217)
  %219 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %220 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %219, i32 0, i32 1
  %221 = load i32, i32* @i2400m_rx_roq_destroy, align 4
  %222 = call i32 @kref_put(i32* %220, i32 %221)
  %223 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %224 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %223, i32 0, i32 0
  %225 = load i64, i64* %23, align 8
  %226 = call i32 @spin_unlock_irqrestore(i32* %224, i64 %225)
  br label %232

227:                                              ; preds = %78
  %228 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %230 = load i32, i32* %15, align 4
  %231 = call i32 @i2400m_net_erx(%struct.i2400m* %228, %struct.sk_buff* %229, i32 %230)
  br label %232

232:                                              ; preds = %227, %214
  br label %233

233:                                              ; preds = %232, %65
  br label %234

234:                                              ; preds = %233, %138, %46
  %235 = load %struct.device*, %struct.device** %11, align 8
  %236 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %237 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load i8*, i8** %9, align 8
  %240 = load i64, i64* %10, align 8
  %241 = call i32 @d_fnend(i32 2, %struct.device* %235, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), %struct.i2400m* %236, %struct.sk_buff* %237, i32 %238, i8* %239, i64 %240)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32, i8*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_end_pointer(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @__i2400m_roq_nsn(%struct.i2400m_roq*, i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i8*, i64) #1

declare dso_local i32 @i2400m_roq_reset(%struct.i2400m*, %struct.i2400m_roq*) #1

declare dso_local i32 @i2400m_roq_queue(%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @i2400m_roq_update_ws(%struct.i2400m*, %struct.i2400m_roq*, i32) #1

declare dso_local i32 @i2400m_roq_queue_update_ws(%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @i2400m_net_erx(%struct.i2400m*, %struct.sk_buff*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
