; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gem = type { i64, i32 }

@link_up = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @gem_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gem*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.gem* @netdev_priv(%struct.net_device* %7)
  store %struct.gem* %8, %struct.gem** %6, align 8
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
  br label %46

20:                                               ; preds = %15
  %21 = load %struct.gem*, %struct.gem** %6, align 8
  %22 = getelementptr inbounds %struct.gem, %struct.gem* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %46

30:                                               ; preds = %20
  %31 = load %struct.gem*, %struct.gem** %6, align 8
  %32 = call i32 @gem_netif_stop(%struct.gem* %31)
  %33 = load %struct.gem*, %struct.gem** %6, align 8
  %34 = call i32 @gem_reinit_chip(%struct.gem* %33)
  %35 = load %struct.gem*, %struct.gem** %6, align 8
  %36 = getelementptr inbounds %struct.gem, %struct.gem* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @link_up, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.gem*, %struct.gem** %6, align 8
  %42 = call i32 @gem_set_link_modes(%struct.gem* %41)
  br label %43

43:                                               ; preds = %40, %30
  %44 = load %struct.gem*, %struct.gem** %6, align 8
  %45 = call i32 @gem_netif_start(%struct.gem* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %29, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gem_netif_stop(%struct.gem*) #1

declare dso_local i32 @gem_reinit_chip(%struct.gem*) #1

declare dso_local i32 @gem_set_link_modes(%struct.gem*) #1

declare dso_local i32 @gem_netif_start(%struct.gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
