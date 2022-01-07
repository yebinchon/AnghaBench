; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lan78xx_net = type { i64* }
%struct.lan78xx_priv = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @lan78xx_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lan78xx_net*, align 8
  %8 = alloca %struct.lan78xx_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %11)
  store %struct.lan78xx_net* %12, %struct.lan78xx_net** %7, align 8
  %13 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %14 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lan78xx_priv*
  store %struct.lan78xx_priv* %18, %struct.lan78xx_priv** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 5
  %21 = and i32 %20, 127
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 31
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %8, align 8
  %27 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  %34 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %8, align 8
  %35 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %34, i32 0, i32 1
  %36 = call i32 @schedule_work(i32* %35)
  ret i32 0
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
