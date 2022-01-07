; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_adapter = type { i32, %struct.emac_irq }
%struct.emac_irq = type { i32 }

@emac_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"emac-core0\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"could not request emac-core0 irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"error allocating rx/tx rings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @emac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.emac_adapter*, align 8
  %5 = alloca %struct.emac_irq*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.emac_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.emac_adapter* %8, %struct.emac_adapter** %4, align 8
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %9, i32 0, i32 1
  store %struct.emac_irq* %10, %struct.emac_irq** %5, align 8
  %11 = load %struct.emac_irq*, %struct.emac_irq** %5, align 8
  %12 = getelementptr inbounds %struct.emac_irq, %struct.emac_irq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @emac_isr, align 4
  %15 = load %struct.emac_irq*, %struct.emac_irq** %5, align 8
  %16 = call i32 @request_irq(i32 %13, i32 %14, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.emac_irq* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netdev_err(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %72

25:                                               ; preds = %1
  %26 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %27 = call i32 @emac_mac_rx_tx_rings_alloc_all(%struct.emac_adapter* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netdev_err(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.emac_irq*, %struct.emac_irq** %5, align 8
  %36 = getelementptr inbounds %struct.emac_irq, %struct.emac_irq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.emac_irq*, %struct.emac_irq** %5, align 8
  %39 = call i32 @free_irq(i32 %37, %struct.emac_irq* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %72

41:                                               ; preds = %25
  %42 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %43 = call i32 @emac_sgmii_open(%struct.emac_adapter* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %48 = call i32 @emac_mac_rx_tx_rings_free_all(%struct.emac_adapter* %47)
  %49 = load %struct.emac_irq*, %struct.emac_irq** %5, align 8
  %50 = getelementptr inbounds %struct.emac_irq, %struct.emac_irq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.emac_irq*, %struct.emac_irq** %5, align 8
  %53 = call i32 @free_irq(i32 %51, %struct.emac_irq* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %72

55:                                               ; preds = %41
  %56 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %57 = call i32 @emac_mac_up(%struct.emac_adapter* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %62 = call i32 @emac_mac_rx_tx_rings_free_all(%struct.emac_adapter* %61)
  %63 = load %struct.emac_irq*, %struct.emac_irq** %5, align 8
  %64 = getelementptr inbounds %struct.emac_irq, %struct.emac_irq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.emac_irq*, %struct.emac_irq** %5, align 8
  %67 = call i32 @free_irq(i32 %65, %struct.emac_irq* %66)
  %68 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %69 = call i32 @emac_sgmii_close(%struct.emac_adapter* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %60, %46, %30, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.emac_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.emac_irq*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @emac_mac_rx_tx_rings_alloc_all(%struct.emac_adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.emac_irq*) #1

declare dso_local i32 @emac_sgmii_open(%struct.emac_adapter*) #1

declare dso_local i32 @emac_mac_rx_tx_rings_free_all(%struct.emac_adapter*) #1

declare dso_local i32 @emac_mac_up(%struct.emac_adapter*) #1

declare dso_local i32 @emac_sgmii_close(%struct.emac_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
