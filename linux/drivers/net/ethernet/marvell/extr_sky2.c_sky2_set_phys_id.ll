; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i32 }

@MO_LED_NORM = common dso_local global i32 0, align 4
@MO_LED_ON = common dso_local global i32 0, align 4
@MO_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @sky2_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sky2_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %7)
  store %struct.sky2_port* %8, %struct.sky2_port** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %23 [
    i32 131, label %10
    i32 130, label %11
    i32 128, label %15
    i32 129, label %19
  ]

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %13 = load i32, i32* @MO_LED_NORM, align 4
  %14 = call i32 @sky2_led(%struct.sky2_port* %12, i32 %13)
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %17 = load i32, i32* @MO_LED_ON, align 4
  %18 = call i32 @sky2_led(%struct.sky2_port* %16, i32 %17)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %21 = load i32, i32* @MO_LED_OFF, align 4
  %22 = call i32 @sky2_led(%struct.sky2_port* %20, i32 %21)
  br label %23

23:                                               ; preds = %2, %19, %15, %11
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_led(%struct.sky2_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
