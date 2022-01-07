; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, %struct.TYPE_4__*, i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64, %struct.TYPE_3__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64, i32*, i64 }
%struct.TYPE_3__ = type { i32, i64, i32, %struct.sk_buff*, %struct.TYPE_3__*, i64 }
%struct.sk_buff = type { i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@RBSShift = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RXOWN = common dso_local global i64 0, align 8
@RXIC = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 1500
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 32
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ]
  %21 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %22 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %24 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %23, i32 0, i32 7
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  %27 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %28 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %27, i32 0, i32 12
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %30 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %29, i32 0, i32 7
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %33 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %32, i32 0, i32 10
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %35 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %34, i32 0, i32 9
  store i64 0, i64* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %96, %19
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @RX_RING_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %36
  %41 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %42 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %41, i32 0, i32 7
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %49 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RBSShift, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %54 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %53, i32 0, i32 7
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 8
  %60 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %61 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %60, i32 0, i32 11
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = add i64 %62, %66
  %68 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %69 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %68, i32 0, i32 7
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  store i64 %67, i64* %74, align 8
  %75 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %76 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %75, i32 0, i32 7
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %80
  %82 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %83 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %82, i32 0, i32 7
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %88, align 8
  %89 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %90 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %89, i32 0, i32 7
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %95, align 8
  br label %96

96:                                               ; preds = %40
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %36

99:                                               ; preds = %36
  %100 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %101 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %100, i32 0, i32 11
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %104 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %103, i32 0, i32 7
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 5
  store i64 %102, i64* %110, align 8
  %111 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %112 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %111, i32 0, i32 7
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %115 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %114, i32 0, i32 7
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  store %struct.TYPE_3__* %113, %struct.TYPE_3__** %121, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %192, %99
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @RX_RING_SIZE, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %195

126:                                              ; preds = %122
  %127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %128 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %129 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %127, i32 %130)
  store %struct.sk_buff* %131, %struct.sk_buff** %5, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = icmp eq %struct.sk_buff* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %126
  %135 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %136 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %135, i32 0, i32 7
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %142 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %141, i32 0, i32 10
  store %struct.TYPE_3__* %140, %struct.TYPE_3__** %142, align 8
  br label %195

143:                                              ; preds = %126
  %144 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %145 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %144, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %150 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %149, i32 0, i32 7
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 3
  store %struct.sk_buff* %148, %struct.sk_buff** %155, align 8
  %156 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %157 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %163 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %166 = call i32 @pci_map_single(i32 %158, i32 %161, i32 %164, i32 %165)
  %167 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %168 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %167, i32 0, i32 7
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  store i32 %166, i32* %173, align 8
  %174 = load i64, i64* @RXOWN, align 8
  %175 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %176 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %175, i32 0, i32 7
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  store i64 %174, i64* %181, align 8
  %182 = load i32, i32* @RXIC, align 4
  %183 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %184 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %183, i32 0, i32 7
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %182
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %143
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %122

195:                                              ; preds = %134, %122
  %196 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %197 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %196, i32 0, i32 2
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 0
  %200 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %201 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %200, i32 0, i32 6
  store %struct.TYPE_4__* %199, %struct.TYPE_4__** %201, align 8
  %202 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %203 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %202, i32 0, i32 2
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 0
  %206 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %207 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %206, i32 0, i32 5
  store %struct.TYPE_4__* %205, %struct.TYPE_4__** %207, align 8
  %208 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %209 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %208, i32 0, i32 4
  store i64 0, i64* %209, align 8
  %210 = load i32, i32* @TX_RING_SIZE, align 4
  %211 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %212 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %261, %195
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @TX_RING_SIZE, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %264

217:                                              ; preds = %213
  %218 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %219 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %218, i32 0, i32 2
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  store i64 0, i64* %224, align 8
  %225 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %226 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = mul i64 %230, 4
  %232 = add i64 %227, %231
  %233 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %234 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %233, i32 0, i32 2
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  store i64 %232, i64* %239, align 8
  %240 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %241 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %240, i32 0, i32 2
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 %245
  %247 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %248 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %247, i32 0, i32 2
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = load i32, i32* %4, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  store %struct.TYPE_4__* %246, %struct.TYPE_4__** %253, align 8
  %254 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %255 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %254, i32 0, i32 2
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 2
  store i32* null, i32** %260, align 8
  br label %261

261:                                              ; preds = %217
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %4, align 4
  br label %213

264:                                              ; preds = %213
  %265 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %266 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %269 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %268, i32 0, i32 2
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = load i32, i32* %4, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  store i64 %267, i64* %275, align 8
  %276 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %277 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %276, i32 0, i32 2
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i64 0
  %280 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %281 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %280, i32 0, i32 2
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  store %struct.TYPE_4__* %279, %struct.TYPE_4__** %287, align 8
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
