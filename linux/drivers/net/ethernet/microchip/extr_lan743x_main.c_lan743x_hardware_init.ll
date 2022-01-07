; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_hardware_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_hardware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_tx*, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.lan743x_tx = type { i32, i64, %struct.lan743x_adapter* }
%struct.TYPE_6__ = type { i32, %struct.lan743x_adapter* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@INT_EN_CLR = common dso_local global i32 0, align 4
@LAN743X_USED_RX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*, %struct.pci_dev*)* @lan743x_hardware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_hardware_init(%struct.lan743x_adapter* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan743x_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.lan743x_tx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %9 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %18 = load i32, i32* @INT_EN_CLR, align 4
  %19 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %17, i32 %18, i32 -1)
  %20 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %20, i32 0, i32 2
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %24 = call i32 @lan743x_gpio_init(%struct.lan743x_adapter* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %97

29:                                               ; preds = %2
  %30 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %31 = call i32 @lan743x_mac_init(%struct.lan743x_adapter* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %29
  %37 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %38 = call i32 @lan743x_phy_init(%struct.lan743x_adapter* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %97

43:                                               ; preds = %36
  %44 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %45 = call i32 @lan743x_ptp_init(%struct.lan743x_adapter* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %97

50:                                               ; preds = %43
  %51 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %52 = call i32 @lan743x_rfe_update_mac_address(%struct.lan743x_adapter* %51)
  %53 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %54 = call i32 @lan743x_dmac_init(%struct.lan743x_adapter* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %97

59:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %81, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @LAN743X_USED_RX_CHANNELS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %66 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store %struct.lan743x_adapter* %65, %struct.lan743x_adapter** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 8
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %60

84:                                               ; preds = %60
  %85 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %85, i32 0, i32 0
  %87 = load %struct.lan743x_tx*, %struct.lan743x_tx** %86, align 8
  %88 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %87, i64 0
  store %struct.lan743x_tx* %88, %struct.lan743x_tx** %6, align 8
  %89 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %90 = load %struct.lan743x_tx*, %struct.lan743x_tx** %6, align 8
  %91 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %90, i32 0, i32 2
  store %struct.lan743x_adapter* %89, %struct.lan743x_adapter** %91, align 8
  %92 = load %struct.lan743x_tx*, %struct.lan743x_tx** %6, align 8
  %93 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.lan743x_tx*, %struct.lan743x_tx** %6, align 8
  %95 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %94, i32 0, i32 0
  %96 = call i32 @spin_lock_init(i32* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %84, %57, %48, %41, %34, %27
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lan743x_gpio_init(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_mac_init(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_phy_init(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_ptp_init(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_rfe_update_mac_address(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_dmac_init(%struct.lan743x_adapter*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
