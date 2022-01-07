; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32, i32, i32, i32, i32 }

@CAS_PHY_SERDES = common dso_local global i32 0, align 4
@CAS_RESET_ALL = common dso_local global i32 0, align 4
@CAS_RESET_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @cas_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cas*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.cas* @netdev_priv(%struct.net_device* %7)
  store %struct.cas* %8, %struct.cas** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @netif_running(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_device_present(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %45

20:                                               ; preds = %15
  %21 = load %struct.cas*, %struct.cas** %6, align 8
  %22 = getelementptr inbounds %struct.cas, %struct.cas* %21, i32 0, i32 2
  %23 = call i32 @atomic_inc(i32* %22)
  %24 = load %struct.cas*, %struct.cas** %6, align 8
  %25 = getelementptr inbounds %struct.cas, %struct.cas* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CAS_PHY_SERDES, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.cas*, %struct.cas** %6, align 8
  %32 = getelementptr inbounds %struct.cas, %struct.cas* %31, i32 0, i32 4
  %33 = call i32 @atomic_inc(i32* %32)
  br label %38

34:                                               ; preds = %20
  %35 = load %struct.cas*, %struct.cas** %6, align 8
  %36 = getelementptr inbounds %struct.cas, %struct.cas* %35, i32 0, i32 3
  %37 = call i32 @atomic_inc(i32* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.cas*, %struct.cas** %6, align 8
  %40 = getelementptr inbounds %struct.cas, %struct.cas* %39, i32 0, i32 1
  %41 = call i32 @schedule_work(i32* %40)
  %42 = load %struct.cas*, %struct.cas** %6, align 8
  %43 = getelementptr inbounds %struct.cas, %struct.cas* %42, i32 0, i32 1
  %44 = call i32 @flush_work(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
