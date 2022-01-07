; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pch_can_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@PCH_CTRL_CCE = common dso_local global i32 0, align 4
@PCH_MSK_BITT_BRP = common dso_local global i32 0, align 4
@PCH_BIT_SJW_SHIFT = common dso_local global i32 0, align 4
@PCH_BIT_TSEG1_SHIFT = common dso_local global i32 0, align 4
@PCH_BIT_TSEG2_SHIFT = common dso_local global i32 0, align 4
@PCH_MSK_BRPE_BRPE = common dso_local global i32 0, align 4
@PCH_BIT_BRPE_BRPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pch_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pch_can_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.pch_can_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.pch_can_priv* %8, %struct.pch_can_priv** %3, align 8
  %9 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %10 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.can_bittiming* %11, %struct.can_bittiming** %4, align 8
  %12 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %13 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* @PCH_CTRL_CCE, align 4
  %17 = call i32 @pch_can_bit_set(i32* %15, i32 %16)
  %18 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %19 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @PCH_MSK_BITT_BRP, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %25 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* @PCH_BIT_SJW_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %33 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %36 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @PCH_BIT_TSEG1_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %45 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @PCH_BIT_TSEG2_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %53 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* @PCH_MSK_BRPE_BRPE, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @PCH_BIT_BRPE_BRPE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %62 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = call i32 @iowrite32(i32 %60, i32* %64)
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %68 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = call i32 @iowrite32(i32 %66, i32* %70)
  %72 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %73 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* @PCH_CTRL_CCE, align 4
  %77 = call i32 @pch_can_bit_clear(i32* %75, i32 %76)
  ret i32 0
}

declare dso_local %struct.pch_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pch_can_bit_set(i32*, i32) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_can_bit_clear(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
