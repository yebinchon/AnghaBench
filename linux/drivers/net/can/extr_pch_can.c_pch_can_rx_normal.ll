; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_rx_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_rx_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32, i32, i32* }
%struct.pch_can_priv = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }

@PCH_CMASK_RX_TX_GET = common dso_local global i32 0, align 4
@PCH_IF_MCONT_EOB = common dso_local global i32 0, align 4
@PCH_IF_MCONT_MSGLOST = common dso_local global i32 0, align 4
@PCH_IF_MCONT_NEWDAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"alloc_can_skb Failed\0A\00", align 1
@PCH_ID2_XTD = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@PCH_ID2_DIR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @pch_can_rx_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_can_rx_normal(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.can_frame*, align 8
  %13 = alloca %struct.pch_can_priv*, align 8
  %14 = alloca %struct.net_device_stats*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.pch_can_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.pch_can_priv* %19, %struct.pch_can_priv** %13, align 8
  %20 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %21 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.net_device_stats* %23, %struct.net_device_stats** %14, align 8
  br label %24

24:                                               ; preds = %218, %3
  %25 = load i32, i32* @PCH_CMASK_RX_TX_GET, align 4
  %26 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %27 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = call i32 @iowrite32(i32 %25, i32* %32)
  %34 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %35 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pch_can_rw_msg_obj(i32* %40, i32 %41)
  %43 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %44 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = call i32 @ioread32(i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PCH_IF_MCONT_EOB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %24
  br label %221

56:                                               ; preds = %24
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PCH_IF_MCONT_MSGLOST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pch_can_rx_msg_lost(%struct.net_device* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %218

71:                                               ; preds = %56
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PCH_IF_MCONT_NEWDAT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %218

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %82 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_6__* %83, %struct.can_frame** %12)
  store %struct.sk_buff* %84, %struct.sk_buff** %11, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = call i32 @netdev_err(%struct.net_device* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %223

91:                                               ; preds = %80
  %92 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %93 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = call i32 @ioread32(i32* %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @PCH_ID2_XTD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %91
  %105 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %106 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = call i32 @ioread32(i32* %111)
  %113 = and i32 %112, 65535
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %16, align 4
  %115 = and i32 %114, 8191
  %116 = shl i32 %115, 16
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @CAN_EFF_FLAG, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %123 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %132

124:                                              ; preds = %91
  %125 = load i32, i32* %16, align 4
  %126 = ashr i32 %125, 2
  %127 = load i32, i32* @CAN_SFF_MASK, align 4
  %128 = and i32 %126, %127
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %131 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %124, %104
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* @PCH_ID2_DIR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* @CAN_RTR_FLAG, align 4
  %139 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %140 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %132
  %144 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %145 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = call i32 @ioread32(i32* %150)
  %152 = and i32 %151, 15
  %153 = call i32 @get_can_dlc(i32 %152)
  %154 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %155 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  store i32 0, i32* %15, align 4
  br label %156

156:                                              ; preds = %192, %143
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %159 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %195

162:                                              ; preds = %156
  %163 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %164 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %163, i32 0, i32 0
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sdiv i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = call i32 @ioread16(i32* %174)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %178 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %176, i32* %182, align 4
  %183 = load i32, i32* %17, align 4
  %184 = ashr i32 %183, 8
  %185 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %186 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %184, i32* %191, align 4
  br label %192

192:                                              ; preds = %162
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, 2
  store i32 %194, i32* %15, align 4
  br label %156

195:                                              ; preds = %156
  %196 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %197 = call i32 @netif_receive_skb(%struct.sk_buff* %196)
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  %200 = load %struct.net_device_stats*, %struct.net_device_stats** %14, align 8
  %201 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %7, align 4
  %206 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %207 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.net_device_stats*, %struct.net_device_stats** %14, align 8
  %210 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load %struct.pch_can_priv*, %struct.pch_can_priv** %13, align 8
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @pch_fifo_thresh(%struct.pch_can_priv* %213, i32 %214)
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %195, %76, %61
  %219 = load i32, i32* %7, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %24, label %221

221:                                              ; preds = %218, %55
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %221, %87
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local %struct.pch_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_can_rw_msg_obj(i32*, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @pch_can_rx_msg_lost(%struct.net_device*, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_6__*, %struct.can_frame**) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @pch_fifo_thresh(%struct.pch_can_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
