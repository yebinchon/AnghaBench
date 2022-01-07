; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.pch_can_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.can_frame = type { i32, i32, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@PCH_TX_OBJ_END = common dso_local global i32 0, align 4
@PCH_TREQ2_TX_MASK = common dso_local global i32 0, align 4
@PCH_TX_OBJ_START = common dso_local global i32 0, align 4
@PCH_CMASK_ALL = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@PCH_ID2_XTD = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@PCH_ID_MSGVAL = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@PCH_ID2_DIR = common dso_local global i32 0, align 4
@PCH_RX_OBJ_END = common dso_local global i32 0, align 4
@PCH_IF_MCONT_NEWDAT = common dso_local global i32 0, align 4
@PCH_IF_MCONT_TXRQXT = common dso_local global i32 0, align 4
@PCH_IF_MCONT_TXIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @pch_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pch_can_priv*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.pch_can_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.pch_can_priv* %12, %struct.pch_can_priv** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.can_frame*
  store %struct.can_frame* %16, %struct.can_frame** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @can_dropped_invalid_skb(%struct.net_device* %17, %struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %203

23:                                               ; preds = %2
  %24 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %25 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %28 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PCH_TX_OBJ_END, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %23
  %33 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %34 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @ioread32(i32* %36)
  %38 = load i32, i32* @PCH_TREQ2_TX_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @netif_stop_queue(%struct.net_device* %42)
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i32, i32* @PCH_TX_OBJ_START, align 4
  %46 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %47 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %53

48:                                               ; preds = %23
  %49 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %50 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %55 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i32, i32* @PCH_CMASK_ALL, align 4
  %62 = call i32 @pch_can_bit_set(i32* %60, i32 %61)
  %63 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %64 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CAN_EFF_FLAG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %53
  %70 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %71 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 65535
  %74 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %75 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = call i32 @iowrite32(i32 %73, i32* %80)
  %82 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %83 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %84, 16
  %86 = and i32 %85, 8191
  %87 = load i32, i32* @PCH_ID2_XTD, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %10, align 4
  br label %104

89:                                               ; preds = %53
  %90 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %91 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = call i32 @iowrite32(i32 0, i32* %96)
  %98 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %99 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CAN_SFF_MASK, align 4
  %102 = and i32 %100, %101
  %103 = shl i32 %102, 2
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %89, %69
  %105 = load i32, i32* @PCH_ID_MSGVAL, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %109 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CAN_RTR_FLAG, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %104
  %115 = load i32, i32* @PCH_ID2_DIR, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %114, %104
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %121 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = call i32 @iowrite32(i32 %119, i32* %126)
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %165, %118
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %131 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %168

134:                                              ; preds = %128
  %135 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %136 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %143 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  %151 = or i32 %141, %150
  %152 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %153 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 1
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sdiv i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = call i32 @iowrite16(i32 %151, i32* %163)
  br label %165

165:                                              ; preds = %134
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 2
  store i32 %167, i32* %9, align 4
  br label %128

168:                                              ; preds = %128
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = load %struct.net_device*, %struct.net_device** %5, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @PCH_RX_OBJ_END, align 4
  %173 = sub nsw i32 %171, %172
  %174 = sub nsw i32 %173, 1
  %175 = call i32 @can_put_echo_skb(%struct.sk_buff* %169, %struct.net_device* %170, i32 %174)
  %176 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %177 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @PCH_IF_MCONT_NEWDAT, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @PCH_IF_MCONT_TXRQXT, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @PCH_IF_MCONT_TXIE, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %186 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 1
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  %192 = call i32 @iowrite32(i32 %184, i32* %191)
  %193 = load %struct.pch_can_priv*, %struct.pch_can_priv** %6, align 8
  %194 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %193, i32 0, i32 1
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 1
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @pch_can_rw_msg_obj(i32* %199, i32 %200)
  %202 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %168, %21
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.pch_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pch_can_bit_set(i32*, i32) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @iowrite16(i32, i32*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @pch_can_rw_msg_obj(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
