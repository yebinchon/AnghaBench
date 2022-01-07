; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64 }
%struct.fec_enet_private = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fec_enet_private* %7, %struct.fec_enet_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_device_present(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %20 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  br label %109

21:                                               ; preds = %14
  %22 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %84

26:                                               ; preds = %21
  %27 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %28 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %36 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %39 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %47 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %50 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %56 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %64 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %51
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %70 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %69, i32 0, i32 3
  %71 = call i32 @napi_disable(i32* %70)
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = call i32 @netif_tx_lock_bh(%struct.net_device* %72)
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @fec_restart(%struct.net_device* %74)
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %76)
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i32 @netif_tx_unlock_bh(%struct.net_device* %78)
  %80 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %81 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %80, i32 0, i32 3
  %82 = call i32 @napi_enable(i32* %81)
  br label %83

83:                                               ; preds = %68, %65
  br label %108

84:                                               ; preds = %21
  %85 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %86 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %91 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %90, i32 0, i32 3
  %92 = call i32 @napi_disable(i32* %91)
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = call i32 @netif_tx_lock_bh(%struct.net_device* %93)
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = call i32 @fec_stop(%struct.net_device* %95)
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = call i32 @netif_tx_unlock_bh(%struct.net_device* %97)
  %99 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %100 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %99, i32 0, i32 3
  %101 = call i32 @napi_enable(i32* %100)
  %102 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %103 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %106 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  store i32 1, i32* %5, align 4
  br label %107

107:                                              ; preds = %89, %84
  br label %108

108:                                              ; preds = %107, %83
  br label %109

109:                                              ; preds = %108, %18
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %114 = call i32 @phy_print_status(%struct.phy_device* %113)
  br label %115

115:                                              ; preds = %112, %109
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @fec_restart(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @fec_stop(%struct.net_device*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
