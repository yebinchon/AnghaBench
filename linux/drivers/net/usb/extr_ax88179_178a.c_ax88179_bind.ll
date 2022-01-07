; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.usb_interface = type { i32 }
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
@ax88179_netdev_ops = common dso_local global i32 0, align 4
@ax88179_ethtool_ops = common dso_local global i32 0, align 4
@ax88179_mdio_read = common dso_local global i32 0, align 4
@ax88179_mdio_write = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @ax88179_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ax88179_data*, align 8
  %9 = alloca %struct.ethtool_eee, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ax88179_data*
  store %struct.ax88179_data* %13, %struct.ax88179_data** %8, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call i32 @usbnet_get_endpoints(%struct.usbnet* %14, %struct.usb_interface* %15)
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32* %17, i32** %6, align 8
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32* %18, i32** %7, align 8
  %19 = load %struct.ax88179_data*, %struct.ax88179_data** %8, align 8
  %20 = call i32 @memset(%struct.ax88179_data* %19, i32 0, i32 16)
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = load i32, i32* @AX_ACCESS_MAC, align 4
  %24 = load i32, i32* @AX_PHYPWR_RSTCTL, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ax88179_write_cmd(%struct.usbnet* %22, i32 %23, i32 %24, i32 2, i32 2, i32* %25)
  %27 = load i32, i32* @AX_PHYPWR_RSTCTL_IPRL, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %30 = load i32, i32* @AX_ACCESS_MAC, align 4
  %31 = load i32, i32* @AX_PHYPWR_RSTCTL, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @ax88179_write_cmd(%struct.usbnet* %29, i32 %30, i32 %31, i32 2, i32 2, i32* %32)
  %34 = call i32 @msleep(i32 200)
  %35 = load i32, i32* @AX_CLK_SELECT_ACS, align 4
  %36 = load i32, i32* @AX_CLK_SELECT_BCS, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %40 = load i32, i32* @AX_ACCESS_MAC, align 4
  %41 = load i32, i32* @AX_CLK_SELECT, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @ax88179_write_cmd(%struct.usbnet* %39, i32 %40, i32 %41, i32 1, i32 1, i32* %42)
  %44 = call i32 @msleep(i32 100)
  %45 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %46 = load i32, i32* @AX_ACCESS_MAC, align 4
  %47 = load i32, i32* @AX_NODE_ID, align 4
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %51 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ax88179_read_cmd(%struct.usbnet* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32* %54)
  %56 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %57 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @memcpy(i32* %60, i32* %65, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** @AX88179_BULKIN_SIZE, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 @memcpy(i32* %68, i32* %70, i32 5)
  %72 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %73 = load i32, i32* @AX_ACCESS_MAC, align 4
  %74 = load i32, i32* @AX_RX_BULKIN_QCTRL, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @ax88179_write_cmd(%struct.usbnet* %72, i32 %73, i32 %74, i32 5, i32 5, i32* %75)
  %77 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %78 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %77, i32 0, i32 0
  store i32 20480, i32* %78, align 8
  %79 = load i32*, i32** %7, align 8
  store i32 52, i32* %79, align 4
  %80 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %81 = load i32, i32* @AX_ACCESS_MAC, align 4
  %82 = load i32, i32* @AX_PAUSE_WATERLVL_LOW, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @ax88179_write_cmd(%struct.usbnet* %80, i32 %81, i32 %82, i32 1, i32 1, i32* %83)
  %85 = load i32*, i32** %7, align 8
  store i32 82, i32* %85, align 4
  %86 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %87 = load i32, i32* @AX_ACCESS_MAC, align 4
  %88 = load i32, i32* @AX_PAUSE_WATERLVL_HIGH, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @ax88179_write_cmd(%struct.usbnet* %86, i32 %87, i32 %88, i32 1, i32 1, i32* %89)
  %91 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %92 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 6
  store i32* @ax88179_netdev_ops, i32** %94, align 8
  %95 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %96 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  store i32* @ax88179_ethtool_ops, i32** %98, align 8
  %99 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %100 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 8, i32* %102, align 8
  %103 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %104 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32 4088, i32* %106, align 4
  %107 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %108 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %111 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %112, align 8
  %113 = load i32, i32* @ax88179_mdio_read, align 4
  %114 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %115 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 5
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @ax88179_mdio_write, align 4
  %118 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %119 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  store i32 %117, i32* %120, align 8
  %121 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %122 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 255, i32* %123, align 8
  %124 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %125 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 255, i32* %126, align 4
  %127 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %128 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i32 3, i32* %129, align 8
  %130 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %131 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  store i32 1, i32* %132, align 4
  %133 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %134 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %139 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %138, i32 0, i32 2
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %137
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %145 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %150 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %149, i32 0, i32 2
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %148
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @AX_RXCOE_IP, align 4
  %156 = load i32, i32* @AX_RXCOE_TCP, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @AX_RXCOE_UDP, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @AX_RXCOE_TCPV6, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @AX_RXCOE_UDPV6, align 4
  %163 = or i32 %161, %162
  %164 = load i32*, i32** %7, align 8
  store i32 %163, i32* %164, align 4
  %165 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %166 = load i32, i32* @AX_ACCESS_MAC, align 4
  %167 = load i32, i32* @AX_RXCOE_CTL, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @ax88179_write_cmd(%struct.usbnet* %165, i32 %166, i32 %167, i32 1, i32 1, i32* %168)
  %170 = load i32, i32* @AX_TXCOE_IP, align 4
  %171 = load i32, i32* @AX_TXCOE_TCP, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @AX_TXCOE_UDP, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @AX_TXCOE_TCPV6, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @AX_TXCOE_UDPV6, align 4
  %178 = or i32 %176, %177
  %179 = load i32*, i32** %7, align 8
  store i32 %178, i32* %179, align 4
  %180 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %181 = load i32, i32* @AX_ACCESS_MAC, align 4
  %182 = load i32, i32* @AX_TXCOE_CTL, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @ax88179_write_cmd(%struct.usbnet* %180, i32 %181, i32 %182, i32 1, i32 1, i32* %183)
  %185 = load i32, i32* @AX_RX_CTL_DROPCRCERR, align 4
  %186 = load i32, i32* @AX_RX_CTL_IPE, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @AX_RX_CTL_START, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @AX_RX_CTL_AP, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @AX_RX_CTL_AMALL, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @AX_RX_CTL_AB, align 4
  %195 = or i32 %193, %194
  %196 = load i32*, i32** %6, align 8
  store i32 %195, i32* %196, align 4
  %197 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %198 = load i32, i32* @AX_ACCESS_MAC, align 4
  %199 = load i32, i32* @AX_RX_CTL, align 4
  %200 = load i32*, i32** %6, align 8
  %201 = call i32 @ax88179_write_cmd(%struct.usbnet* %197, i32 %198, i32 %199, i32 2, i32 2, i32* %200)
  %202 = load i32, i32* @AX_MONITOR_MODE_PMETYPE, align 4
  %203 = load i32, i32* @AX_MONITOR_MODE_PMEPOL, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @AX_MONITOR_MODE_RWMP, align 4
  %206 = or i32 %204, %205
  %207 = load i32*, i32** %7, align 8
  store i32 %206, i32* %207, align 4
  %208 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %209 = load i32, i32* @AX_ACCESS_MAC, align 4
  %210 = load i32, i32* @AX_MONITOR_MOD, align 4
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @ax88179_write_cmd(%struct.usbnet* %208, i32 %209, i32 %210, i32 1, i32 1, i32* %211)
  %213 = load i32, i32* @AX_MEDIUM_RECEIVE_EN, align 4
  %214 = load i32, i32* @AX_MEDIUM_TXFLOW_CTRLEN, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @AX_MEDIUM_RXFLOW_CTRLEN, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @AX_MEDIUM_FULL_DUPLEX, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @AX_MEDIUM_GIGAMODE, align 4
  %221 = or i32 %219, %220
  %222 = load i32*, i32** %6, align 8
  store i32 %221, i32* %222, align 4
  %223 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %224 = load i32, i32* @AX_ACCESS_MAC, align 4
  %225 = load i32, i32* @AX_MEDIUM_STATUS_MODE, align 4
  %226 = load i32*, i32** %6, align 8
  %227 = call i32 @ax88179_write_cmd(%struct.usbnet* %223, i32 %224, i32 %225, i32 2, i32 2, i32* %226)
  %228 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %229 = call i32 @ax88179_led_setting(%struct.usbnet* %228)
  %230 = load %struct.ax88179_data*, %struct.ax88179_data** %8, align 8
  %231 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %230, i32 0, i32 1
  store i64 0, i64* %231, align 8
  %232 = load %struct.ax88179_data*, %struct.ax88179_data** %8, align 8
  %233 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %232, i32 0, i32 0
  store i64 0, i64* %233, align 8
  %234 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %235 = call i32 @ax88179_disable_eee(%struct.usbnet* %234)
  %236 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %237 = call i32 @ax88179_ethtool_get_eee(%struct.usbnet* %236, %struct.ethtool_eee* %9)
  %238 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %9, i32 0, i32 0
  store i64 0, i64* %238, align 8
  %239 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %240 = call i32 @ax88179_ethtool_set_eee(%struct.usbnet* %239, %struct.ethtool_eee* %9)
  %241 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %242 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %241, i32 0, i32 1
  %243 = call i32 @mii_nway_restart(%struct.TYPE_4__* %242)
  %244 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %245 = call i32 @usbnet_link_change(%struct.usbnet* %244, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @memset(%struct.ax88179_data*, i32, i32) #1

declare dso_local i32 @ax88179_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ax88179_led_setting(%struct.usbnet*) #1

declare dso_local i32 @ax88179_disable_eee(%struct.usbnet*) #1

declare dso_local i32 @ax88179_ethtool_get_eee(%struct.usbnet*, %struct.ethtool_eee*) #1

declare dso_local i32 @ax88179_ethtool_set_eee(%struct.usbnet*, %struct.ethtool_eee*) #1

declare dso_local i32 @mii_nway_restart(%struct.TYPE_4__*) #1

declare dso_local i32 @usbnet_link_change(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
