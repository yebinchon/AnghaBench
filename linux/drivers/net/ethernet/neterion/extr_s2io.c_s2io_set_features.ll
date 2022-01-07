; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s2io_nic = type { i32 }

@NETIF_F_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @s2io_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s2io_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %9)
  store %struct.s2io_nic* %10, %struct.s2io_nic** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %11, %14
  %16 = load i32, i32* @NETIF_F_LRO, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i64 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %26 = call i32 @s2io_stop_all_tx_queue(%struct.s2io_nic* %25)
  %27 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %28 = call i32 @s2io_card_down(%struct.s2io_nic* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %33 = call i32 @s2io_card_up(%struct.s2io_nic* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %38 = call i32 @s2io_reset(%struct.s2io_nic* %37)
  br label %42

39:                                               ; preds = %24
  %40 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %41 = call i32 @s2io_start_all_tx_queue(%struct.s2io_nic* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  br label %48

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 1, %47 ]
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @s2io_stop_all_tx_queue(%struct.s2io_nic*) #1

declare dso_local i32 @s2io_card_down(%struct.s2io_nic*) #1

declare dso_local i32 @s2io_card_up(%struct.s2io_nic*) #1

declare dso_local i32 @s2io_reset(%struct.s2io_nic*) #1

declare dso_local i32 @s2io_start_all_tx_queue(%struct.s2io_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
