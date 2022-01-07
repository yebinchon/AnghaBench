; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pcnet32_private = type { i32, i32, i32, i32, i64, i64*, %struct.TYPE_6__**, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Tx error status=%04x err_status=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Tx FIFO error!\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"out-of-sync dirty pointer, %d vs. %d, full=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pcnet32_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pcnet32_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %10)
  store %struct.pcnet32_private* %11, %struct.pcnet32_private** %3, align 8
  %12 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %13 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %184, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %18 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %187

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %24 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %28 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %27, i32 0, i32 9
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @le16_to_cpu(i32 %34)
  %36 = trunc i64 %35 to i16
  %37 = sext i16 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %187

41:                                               ; preds = %21
  %42 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %43 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %42, i32 0, i32 9
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 16384
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %117

52:                                               ; preds = %41
  %53 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %54 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %53, i32 0, i32 9
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le32_to_cpu(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %68 = load i32, i32* @tx_err, align 4
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (%struct.pcnet32_private*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.pcnet32_private* %67, i32 %68, %struct.net_device* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 67108864
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %52
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %52
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 134217728
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %82
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, 268435456
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %92
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 1073741824
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %113 = load i32, i32* @tx_err, align 4
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = call i32 (%struct.pcnet32_private*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.pcnet32_private* %112, i32 %113, %struct.net_device* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %116

116:                                              ; preds = %106, %102
  br label %133

117:                                              ; preds = %41
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %118, 6144
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %117
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %116
  %134 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %135 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %134, i32 0, i32 6
  %136 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %136, i64 %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = icmp ne %struct.TYPE_6__* %140, null
  br i1 %141, label %142, label %184

142:                                              ; preds = %133
  %143 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %144 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %147 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %146, i32 0, i32 5
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %154 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %153, i32 0, i32 6
  %155 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %155, i64 %157
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %163 = call i32 @pci_unmap_single(i32 %145, i64 %152, i32 %161, i32 %162)
  %164 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %165 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %164, i32 0, i32 6
  %166 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %166, i64 %168
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = call i32 @dev_kfree_skb_any(%struct.TYPE_6__* %170)
  %172 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %173 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %172, i32 0, i32 6
  %174 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %174, i64 %176
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %177, align 8
  %178 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %179 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %178, i32 0, i32 5
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %142, %133
  %185 = load i32, i32* %4, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %15

187:                                              ; preds = %40, %15
  %188 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %189 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %4, align 4
  %192 = sub i32 %190, %191
  %193 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %194 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %197 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = add i32 %195, %198
  %200 = and i32 %192, %199
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  %202 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %203 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = icmp ugt i32 %201, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %187
  %207 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %208 = load i32, i32* @drv, align 4
  %209 = load %struct.net_device*, %struct.net_device** %2, align 8
  %210 = load i32, i32* %4, align 4
  %211 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %212 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %215 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = call i32 (%struct.pcnet32_private*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.pcnet32_private* %207, i32 %208, %struct.net_device* %209, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %210, i32 %213, i64 %216)
  %218 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %219 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %4, align 4
  %222 = add i32 %221, %220
  store i32 %222, i32* %4, align 4
  %223 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %224 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %5, align 4
  %227 = sub i32 %226, %225
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %206, %187
  %229 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %230 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %249

233:                                              ; preds = %228
  %234 = load %struct.net_device*, %struct.net_device** %2, align 8
  %235 = call i64 @netif_queue_stopped(%struct.net_device* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %233
  %238 = load i32, i32* %5, align 4
  %239 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %240 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = sub i32 %241, 2
  %243 = icmp ult i32 %238, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %237
  %245 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %246 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %245, i32 0, i32 4
  store i64 0, i64* %246, align 8
  %247 = load %struct.net_device*, %struct.net_device** %2, align 8
  %248 = call i32 @netif_wake_queue(%struct.net_device* %247)
  br label %249

249:                                              ; preds = %244, %237, %233, %228
  %250 = load i32, i32* %4, align 4
  %251 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %252 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* %6, align 4
  ret i32 %253
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netif_err(%struct.pcnet32_private*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_6__*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
