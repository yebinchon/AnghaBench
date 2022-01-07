; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.velocity_info = type { i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @velocity_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.velocity_info*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %9)
  store %struct.velocity_info* %10, %struct.velocity_info** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %16 = load i32, i32* @PCI_D0, align 4
  %17 = call i32 @velocity_set_power_state(%struct.velocity_info* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %25 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %18, %18, %18
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @velocity_mii_ioctl(%struct.net_device* %21, %struct.ifreq* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @netif_running(%struct.net_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %34 = load i32, i32* @PCI_D3hot, align 4
  %35 = call i32 @velocity_set_power_state(%struct.velocity_info* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @velocity_set_power_state(%struct.velocity_info*, i32) #1

declare dso_local i32 @velocity_mii_ioctl(%struct.net_device*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
