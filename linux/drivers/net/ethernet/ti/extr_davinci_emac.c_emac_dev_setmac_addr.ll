; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_dev_setmac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_dev_setmac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.emac_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EMAC_DEF_RX_CH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DaVinci EMAC: emac_dev_setmac_addr %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @emac_dev_setmac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_dev_setmac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.emac_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.emac_priv* %10, %struct.emac_priv** %6, align 8
  %11 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %12 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.sockaddr*
  store %struct.sockaddr* %16, %struct.sockaddr** %8, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @is_valid_ether_addr(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EADDRNOTAVAIL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %2
  %26 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %27 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %28, i32 %31, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32 %38, i32 %41, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i64 @netif_running(%struct.net_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %25
  %50 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %51 = load i32, i32* @EMAC_DEF_RX_CH, align 4
  %52 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %53 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @emac_setmac(%struct.emac_priv* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %25
  %57 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %58 = call i64 @netif_msg_drv(%struct.emac_priv* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %63 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_notice(%struct.device* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @emac_setmac(%struct.emac_priv*, i32, i32) #1

declare dso_local i64 @netif_msg_drv(%struct.emac_priv*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
