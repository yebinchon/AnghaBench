; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.rcar_can_priv = type { i32*, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.can_frame = type { i32, i64, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i64 0, align 8
@RCAR_CAN_IDE = common dso_local global i64 0, align 8
@CAN_SFF_MASK = common dso_local global i64 0, align 8
@RCAR_CAN_SID_SHIFT = common dso_local global i64 0, align 8
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@RCAR_CAN_RTR = common dso_local global i64 0, align 8
@RCAR_CAN_TX_FIFO_MBX = common dso_local global i64 0, align 8
@RCAR_CAN_FIFO_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @rcar_can_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_can_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rcar_can_priv*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.rcar_can_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.rcar_can_priv* %11, %struct.rcar_can_priv** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.can_frame*
  store %struct.can_frame* %15, %struct.can_frame** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i64 @can_dropped_invalid_skb(%struct.net_device* %16, %struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %156

22:                                               ; preds = %2
  %23 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %24 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CAN_EFF_FLAG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %31 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @CAN_EFF_MASK, align 8
  %35 = and i64 %33, %34
  %36 = load i64, i64* @RCAR_CAN_IDE, align 8
  %37 = or i64 %35, %36
  store i64 %37, i64* %8, align 8
  br label %47

38:                                               ; preds = %22
  %39 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %40 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @CAN_SFF_MASK, align 8
  %44 = and i64 %42, %43
  %45 = load i64, i64* @RCAR_CAN_SID_SHIFT, align 8
  %46 = shl i64 %44, %45
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %38, %29
  %48 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %49 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CAN_RTR_FLAG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i64, i64* @RCAR_CAN_RTR, align 8
  %56 = load i64, i64* %8, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %88

58:                                               ; preds = %47
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %84, %58
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %62 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %59
  %66 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %67 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %73 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i64, i64* @RCAR_CAN_TX_FIFO_MBX, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = call i32 @writeb(i32 %71, i32* %82)
  br label %84

84:                                               ; preds = %65
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %59

87:                                               ; preds = %59
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %91 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i64, i64* @RCAR_CAN_TX_FIFO_MBX, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = call i32 @writel(i64 %89, i32* %97)
  %99 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %100 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %104 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i64, i64* @RCAR_CAN_TX_FIFO_MBX, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = call i32 @writeb(i32 %102, i32* %110)
  %112 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %113 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %117 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %120 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RCAR_CAN_FIFO_DEPTH, align 8
  %123 = urem i64 %121, %122
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  store i32 %115, i32* %124, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load %struct.net_device*, %struct.net_device** %5, align 8
  %127 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %128 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @RCAR_CAN_FIFO_DEPTH, align 8
  %131 = urem i64 %129, %130
  %132 = call i32 @can_put_echo_skb(%struct.sk_buff* %125, %struct.net_device* %126, i64 %131)
  %133 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %134 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %138 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %137, i32 0, i32 3
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = call i32 @writeb(i32 255, i32* %140)
  %142 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %143 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %6, align 8
  %146 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = sub i64 %144, %147
  %149 = load i64, i64* @RCAR_CAN_FIFO_DEPTH, align 8
  %150 = icmp uge i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %88
  %152 = load %struct.net_device*, %struct.net_device** %5, align 8
  %153 = call i32 @netif_stop_queue(%struct.net_device* %152)
  br label %154

154:                                              ; preds = %151, %88
  %155 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %20
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.rcar_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
