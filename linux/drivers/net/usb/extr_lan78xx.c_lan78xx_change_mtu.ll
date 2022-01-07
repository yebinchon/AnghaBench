; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.lan78xx_net = type { i32, i32, i32, i32, i32, i32 }

@EDOM = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @lan78xx_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lan78xx_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %11)
  store %struct.lan78xx_net* %12, %struct.lan78xx_net** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %19 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %22 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %26 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = srem i32 %24, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EDOM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %85

33:                                               ; preds = %2
  %34 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @lan78xx_set_rx_max_frame_length(%struct.lan78xx_net* %34, i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %51 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %53 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %33
  %58 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %59 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %62 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %64 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %57
  %69 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %70 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @netif_running(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %76 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %77 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %76, i32 0, i32 4
  %78 = call i32 @unlink_urbs(%struct.lan78xx_net* %75, i32* %77)
  %79 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %80 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %79, i32 0, i32 3
  %81 = call i32 @tasklet_schedule(i32* %80)
  br label %82

82:                                               ; preds = %74, %68
  br label %83

83:                                               ; preds = %82, %57
  br label %84

84:                                               ; preds = %83, %33
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %30
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lan78xx_set_rx_max_frame_length(%struct.lan78xx_net*, i64) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @unlink_urbs(%struct.lan78xx_net*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
