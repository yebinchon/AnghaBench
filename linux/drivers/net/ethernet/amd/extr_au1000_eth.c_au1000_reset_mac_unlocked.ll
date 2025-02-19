; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_reset_mac_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_reset_mac_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1000_private = type { i64, %struct.TYPE_4__**, %struct.TYPE_3__**, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MAC_EN_CLOCK_ENABLE = common dso_local global i32 0, align 4
@NUM_RX_DMA = common dso_local global i32 0, align 4
@NUM_TX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @au1000_reset_mac_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_reset_mac_unlocked(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1000_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %5)
  store %struct.au1000_private* %6, %struct.au1000_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @au1000_hard_stop(%struct.net_device* %7)
  %9 = load i32, i32* @MAC_EN_CLOCK_ENABLE, align 4
  %10 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %11 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @writel(i32 %9, i32 %12)
  %14 = call i32 (...) @wmb()
  %15 = call i32 @mdelay(i32 2)
  %16 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %17 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @writel(i32 0, i32 %18)
  %20 = call i32 (...) @wmb()
  %21 = call i32 @mdelay(i32 2)
  %22 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %23 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @NUM_RX_DMA, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %30 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -16
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @NUM_TX_DMA, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %49 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -16
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %63 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @au1000_hard_stop(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
