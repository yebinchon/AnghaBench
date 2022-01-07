; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igbvf_adapter = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @igbvf_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_maybe_stop_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.igbvf_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.igbvf_adapter* %8, %struct.igbvf_adapter** %6, align 8
  %9 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %10 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @igbvf_desc_unused(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  %19 = call i32 (...) @smp_mb()
  %20 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @igbvf_desc_unused(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %16
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @netif_wake_queue(%struct.net_device* %30)
  %32 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %26, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igbvf_desc_unused(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
