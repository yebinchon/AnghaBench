; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.niu = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @niu_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.niu*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.niu* @netdev_priv(%struct.net_device* %7)
  store %struct.niu* %8, %struct.niu** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i32 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %34 [
    i32 131, label %17
    i32 128, label %22
    i32 129, label %25
    i32 130, label %28
  ]

17:                                               ; preds = %15
  %18 = load %struct.niu*, %struct.niu** %6, align 8
  %19 = call i32 @niu_led_state_save(%struct.niu* %18)
  %20 = load %struct.niu*, %struct.niu** %6, align 8
  %21 = getelementptr inbounds %struct.niu, %struct.niu* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 1, i32* %3, align 4
  br label %35

22:                                               ; preds = %15
  %23 = load %struct.niu*, %struct.niu** %6, align 8
  %24 = call i32 @niu_force_led(%struct.niu* %23, i32 1)
  br label %34

25:                                               ; preds = %15
  %26 = load %struct.niu*, %struct.niu** %6, align 8
  %27 = call i32 @niu_force_led(%struct.niu* %26, i32 0)
  br label %34

28:                                               ; preds = %15
  %29 = load %struct.niu*, %struct.niu** %6, align 8
  %30 = load %struct.niu*, %struct.niu** %6, align 8
  %31 = getelementptr inbounds %struct.niu, %struct.niu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @niu_led_state_restore(%struct.niu* %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %15, %25, %22
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %17, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @niu_led_state_save(%struct.niu*) #1

declare dso_local i32 @niu_force_led(%struct.niu*, i32) #1

declare dso_local i32 @niu_led_state_restore(%struct.niu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
