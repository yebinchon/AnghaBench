; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }

@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@AX_ACCESS_MAC = common dso_local global i32 0, align 4
@AX_TXCOE_CTL = common dso_local global i32 0, align 4
@AX_TXCOE_TCP = common dso_local global i32 0, align 4
@AX_TXCOE_UDP = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@AX_TXCOE_TCPV6 = common dso_local global i32 0, align 4
@AX_TXCOE_UDPV6 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@AX_RXCOE_CTL = common dso_local global i32 0, align 4
@AX_RXCOE_IP = common dso_local global i32 0, align 4
@AX_RXCOE_TCP = common dso_local global i32 0, align 4
@AX_RXCOE_UDP = common dso_local global i32 0, align 4
@AX_RXCOE_TCPV6 = common dso_local global i32 0, align 4
@AX_RXCOE_UDPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ax88179_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.usbnet* @netdev_priv(%struct.net_device* %8)
  store %struct.usbnet* %9, %struct.usbnet** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = xor i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %21 = load i32, i32* @AX_ACCESS_MAC, align 4
  %22 = load i32, i32* @AX_TXCOE_CTL, align 4
  %23 = call i32 @ax88179_read_cmd(%struct.usbnet* %20, i32 %21, i32 %22, i32 1, i32 1, i32* %5)
  %24 = load i32, i32* @AX_TXCOE_TCP, align 4
  %25 = load i32, i32* @AX_TXCOE_UDP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = xor i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %30 = load i32, i32* @AX_ACCESS_MAC, align 4
  %31 = load i32, i32* @AX_TXCOE_CTL, align 4
  %32 = call i32 @ax88179_write_cmd(%struct.usbnet* %29, i32 %30, i32 %31, i32 1, i32 1, i32* %5)
  br label %33

33:                                               ; preds = %19, %2
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %40 = load i32, i32* @AX_ACCESS_MAC, align 4
  %41 = load i32, i32* @AX_TXCOE_CTL, align 4
  %42 = call i32 @ax88179_read_cmd(%struct.usbnet* %39, i32 %40, i32 %41, i32 1, i32 1, i32* %5)
  %43 = load i32, i32* @AX_TXCOE_TCPV6, align 4
  %44 = load i32, i32* @AX_TXCOE_UDPV6, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %49 = load i32, i32* @AX_ACCESS_MAC, align 4
  %50 = load i32, i32* @AX_TXCOE_CTL, align 4
  %51 = call i32 @ax88179_write_cmd(%struct.usbnet* %48, i32 %49, i32 %50, i32 1, i32 1, i32* %5)
  br label %52

52:                                               ; preds = %38, %33
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %59 = load i32, i32* @AX_ACCESS_MAC, align 4
  %60 = load i32, i32* @AX_RXCOE_CTL, align 4
  %61 = call i32 @ax88179_read_cmd(%struct.usbnet* %58, i32 %59, i32 %60, i32 1, i32 1, i32* %5)
  %62 = load i32, i32* @AX_RXCOE_IP, align 4
  %63 = load i32, i32* @AX_RXCOE_TCP, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @AX_RXCOE_UDP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @AX_RXCOE_TCPV6, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @AX_RXCOE_UDPV6, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = xor i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %74 = load i32, i32* @AX_ACCESS_MAC, align 4
  %75 = load i32, i32* @AX_RXCOE_CTL, align 4
  %76 = call i32 @ax88179_write_cmd(%struct.usbnet* %73, i32 %74, i32 %75, i32 1, i32 1, i32* %5)
  br label %77

77:                                               ; preds = %57, %52
  ret i32 0
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ax88179_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
