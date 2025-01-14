; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@IGB_LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @igb_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.igb_adapter* %9, %struct.igb_adapter** %6, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 1
  store %struct.e1000_hw* %11, %struct.e1000_hw** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %31 [
    i32 131, label %13
    i32 128, label %16
    i32 129, label %19
    i32 130, label %22
  ]

13:                                               ; preds = %2
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %15 = call i32 @igb_blink_led(%struct.e1000_hw* %14)
  store i32 2, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %18 = call i32 @igb_blink_led(%struct.e1000_hw* %17)
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %21 = call i32 @igb_led_off(%struct.e1000_hw* %20)
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %24 = call i32 @igb_led_off(%struct.e1000_hw* %23)
  %25 = load i32, i32* @IGB_LED_ON, align 4
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %30 = call i32 @igb_cleanup_led(%struct.e1000_hw* %29)
  br label %31

31:                                               ; preds = %2, %22, %19, %16
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igb_blink_led(%struct.e1000_hw*) #1

declare dso_local i32 @igb_led_off(%struct.e1000_hw*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @igb_cleanup_led(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
