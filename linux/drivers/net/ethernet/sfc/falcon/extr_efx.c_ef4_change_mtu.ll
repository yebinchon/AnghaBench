; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ef4_nic = type { i32, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"changing MTU to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ef4_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ef4_nic*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %8)
  store %struct.ef4_nic* %9, %struct.ef4_nic** %6, align 8
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %11 = call i32 @ef4_check_disabled(%struct.ef4_nic* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %18 = load i32, i32* @drv, align 4
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %20 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @netif_dbg(%struct.ef4_nic* %17, i32 %18, i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %25 = call i32 @ef4_device_detach_sync(%struct.ef4_nic* %24)
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %27 = call i32 @ef4_stop_all(%struct.ef4_nic* %26)
  %28 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %29 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %35 = call i32 @ef4_mac_reconfigure(%struct.ef4_nic* %34)
  %36 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %37 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %40 = call i32 @ef4_start_all(%struct.ef4_nic* %39)
  %41 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %42 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netif_device_attach(i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %16, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ef4_check_disabled(%struct.ef4_nic*) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @ef4_device_detach_sync(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_stop_all(%struct.ef4_nic*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ef4_mac_reconfigure(%struct.ef4_nic*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ef4_start_all(%struct.ef4_nic*) #1

declare dso_local i32 @netif_device_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
