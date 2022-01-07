; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ax88179_data = type { i64, i64 }
%struct.ethtool_eee = type { i64 }

@AX_ACCESS_MAC = common dso_local global i32 0, align 4
@AX_PHYPWR_RSTCTL = common dso_local global i32 0, align 4
@AX_PHYPWR_RSTCTL_IPRL = common dso_local global i32 0, align 4
@AX_CLK_SELECT_ACS = common dso_local global i32 0, align 4
@AX_CLK_SELECT_BCS = common dso_local global i32 0, align 4
@AX_CLK_SELECT = common dso_local global i32 0, align 4
@AX_NODE_ID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AX88179_BULKIN_SIZE = common dso_local global i32* null, align 8
@AX_RX_BULKIN_QCTRL = common dso_local global i32 0, align 4
@AX_PAUSE_WATERLVL_LOW = common dso_local global i32 0, align 4
@AX_PAUSE_WATERLVL_HIGH = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@AX_RXCOE_IP = common dso_local global i32 0, align 4
@AX_RXCOE_TCP = common dso_local global i32 0, align 4
@AX_RXCOE_UDP = common dso_local global i32 0, align 4
@AX_RXCOE_TCPV6 = common dso_local global i32 0, align 4
@AX_RXCOE_UDPV6 = common dso_local global i32 0, align 4
@AX_RXCOE_CTL = common dso_local global i32 0, align 4
@AX_TXCOE_IP = common dso_local global i32 0, align 4
@AX_TXCOE_TCP = common dso_local global i32 0, align 4
@AX_TXCOE_UDP = common dso_local global i32 0, align 4
@AX_TXCOE_TCPV6 = common dso_local global i32 0, align 4
@AX_TXCOE_UDPV6 = common dso_local global i32 0, align 4
@AX_TXCOE_CTL = common dso_local global i32 0, align 4
@AX_RX_CTL_DROPCRCERR = common dso_local global i32 0, align 4
@AX_RX_CTL_IPE = common dso_local global i32 0, align 4
@AX_RX_CTL_START = common dso_local global i32 0, align 4
@AX_RX_CTL_AP = common dso_local global i32 0, align 4
@AX_RX_CTL_AMALL = common dso_local global i32 0, align 4
@AX_RX_CTL_AB = common dso_local global i32 0, align 4
@AX_RX_CTL = common dso_local global i32 0, align 4
@AX_MONITOR_MODE_PMETYPE = common dso_local global i32 0, align 4
@AX_MONITOR_MODE_PMEPOL = common dso_local global i32 0, align 4
@AX_MONITOR_MODE_RWMP = common dso_local global i32 0, align 4
@AX_MONITOR_MOD = common dso_local global i32 0, align 4
@AX_MEDIUM_RECEIVE_EN = common dso_local global i32 0, align 4
@AX_MEDIUM_TXFLOW_CTRLEN = common dso_local global i32 0, align 4
@AX_MEDIUM_RXFLOW_CTRLEN = common dso_local global i32 0, align 4
@AX_MEDIUM_FULL_DUPLEX = common dso_local global i32 0, align 4
@AX_MEDIUM_GIGAMODE = common dso_local global i32 0, align 4
@AX_MEDIUM_STATUS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88179_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ax88179_data*, align 8
  %7 = alloca %struct.ethtool_eee, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ax88179_data*
  store %struct.ax88179_data* %11, %struct.ax88179_data** %6, align 8
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32* %12, i32** %4, align 8
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %16 = load i32, i32* @AX_ACCESS_MAC, align 4
  %17 = load i32, i32* @AX_PHYPWR_RSTCTL, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ax88179_write_cmd(%struct.usbnet* %15, i32 %16, i32 %17, i32 2, i32 2, i32* %18)
  %20 = load i32, i32* @AX_PHYPWR_RSTCTL_IPRL, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %23 = load i32, i32* @AX_ACCESS_MAC, align 4
  %24 = load i32, i32* @AX_PHYPWR_RSTCTL, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @ax88179_write_cmd(%struct.usbnet* %22, i32 %23, i32 %24, i32 2, i32 2, i32* %25)
  %27 = call i32 @msleep(i32 200)
  %28 = load i32, i32* @AX_CLK_SELECT_ACS, align 4
  %29 = load i32, i32* @AX_CLK_SELECT_BCS, align 4
  %30 = or i32 %28, %29
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %33 = load i32, i32* @AX_ACCESS_MAC, align 4
  %34 = load i32, i32* @AX_CLK_SELECT, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ax88179_write_cmd(%struct.usbnet* %32, i32 %33, i32 %34, i32 1, i32 1, i32* %35)
  %37 = call i32 @msleep(i32 100)
  %38 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %39 = call i32 @ax88179_auto_detach(%struct.usbnet* %38, i32 0)
  %40 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %41 = load i32, i32* @AX_ACCESS_MAC, align 4
  %42 = load i32, i32* @AX_NODE_ID, align 4
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ax88179_read_cmd(%struct.usbnet* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** @AX88179_BULKIN_SIZE, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @memcpy(i32* %51, i32* %53, i32 5)
  %55 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %56 = load i32, i32* @AX_ACCESS_MAC, align 4
  %57 = load i32, i32* @AX_RX_BULKIN_QCTRL, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @ax88179_write_cmd(%struct.usbnet* %55, i32 %56, i32 %57, i32 5, i32 5, i32* %58)
  %60 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  store i32 20480, i32* %61, align 8
  %62 = load i32*, i32** %5, align 8
  store i32 52, i32* %62, align 4
  %63 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %64 = load i32, i32* @AX_ACCESS_MAC, align 4
  %65 = load i32, i32* @AX_PAUSE_WATERLVL_LOW, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @ax88179_write_cmd(%struct.usbnet* %63, i32 %64, i32 %65, i32 1, i32 1, i32* %66)
  %68 = load i32*, i32** %5, align 8
  store i32 82, i32* %68, align 4
  %69 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %70 = load i32, i32* @AX_ACCESS_MAC, align 4
  %71 = load i32, i32* @AX_PAUSE_WATERLVL_HIGH, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ax88179_write_cmd(%struct.usbnet* %69, i32 %70, i32 %71, i32 1, i32 1, i32* %72)
  %74 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %75 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %80 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %86 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %91 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @AX_RXCOE_IP, align 4
  %97 = load i32, i32* @AX_RXCOE_TCP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @AX_RXCOE_UDP, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @AX_RXCOE_TCPV6, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @AX_RXCOE_UDPV6, align 4
  %104 = or i32 %102, %103
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %107 = load i32, i32* @AX_ACCESS_MAC, align 4
  %108 = load i32, i32* @AX_RXCOE_CTL, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @ax88179_write_cmd(%struct.usbnet* %106, i32 %107, i32 %108, i32 1, i32 1, i32* %109)
  %111 = load i32, i32* @AX_TXCOE_IP, align 4
  %112 = load i32, i32* @AX_TXCOE_TCP, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @AX_TXCOE_UDP, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @AX_TXCOE_TCPV6, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @AX_TXCOE_UDPV6, align 4
  %119 = or i32 %117, %118
  %120 = load i32*, i32** %5, align 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %122 = load i32, i32* @AX_ACCESS_MAC, align 4
  %123 = load i32, i32* @AX_TXCOE_CTL, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @ax88179_write_cmd(%struct.usbnet* %121, i32 %122, i32 %123, i32 1, i32 1, i32* %124)
  %126 = load i32, i32* @AX_RX_CTL_DROPCRCERR, align 4
  %127 = load i32, i32* @AX_RX_CTL_IPE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @AX_RX_CTL_START, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @AX_RX_CTL_AP, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @AX_RX_CTL_AMALL, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @AX_RX_CTL_AB, align 4
  %136 = or i32 %134, %135
  %137 = load i32*, i32** %4, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %139 = load i32, i32* @AX_ACCESS_MAC, align 4
  %140 = load i32, i32* @AX_RX_CTL, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @ax88179_write_cmd(%struct.usbnet* %138, i32 %139, i32 %140, i32 2, i32 2, i32* %141)
  %143 = load i32, i32* @AX_MONITOR_MODE_PMETYPE, align 4
  %144 = load i32, i32* @AX_MONITOR_MODE_PMEPOL, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @AX_MONITOR_MODE_RWMP, align 4
  %147 = or i32 %145, %146
  %148 = load i32*, i32** %5, align 8
  store i32 %147, i32* %148, align 4
  %149 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %150 = load i32, i32* @AX_ACCESS_MAC, align 4
  %151 = load i32, i32* @AX_MONITOR_MOD, align 4
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @ax88179_write_cmd(%struct.usbnet* %149, i32 %150, i32 %151, i32 1, i32 1, i32* %152)
  %154 = load i32, i32* @AX_MEDIUM_RECEIVE_EN, align 4
  %155 = load i32, i32* @AX_MEDIUM_TXFLOW_CTRLEN, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @AX_MEDIUM_RXFLOW_CTRLEN, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @AX_MEDIUM_FULL_DUPLEX, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @AX_MEDIUM_GIGAMODE, align 4
  %162 = or i32 %160, %161
  %163 = load i32*, i32** %4, align 8
  store i32 %162, i32* %163, align 4
  %164 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %165 = load i32, i32* @AX_ACCESS_MAC, align 4
  %166 = load i32, i32* @AX_MEDIUM_STATUS_MODE, align 4
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 @ax88179_write_cmd(%struct.usbnet* %164, i32 %165, i32 %166, i32 2, i32 2, i32* %167)
  %169 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %170 = call i32 @ax88179_led_setting(%struct.usbnet* %169)
  %171 = load %struct.ax88179_data*, %struct.ax88179_data** %6, align 8
  %172 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load %struct.ax88179_data*, %struct.ax88179_data** %6, align 8
  %174 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  %175 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %176 = call i32 @ax88179_disable_eee(%struct.usbnet* %175)
  %177 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %178 = call i32 @ax88179_ethtool_get_eee(%struct.usbnet* %177, %struct.ethtool_eee* %7)
  %179 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %7, i32 0, i32 0
  store i64 0, i64* %179, align 8
  %180 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %181 = call i32 @ax88179_ethtool_set_eee(%struct.usbnet* %180, %struct.ethtool_eee* %7)
  %182 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %183 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %182, i32 0, i32 1
  %184 = call i32 @mii_nway_restart(i32* %183)
  %185 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %186 = call i32 @usbnet_link_change(%struct.usbnet* %185, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @ax88179_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ax88179_auto_detach(%struct.usbnet*, i32) #1

declare dso_local i32 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ax88179_led_setting(%struct.usbnet*) #1

declare dso_local i32 @ax88179_disable_eee(%struct.usbnet*) #1

declare dso_local i32 @ax88179_ethtool_get_eee(%struct.usbnet*, %struct.ethtool_eee*) #1

declare dso_local i32 @ax88179_ethtool_set_eee(%struct.usbnet*, %struct.ethtool_eee*) #1

declare dso_local i32 @mii_nway_restart(i32*) #1

declare dso_local i32 @usbnet_link_change(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
