; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mvpp2_port = type { i32 }

@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mvpp2_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = xor i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %12)
  store %struct.mvpp2_port* %13, %struct.mvpp2_port** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %25 = call i32 @mvpp2_prs_vid_enable_filtering(%struct.mvpp2_port* %24)
  br label %31

26:                                               ; preds = %18
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %28 = call i32 @mvpp2_prs_vid_remove_all(%struct.mvpp2_port* %27)
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %30 = call i32 @mvpp2_prs_vid_disable_filtering(%struct.mvpp2_port* %29)
  br label %31

31:                                               ; preds = %26, %23
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NETIF_F_RXHASH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NETIF_F_RXHASH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %44 = call i32 @mvpp22_port_rss_enable(%struct.mvpp2_port* %43)
  br label %48

45:                                               ; preds = %37
  %46 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %47 = call i32 @mvpp22_port_rss_disable(%struct.mvpp2_port* %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %32
  ret i32 0
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvpp2_prs_vid_enable_filtering(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_prs_vid_remove_all(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_prs_vid_disable_filtering(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_port_rss_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_port_rss_disable(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
