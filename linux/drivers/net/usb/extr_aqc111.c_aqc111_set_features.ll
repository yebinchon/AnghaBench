; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { %struct.aqc111_data* }
%struct.aqc111_data = type { i32 }

@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_TXCOE_CTL = common dso_local global i32 0, align 4
@SFR_TXCOE_TCP = common dso_local global i32 0, align 4
@SFR_TXCOE_UDP = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@SFR_TXCOE_TCPV6 = common dso_local global i32 0, align 4
@SFR_TXCOE_UDPV6 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@SFR_RXCOE_CTL = common dso_local global i32 0, align 4
@SFR_RXCOE_IP = common dso_local global i32 0, align 4
@SFR_RXCOE_TCP = common dso_local global i32 0, align 4
@SFR_RXCOE_UDP = common dso_local global i32 0, align 4
@SFR_RXCOE_TCPV6 = common dso_local global i32 0, align 4
@SFR_RXCOE_UDPV6 = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@SFR_VLAN_ID_ADDRESS = common dso_local global i32 0, align 4
@SFR_VLAN_ID_DATA0 = common dso_local global i32 0, align 4
@SFR_VLAN_CONTROL_WE = common dso_local global i32 0, align 4
@SFR_VLAN_ID_CONTROL = common dso_local global i32 0, align 4
@SFR_VLAN_CONTROL_VFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @aqc111_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.aqc111_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.usbnet* @netdev_priv(%struct.net_device* %11)
  store %struct.usbnet* %12, %struct.usbnet** %5, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 0
  %15 = load %struct.aqc111_data*, %struct.aqc111_data** %14, align 8
  store %struct.aqc111_data* %15, %struct.aqc111_data** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = xor i32 %18, %19
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %27 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %28 = load i32, i32* @SFR_TXCOE_CTL, align 4
  %29 = call i32 @aqc111_read_cmd(%struct.usbnet* %26, i32 %27, i32 %28, i32 1, i32 1, i32* %9)
  %30 = load i32, i32* @SFR_TXCOE_TCP, align 4
  %31 = load i32, i32* @SFR_TXCOE_UDP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %36 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %37 = load i32, i32* @SFR_TXCOE_CTL, align 4
  %38 = call i32 @aqc111_write_cmd(%struct.usbnet* %35, i32 %36, i32 %37, i32 1, i32 1, i32* %9)
  br label %39

39:                                               ; preds = %25, %2
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %46 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %47 = load i32, i32* @SFR_TXCOE_CTL, align 4
  %48 = call i32 @aqc111_read_cmd(%struct.usbnet* %45, i32 %46, i32 %47, i32 1, i32 1, i32* %9)
  %49 = load i32, i32* @SFR_TXCOE_TCPV6, align 4
  %50 = load i32, i32* @SFR_TXCOE_UDPV6, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = xor i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %55 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %56 = load i32, i32* @SFR_TXCOE_CTL, align 4
  %57 = call i32 @aqc111_write_cmd(%struct.usbnet* %54, i32 %55, i32 %56, i32 1, i32 1, i32* %9)
  br label %58

58:                                               ; preds = %44, %39
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %106

63:                                               ; preds = %58
  %64 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %65 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %66 = load i32, i32* @SFR_RXCOE_CTL, align 4
  %67 = call i32 @aqc111_read_cmd(%struct.usbnet* %64, i32 %65, i32 %66, i32 1, i32 1, i32* %9)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %63
  %73 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %74 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @SFR_RXCOE_IP, align 4
  %76 = load i32, i32* @SFR_RXCOE_TCP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SFR_RXCOE_UDP, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SFR_RXCOE_TCPV6, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SFR_RXCOE_UDPV6, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %101

87:                                               ; preds = %63
  %88 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %89 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* @SFR_RXCOE_IP, align 4
  %91 = load i32, i32* @SFR_RXCOE_TCP, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @SFR_RXCOE_UDP, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @SFR_RXCOE_TCPV6, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SFR_RXCOE_UDPV6, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %87, %72
  %102 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %103 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %104 = load i32, i32* @SFR_RXCOE_CTL, align 4
  %105 = call i32 @aqc111_write_cmd(%struct.usbnet* %102, i32 %103, i32 %104, i32 1, i32 1, i32* %9)
  br label %106

106:                                              ; preds = %101, %58
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %164

111:                                              ; preds = %106
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %135, %116
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 256
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %9, align 4
  %122 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %123 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %124 = load i32, i32* @SFR_VLAN_ID_ADDRESS, align 4
  %125 = call i32 @aqc111_write_cmd(%struct.usbnet* %122, i32 %123, i32 %124, i32 1, i32 1, i32* %9)
  %126 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %127 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %128 = load i32, i32* @SFR_VLAN_ID_DATA0, align 4
  %129 = call i32 @aqc111_write16_cmd(%struct.usbnet* %126, i32 %127, i32 %128, i32 2, i32* %8)
  %130 = load i32, i32* @SFR_VLAN_CONTROL_WE, align 4
  store i32 %130, i32* %9, align 4
  %131 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %132 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %133 = load i32, i32* @SFR_VLAN_ID_CONTROL, align 4
  %134 = call i32 @aqc111_write_cmd(%struct.usbnet* %131, i32 %132, i32 %133, i32 1, i32 1, i32* %9)
  br label %135

135:                                              ; preds = %120
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %117

138:                                              ; preds = %117
  %139 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %140 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %141 = load i32, i32* @SFR_VLAN_ID_CONTROL, align 4
  %142 = call i32 @aqc111_read_cmd(%struct.usbnet* %139, i32 %140, i32 %141, i32 1, i32 1, i32* %9)
  %143 = load i32, i32* @SFR_VLAN_CONTROL_VFE, align 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %147 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %148 = load i32, i32* @SFR_VLAN_ID_CONTROL, align 4
  %149 = call i32 @aqc111_write_cmd(%struct.usbnet* %146, i32 %147, i32 %148, i32 1, i32 1, i32* %9)
  br label %163

150:                                              ; preds = %111
  %151 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %152 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %153 = load i32, i32* @SFR_VLAN_ID_CONTROL, align 4
  %154 = call i32 @aqc111_read_cmd(%struct.usbnet* %151, i32 %152, i32 %153, i32 1, i32 1, i32* %9)
  %155 = load i32, i32* @SFR_VLAN_CONTROL_VFE, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %9, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %9, align 4
  %159 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %160 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %161 = load i32, i32* @SFR_VLAN_ID_CONTROL, align 4
  %162 = call i32 @aqc111_write_cmd(%struct.usbnet* %159, i32 %160, i32 %161, i32 1, i32 1, i32* %9)
  br label %163

163:                                              ; preds = %150, %138
  br label %164

164:                                              ; preds = %163, %106
  ret i32 0
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @aqc111_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write16_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
