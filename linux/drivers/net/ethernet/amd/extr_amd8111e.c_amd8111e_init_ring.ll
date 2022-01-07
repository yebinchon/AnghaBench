; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_6__*, i64, i32*, %struct.TYPE_5__**, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i8*, i64, i64, i8* }
%struct.TYPE_5__ = type { i32 }

@NUM_TX_RING_DR = common dso_local global i32 0, align 4
@NUM_RX_RING_DR = common dso_local global i32 0, align 4
@NUM_RX_BUFFERS = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@OWN_BIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @amd8111e_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.amd8111e_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.amd8111e_priv* %7, %struct.amd8111e_priv** %4, align 8
  %8 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %8, i32 0, i32 11
  store i64 0, i64* %9, align 8
  %10 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %10, i32 0, i32 12
  store i64 0, i64* %11, align 8
  %12 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %13 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %12, i32 0, i32 10
  store i64 0, i64* %13, align 8
  %14 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %15 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %17 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @amd8111e_free_skbs(%struct.net_device* %21)
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %25 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NUM_TX_RING_DR, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %32 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %31, i32 0, i32 0
  %33 = call i8* @pci_alloc_consistent(i32 %26, i32 %30, i32* %32)
  %34 = bitcast i8* %33 to %struct.TYPE_6__*
  %35 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %36 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %35, i32 0, i32 1
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %36, align 8
  %37 = icmp eq %struct.TYPE_6__* %34, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %245

39:                                               ; preds = %23
  %40 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %41 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NUM_RX_RING_DR, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %48 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %47, i32 0, i32 3
  %49 = call i8* @pci_alloc_consistent(i32 %42, i32 %46, i32* %48)
  %50 = bitcast i8* %49 to %struct.TYPE_6__*
  %51 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %52 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %51, i32 0, i32 4
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %52, align 8
  %53 = icmp eq %struct.TYPE_6__* %50, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %230

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %20
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @amd8111e_set_rx_buff_len(%struct.net_device* %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %111, %56
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @NUM_RX_BUFFERS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %59
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %66 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.TYPE_5__* @netdev_alloc_skb(%struct.net_device* %64, i64 %67)
  %69 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %70 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %69, i32 0, i32 7
  %71 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %71, i64 %73
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %74, align 8
  %75 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %76 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %75, i32 0, i32 7
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %77, i64 %79
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = icmp ne %struct.TYPE_5__* %81, null
  br i1 %82, label %102, label %83

83:                                               ; preds = %63
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %98, %83
  %87 = load i32, i32* %5, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %91 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %90, i32 0, i32 7
  %92 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %92, i64 %94
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = call i32 @dev_kfree_skb(%struct.TYPE_5__* %96)
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %5, align 4
  br label %86

101:                                              ; preds = %86
  br label %215

102:                                              ; preds = %63
  %103 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %104 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %103, i32 0, i32 7
  %105 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %105, i64 %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = call i32 @skb_reserve(%struct.TYPE_5__* %109, i32 2)
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %59

114:                                              ; preds = %59
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %181, %114
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @NUM_RX_BUFFERS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %184

119:                                              ; preds = %115
  %120 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %121 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %124 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %123, i32 0, i32 7
  %125 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %125, i64 %127
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %133 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %134, 2
  %136 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %137 = call i32 @pci_map_single(i32 %122, i32 %131, i64 %135, i32 %136)
  %138 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %139 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  %144 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %145 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @cpu_to_le32(i32 %150)
  %152 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %153 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %152, i32 0, i32 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  store i64 %151, i64* %158, align 8
  %159 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %160 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %161, 2
  %163 = call i8* @cpu_to_le16(i64 %162)
  %164 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %165 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %164, i32 0, i32 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i8* %163, i8** %170, align 8
  %171 = call i32 (...) @wmb()
  %172 = load i64, i64* @OWN_BIT, align 8
  %173 = call i8* @cpu_to_le16(i64 %172)
  %174 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %175 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %174, i32 0, i32 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 3
  store i8* %173, i8** %180, align 8
  br label %181

181:                                              ; preds = %119
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %5, align 4
  br label %115

184:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %211, %184
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @NUM_TX_RING_DR, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %214

189:                                              ; preds = %185
  %190 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %191 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %190, i32 0, i32 1
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  store i64 0, i64* %196, align 8
  %197 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %198 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %197, i32 0, i32 1
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %205 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %204, i32 0, i32 1
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  store i8* null, i8** %210, align 8
  br label %211

211:                                              ; preds = %189
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %185

214:                                              ; preds = %185
  store i32 0, i32* %2, align 4
  br label %248

215:                                              ; preds = %101
  %216 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %217 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @NUM_RX_RING_DR, align 4
  %220 = sext i32 %219 to i64
  %221 = mul i64 4, %220
  %222 = trunc i64 %221 to i32
  %223 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %224 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %223, i32 0, i32 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %227 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @pci_free_consistent(i32 %218, i32 %222, %struct.TYPE_6__* %225, i32 %228)
  br label %230

230:                                              ; preds = %215, %54
  %231 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %232 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @NUM_TX_RING_DR, align 4
  %235 = sext i32 %234 to i64
  %236 = mul i64 4, %235
  %237 = trunc i64 %236 to i32
  %238 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %239 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %238, i32 0, i32 1
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %242 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @pci_free_consistent(i32 %233, i32 %237, %struct.TYPE_6__* %240, i32 %243)
  br label %245

245:                                              ; preds = %230, %38
  %246 = load i32, i32* @ENOMEM, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %245, %214
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @amd8111e_free_skbs(%struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @amd8111e_set_rx_buff_len(%struct.net_device*) #1

declare dso_local %struct.TYPE_5__* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_5__*) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
