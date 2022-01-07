; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_enable_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_enable_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1000_private = type { i32, i32, i32 }

@MAC_EN_CLOCK_ENABLE = common dso_local global i32 0, align 4
@MAC_EN_RESET0 = common dso_local global i32 0, align 4
@MAC_EN_RESET1 = common dso_local global i32 0, align 4
@MAC_EN_RESET2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @au1000_enable_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_enable_mac(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.au1000_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %7)
  store %struct.au1000_private* %8, %struct.au1000_private** %6, align 8
  %9 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %10 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %17 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @MAC_EN_CLOCK_ENABLE, align 4
  %22 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %23 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel(i32 %21, i32 %24)
  %26 = call i32 (...) @wmb()
  %27 = call i32 @mdelay(i32 2)
  %28 = load i32, i32* @MAC_EN_RESET0, align 4
  %29 = load i32, i32* @MAC_EN_RESET1, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MAC_EN_RESET2, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MAC_EN_CLOCK_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %36 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @writel(i32 %34, i32 %37)
  %39 = call i32 (...) @wmb()
  %40 = call i32 @mdelay(i32 2)
  %41 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %42 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %20, %15
  %44 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %45 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %44, i32 0, i32 1
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
