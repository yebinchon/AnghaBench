; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sh_eth_private = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@sh_eth_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can not assign IRQ number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sh_eth_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sh_eth_private* %7, %struct.sh_eth_private** %4, align 8
  %8 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %9 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_get_sync(i32* %11)
  %13 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %14 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %13, i32 0, i32 2
  %15 = call i32 @napi_enable(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @sh_eth_interrupt, align 4
  %20 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %21 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @request_irq(i32 %18, i32 %19, i32 %24, i32 %27, %struct.net_device* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %65

35:                                               ; preds = %1
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @sh_eth_ring_init(%struct.net_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %59

41:                                               ; preds = %35
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @sh_eth_dev_init(%struct.net_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %59

47:                                               ; preds = %41
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @sh_eth_phy_start(%struct.net_device* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %59

53:                                               ; preds = %47
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @netif_start_queue(%struct.net_device* %54)
  %56 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %57 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %75

59:                                               ; preds = %52, %46, %40
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @free_irq(i32 %62, %struct.net_device* %63)
  br label %65

65:                                               ; preds = %59, %32
  %66 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %67 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %66, i32 0, i32 2
  %68 = call i32 @napi_disable(i32* %67)
  %69 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %70 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @pm_runtime_put_sync(i32* %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %65, %53
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @sh_eth_ring_init(%struct.net_device*) #1

declare dso_local i32 @sh_eth_dev_init(%struct.net_device*) #1

declare dso_local i32 @sh_eth_phy_start(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
