; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_all_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_all_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32, i32, %struct.net_device**, i32, %struct.TYPE_2__* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sky2_port = type { i32 }

@SKY2_HW_IRQ_SETUP = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*)* @sky2_all_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_all_down(%struct.sky2_hw* %0) #0 {
  %2 = alloca %struct.sky2_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sky2_port*, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %2, align 8
  %6 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %7 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SKY2_HW_IRQ_SETUP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %14 = load i32, i32* @B0_IMSK, align 4
  %15 = call i32 @sky2_write32(%struct.sky2_hw* %13, i32 %14, i32 0)
  %16 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %17 = load i32, i32* @B0_IMSK, align 4
  %18 = call i32 @sky2_read32(%struct.sky2_hw* %16, i32 %17)
  %19 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %20 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @synchronize_irq(i32 %23)
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %26 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %25, i32 0, i32 3
  %27 = call i32 @napi_disable(i32* %26)
  br label %28

28:                                               ; preds = %12, %1
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %32 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %37 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %36, i32 0, i32 2
  %38 = load %struct.net_device**, %struct.net_device*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.net_device*, %struct.net_device** %38, i64 %40
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  store %struct.net_device* %42, %struct.net_device** %4, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %43)
  store %struct.sky2_port* %44, %struct.sky2_port** %5, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @netif_running(%struct.net_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  br label %56

49:                                               ; preds = %35
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @netif_carrier_off(%struct.net_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @netif_tx_disable(%struct.net_device* %52)
  %54 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %55 = call i32 @sky2_hw_down(%struct.sky2_port* %54)
  br label %56

56:                                               ; preds = %49, %48
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %29

59:                                               ; preds = %29
  ret void
}

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @sky2_hw_down(%struct.sky2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
