; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rcar_can_priv = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.can_bittiming }
%struct.can_bittiming = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rcar_can_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_can_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_can_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.rcar_can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.rcar_can_priv* %7, %struct.rcar_can_priv** %3, align 8
  %8 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.can_bittiming* %10, %struct.can_bittiming** %4, align 8
  %11 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %12 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %15 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = sub nsw i64 %17, 1
  %19 = call i32 @RCAR_CAN_BCR_TSEG1(i64 %18)
  %20 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %21 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @RCAR_CAN_BCR_BPR(i64 %23)
  %25 = or i32 %19, %24
  %26 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %27 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @RCAR_CAN_BCR_SJW(i64 %29)
  %31 = or i32 %25, %30
  %32 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %33 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @RCAR_CAN_BCR_TSEG2(i64 %35)
  %37 = or i32 %31, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 8
  %40 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %39, %42
  %44 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @writel(i32 %43, i32* %47)
  ret void
}

declare dso_local %struct.rcar_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RCAR_CAN_BCR_TSEG1(i64) #1

declare dso_local i32 @RCAR_CAN_BCR_BPR(i64) #1

declare dso_local i32 @RCAR_CAN_BCR_SJW(i64) #1

declare dso_local i32 @RCAR_CAN_BCR_TSEG2(i64) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
