; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_configure_csum_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_configure_csum_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@SFR_RXCOE_IP = common dso_local global i32 0, align 4
@SFR_RXCOE_TCP = common dso_local global i32 0, align 4
@SFR_RXCOE_UDP = common dso_local global i32 0, align 4
@SFR_RXCOE_TCPV6 = common dso_local global i32 0, align 4
@SFR_RXCOE_UDPV6 = common dso_local global i32 0, align 4
@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_RXCOE_CTL = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@SFR_TXCOE_IP = common dso_local global i32 0, align 4
@SFR_TXCOE_TCP = common dso_local global i32 0, align 4
@SFR_TXCOE_UDP = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@SFR_TXCOE_TCPV6 = common dso_local global i32 0, align 4
@SFR_TXCOE_UDPV6 = common dso_local global i32 0, align 4
@SFR_TXCOE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @aqc111_configure_csum_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aqc111_configure_csum_offload(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @SFR_RXCOE_IP, align 4
  %14 = load i32, i32* @SFR_RXCOE_TCP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SFR_RXCOE_UDP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SFR_RXCOE_TCPV6, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SFR_RXCOE_UDPV6, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %12, %1
  %25 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %26 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %27 = load i32, i32* @SFR_RXCOE_CTL, align 4
  %28 = call i32 @aqc111_write_cmd(%struct.usbnet* %25, i32 %26, i32 %27, i32 1, i32 1, i32* %3)
  store i32 0, i32* %3, align 4
  %29 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %30 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load i32, i32* @SFR_TXCOE_IP, align 4
  %39 = load i32, i32* @SFR_TXCOE_TCP, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SFR_TXCOE_UDP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %24
  %46 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32, i32* @SFR_TXCOE_TCPV6, align 4
  %56 = load i32, i32* @SFR_TXCOE_UDPV6, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %45
  %61 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %62 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %63 = load i32, i32* @SFR_TXCOE_CTL, align 4
  %64 = call i32 @aqc111_write_cmd(%struct.usbnet* %61, i32 %62, i32 %63, i32 1, i32 1, i32* %3)
  ret void
}

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
