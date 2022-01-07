; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mac_hw_stats }
%struct.mac_hw_stats = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@XGMAC_TX_PKTS_FRAGMENT = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_UNDERSIZE = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_UNDERMIN = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_64OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_65TO127OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_128TO255OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_256TO511OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_512TO1023OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_1024TO1518OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_1519TOMAXOCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_1519TOMAXOCTETSOK = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_OVERSIZE = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_JABBER = common dso_local global i32 0, align 4
@XGMAC_TX_GOODPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_GOODOCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_TOTAL_PKTS = common dso_local global i32 0, align 4
@XGMAC_TX_TOTALOCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_UNICASTPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_MULTICASTPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_BROADCASTPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI0PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI1PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI2PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI3PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI4PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI5PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI6PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI7PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_MACCTRLPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_1731PKTS = common dso_local global i32 0, align 4
@XGMAC_TX_1588PKTS = common dso_local global i32 0, align 4
@XGMAC_RX_FROMAPPGOODPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_FROMAPPBADPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_ERRALLPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_FRAGMENT = common dso_local global i32 0, align 4
@XGMAC_RX_PKTSUNDERSIZE = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_UNDERMIN = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_64OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_65TO127OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_128TO255OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_256TO511OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_512TO1023OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_1024TO1518OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_1519TOMAXOCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_1519TOMAXOCTETSOK = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_OVERSIZE = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_JABBER = common dso_local global i32 0, align 4
@XGMAC_RX_GOODPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_GOODOCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_TOTAL_PKTS = common dso_local global i32 0, align 4
@XGMAC_RX_TOTALOCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_UNICASTPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_MULTICASTPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_BROADCASTPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI0PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI1PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI2PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI3PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI4PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI5PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI6PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI7PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_MACCTRLPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_SENDAPPGOODPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_SENDAPPBADPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_1731PKTS = common dso_local global i32 0, align 4
@XGMAC_RX_SYMBOLERRPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_FCSERRPKTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hns_xgmac_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_xgmac_update_stats(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mac_driver*, align 8
  %4 = alloca %struct.mac_hw_stats*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mac_driver*
  store %struct.mac_driver* %6, %struct.mac_driver** %3, align 8
  %7 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %8 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mac_hw_stats* %10, %struct.mac_hw_stats** %4, align 8
  %11 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %12 = load i32, i32* @XGMAC_TX_PKTS_FRAGMENT, align 4
  %13 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %11, i32 %12)
  %14 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %15 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %14, i32 0, i32 67
  store i8* %13, i8** %15, align 8
  %16 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %17 = load i32, i32* @XGMAC_TX_PKTS_UNDERSIZE, align 4
  %18 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %16, i32 %17)
  %19 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %20 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %19, i32 0, i32 66
  store i8* %18, i8** %20, align 8
  %21 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %22 = load i32, i32* @XGMAC_TX_PKTS_UNDERMIN, align 4
  %23 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %21, i32 %22)
  %24 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %25 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %24, i32 0, i32 65
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %27 = load i32, i32* @XGMAC_TX_PKTS_64OCTETS, align 4
  %28 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %26, i32 %27)
  %29 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %30 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %29, i32 0, i32 64
  store i8* %28, i8** %30, align 8
  %31 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %32 = load i32, i32* @XGMAC_TX_PKTS_65TO127OCTETS, align 4
  %33 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %31, i32 %32)
  %34 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %35 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %34, i32 0, i32 63
  store i8* %33, i8** %35, align 8
  %36 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %37 = load i32, i32* @XGMAC_TX_PKTS_128TO255OCTETS, align 4
  %38 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %36, i32 %37)
  %39 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %40 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %39, i32 0, i32 62
  store i8* %38, i8** %40, align 8
  %41 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %42 = load i32, i32* @XGMAC_TX_PKTS_256TO511OCTETS, align 4
  %43 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %41, i32 %42)
  %44 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %45 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %44, i32 0, i32 61
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %47 = load i32, i32* @XGMAC_TX_PKTS_512TO1023OCTETS, align 4
  %48 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %46, i32 %47)
  %49 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %50 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %49, i32 0, i32 60
  store i8* %48, i8** %50, align 8
  %51 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %52 = load i32, i32* @XGMAC_TX_PKTS_1024TO1518OCTETS, align 4
  %53 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %51, i32 %52)
  %54 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %55 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %54, i32 0, i32 59
  store i8* %53, i8** %55, align 8
  %56 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %57 = load i32, i32* @XGMAC_TX_PKTS_1519TOMAXOCTETS, align 4
  %58 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %56, i32 %57)
  %59 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %60 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %59, i32 0, i32 58
  store i8* %58, i8** %60, align 8
  %61 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %62 = load i32, i32* @XGMAC_TX_PKTS_1519TOMAXOCTETSOK, align 4
  %63 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %61, i32 %62)
  %64 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %65 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %64, i32 0, i32 57
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %67 = load i32, i32* @XGMAC_TX_PKTS_OVERSIZE, align 4
  %68 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %66, i32 %67)
  %69 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %70 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %69, i32 0, i32 56
  store i8* %68, i8** %70, align 8
  %71 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %72 = load i32, i32* @XGMAC_TX_PKTS_JABBER, align 4
  %73 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %71, i32 %72)
  %74 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %75 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %74, i32 0, i32 55
  store i8* %73, i8** %75, align 8
  %76 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %77 = load i32, i32* @XGMAC_TX_GOODPKTS, align 4
  %78 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %76, i32 %77)
  %79 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %80 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %79, i32 0, i32 54
  store i8* %78, i8** %80, align 8
  %81 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %82 = load i32, i32* @XGMAC_TX_GOODOCTETS, align 4
  %83 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %81, i32 %82)
  %84 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %85 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %84, i32 0, i32 53
  store i8* %83, i8** %85, align 8
  %86 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %87 = load i32, i32* @XGMAC_TX_TOTAL_PKTS, align 4
  %88 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %86, i32 %87)
  %89 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %90 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %89, i32 0, i32 52
  store i8* %88, i8** %90, align 8
  %91 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %92 = load i32, i32* @XGMAC_TX_TOTALOCTETS, align 4
  %93 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %91, i32 %92)
  %94 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %95 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %94, i32 0, i32 51
  store i8* %93, i8** %95, align 8
  %96 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %97 = load i32, i32* @XGMAC_TX_UNICASTPKTS, align 4
  %98 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %96, i32 %97)
  %99 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %100 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %99, i32 0, i32 50
  store i8* %98, i8** %100, align 8
  %101 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %102 = load i32, i32* @XGMAC_TX_MULTICASTPKTS, align 4
  %103 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %101, i32 %102)
  %104 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %105 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %104, i32 0, i32 49
  store i8* %103, i8** %105, align 8
  %106 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %107 = load i32, i32* @XGMAC_TX_BROADCASTPKTS, align 4
  %108 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %106, i32 %107)
  %109 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %110 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %109, i32 0, i32 48
  store i8* %108, i8** %110, align 8
  %111 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %112 = load i32, i32* @XGMAC_TX_PRI0PAUSEPKTS, align 4
  %113 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %111, i32 %112)
  %114 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %115 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %114, i32 0, i32 47
  store i8* %113, i8** %115, align 8
  %116 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %117 = load i32, i32* @XGMAC_TX_PRI1PAUSEPKTS, align 4
  %118 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %116, i32 %117)
  %119 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %120 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %119, i32 0, i32 46
  store i8* %118, i8** %120, align 8
  %121 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %122 = load i32, i32* @XGMAC_TX_PRI2PAUSEPKTS, align 4
  %123 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %121, i32 %122)
  %124 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %125 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %124, i32 0, i32 45
  store i8* %123, i8** %125, align 8
  %126 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %127 = load i32, i32* @XGMAC_TX_PRI3PAUSEPKTS, align 4
  %128 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %126, i32 %127)
  %129 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %130 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %129, i32 0, i32 44
  store i8* %128, i8** %130, align 8
  %131 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %132 = load i32, i32* @XGMAC_TX_PRI4PAUSEPKTS, align 4
  %133 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %131, i32 %132)
  %134 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %135 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %134, i32 0, i32 43
  store i8* %133, i8** %135, align 8
  %136 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %137 = load i32, i32* @XGMAC_TX_PRI5PAUSEPKTS, align 4
  %138 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %136, i32 %137)
  %139 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %140 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %139, i32 0, i32 42
  store i8* %138, i8** %140, align 8
  %141 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %142 = load i32, i32* @XGMAC_TX_PRI6PAUSEPKTS, align 4
  %143 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %141, i32 %142)
  %144 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %145 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %144, i32 0, i32 41
  store i8* %143, i8** %145, align 8
  %146 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %147 = load i32, i32* @XGMAC_TX_PRI7PAUSEPKTS, align 4
  %148 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %146, i32 %147)
  %149 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %150 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %149, i32 0, i32 40
  store i8* %148, i8** %150, align 8
  %151 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %152 = load i32, i32* @XGMAC_TX_MACCTRLPKTS, align 4
  %153 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %151, i32 %152)
  %154 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %155 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %154, i32 0, i32 39
  store i8* %153, i8** %155, align 8
  %156 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %157 = load i32, i32* @XGMAC_TX_1731PKTS, align 4
  %158 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %156, i32 %157)
  %159 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %160 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %159, i32 0, i32 38
  store i8* %158, i8** %160, align 8
  %161 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %162 = load i32, i32* @XGMAC_TX_1588PKTS, align 4
  %163 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %161, i32 %162)
  %164 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %165 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %164, i32 0, i32 37
  store i8* %163, i8** %165, align 8
  %166 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %167 = load i32, i32* @XGMAC_RX_FROMAPPGOODPKTS, align 4
  %168 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %166, i32 %167)
  %169 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %170 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %169, i32 0, i32 36
  store i8* %168, i8** %170, align 8
  %171 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %172 = load i32, i32* @XGMAC_RX_FROMAPPBADPKTS, align 4
  %173 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %171, i32 %172)
  %174 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %175 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %174, i32 0, i32 35
  store i8* %173, i8** %175, align 8
  %176 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %177 = load i32, i32* @XGMAC_TX_ERRALLPKTS, align 4
  %178 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %176, i32 %177)
  %179 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %180 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %179, i32 0, i32 34
  store i8* %178, i8** %180, align 8
  %181 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %182 = load i32, i32* @XGMAC_RX_PKTS_FRAGMENT, align 4
  %183 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %181, i32 %182)
  %184 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %185 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %184, i32 0, i32 33
  store i8* %183, i8** %185, align 8
  %186 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %187 = load i32, i32* @XGMAC_RX_PKTSUNDERSIZE, align 4
  %188 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %186, i32 %187)
  %189 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %190 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %189, i32 0, i32 32
  store i8* %188, i8** %190, align 8
  %191 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %192 = load i32, i32* @XGMAC_RX_PKTS_UNDERMIN, align 4
  %193 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %191, i32 %192)
  %194 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %195 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %194, i32 0, i32 31
  store i8* %193, i8** %195, align 8
  %196 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %197 = load i32, i32* @XGMAC_RX_PKTS_64OCTETS, align 4
  %198 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %196, i32 %197)
  %199 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %200 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %199, i32 0, i32 30
  store i8* %198, i8** %200, align 8
  %201 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %202 = load i32, i32* @XGMAC_RX_PKTS_65TO127OCTETS, align 4
  %203 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %201, i32 %202)
  %204 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %205 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %204, i32 0, i32 29
  store i8* %203, i8** %205, align 8
  %206 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %207 = load i32, i32* @XGMAC_RX_PKTS_128TO255OCTETS, align 4
  %208 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %206, i32 %207)
  %209 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %210 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %209, i32 0, i32 28
  store i8* %208, i8** %210, align 8
  %211 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %212 = load i32, i32* @XGMAC_RX_PKTS_256TO511OCTETS, align 4
  %213 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %211, i32 %212)
  %214 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %215 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %214, i32 0, i32 27
  store i8* %213, i8** %215, align 8
  %216 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %217 = load i32, i32* @XGMAC_RX_PKTS_512TO1023OCTETS, align 4
  %218 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %216, i32 %217)
  %219 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %220 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %219, i32 0, i32 26
  store i8* %218, i8** %220, align 8
  %221 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %222 = load i32, i32* @XGMAC_RX_PKTS_1024TO1518OCTETS, align 4
  %223 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %221, i32 %222)
  %224 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %225 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %224, i32 0, i32 25
  store i8* %223, i8** %225, align 8
  %226 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %227 = load i32, i32* @XGMAC_RX_PKTS_1519TOMAXOCTETS, align 4
  %228 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %226, i32 %227)
  %229 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %230 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %229, i32 0, i32 24
  store i8* %228, i8** %230, align 8
  %231 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %232 = load i32, i32* @XGMAC_RX_PKTS_1519TOMAXOCTETSOK, align 4
  %233 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %231, i32 %232)
  %234 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %235 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %234, i32 0, i32 23
  store i8* %233, i8** %235, align 8
  %236 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %237 = load i32, i32* @XGMAC_RX_PKTS_OVERSIZE, align 4
  %238 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %236, i32 %237)
  %239 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %240 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %239, i32 0, i32 22
  store i8* %238, i8** %240, align 8
  %241 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %242 = load i32, i32* @XGMAC_RX_PKTS_JABBER, align 4
  %243 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %241, i32 %242)
  %244 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %245 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %244, i32 0, i32 21
  store i8* %243, i8** %245, align 8
  %246 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %247 = load i32, i32* @XGMAC_RX_GOODPKTS, align 4
  %248 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %246, i32 %247)
  %249 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %250 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %249, i32 0, i32 20
  store i8* %248, i8** %250, align 8
  %251 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %252 = load i32, i32* @XGMAC_RX_GOODOCTETS, align 4
  %253 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %251, i32 %252)
  %254 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %255 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %254, i32 0, i32 19
  store i8* %253, i8** %255, align 8
  %256 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %257 = load i32, i32* @XGMAC_RX_TOTAL_PKTS, align 4
  %258 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %256, i32 %257)
  %259 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %260 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %259, i32 0, i32 18
  store i8* %258, i8** %260, align 8
  %261 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %262 = load i32, i32* @XGMAC_RX_TOTALOCTETS, align 4
  %263 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %261, i32 %262)
  %264 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %265 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %264, i32 0, i32 17
  store i8* %263, i8** %265, align 8
  %266 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %267 = load i32, i32* @XGMAC_RX_UNICASTPKTS, align 4
  %268 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %266, i32 %267)
  %269 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %270 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %269, i32 0, i32 16
  store i8* %268, i8** %270, align 8
  %271 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %272 = load i32, i32* @XGMAC_RX_MULTICASTPKTS, align 4
  %273 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %271, i32 %272)
  %274 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %275 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %274, i32 0, i32 15
  store i8* %273, i8** %275, align 8
  %276 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %277 = load i32, i32* @XGMAC_RX_BROADCASTPKTS, align 4
  %278 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %276, i32 %277)
  %279 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %280 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %279, i32 0, i32 14
  store i8* %278, i8** %280, align 8
  %281 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %282 = load i32, i32* @XGMAC_RX_PRI0PAUSEPKTS, align 4
  %283 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %281, i32 %282)
  %284 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %285 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %284, i32 0, i32 13
  store i8* %283, i8** %285, align 8
  %286 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %287 = load i32, i32* @XGMAC_RX_PRI1PAUSEPKTS, align 4
  %288 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %286, i32 %287)
  %289 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %290 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %289, i32 0, i32 12
  store i8* %288, i8** %290, align 8
  %291 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %292 = load i32, i32* @XGMAC_RX_PRI2PAUSEPKTS, align 4
  %293 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %291, i32 %292)
  %294 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %295 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %294, i32 0, i32 11
  store i8* %293, i8** %295, align 8
  %296 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %297 = load i32, i32* @XGMAC_RX_PRI3PAUSEPKTS, align 4
  %298 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %296, i32 %297)
  %299 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %300 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %299, i32 0, i32 10
  store i8* %298, i8** %300, align 8
  %301 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %302 = load i32, i32* @XGMAC_RX_PRI4PAUSEPKTS, align 4
  %303 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %301, i32 %302)
  %304 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %305 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %304, i32 0, i32 9
  store i8* %303, i8** %305, align 8
  %306 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %307 = load i32, i32* @XGMAC_RX_PRI5PAUSEPKTS, align 4
  %308 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %306, i32 %307)
  %309 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %310 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %309, i32 0, i32 8
  store i8* %308, i8** %310, align 8
  %311 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %312 = load i32, i32* @XGMAC_RX_PRI6PAUSEPKTS, align 4
  %313 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %311, i32 %312)
  %314 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %315 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %314, i32 0, i32 7
  store i8* %313, i8** %315, align 8
  %316 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %317 = load i32, i32* @XGMAC_RX_PRI7PAUSEPKTS, align 4
  %318 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %316, i32 %317)
  %319 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %320 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %319, i32 0, i32 6
  store i8* %318, i8** %320, align 8
  %321 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %322 = load i32, i32* @XGMAC_RX_MACCTRLPKTS, align 4
  %323 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %321, i32 %322)
  %324 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %325 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %324, i32 0, i32 5
  store i8* %323, i8** %325, align 8
  %326 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %327 = load i32, i32* @XGMAC_TX_SENDAPPGOODPKTS, align 4
  %328 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %326, i32 %327)
  %329 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %330 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %329, i32 0, i32 4
  store i8* %328, i8** %330, align 8
  %331 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %332 = load i32, i32* @XGMAC_TX_SENDAPPBADPKTS, align 4
  %333 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %331, i32 %332)
  %334 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %335 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %334, i32 0, i32 3
  store i8* %333, i8** %335, align 8
  %336 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %337 = load i32, i32* @XGMAC_RX_1731PKTS, align 4
  %338 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %336, i32 %337)
  %339 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %340 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %339, i32 0, i32 2
  store i8* %338, i8** %340, align 8
  %341 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %342 = load i32, i32* @XGMAC_RX_SYMBOLERRPKTS, align 4
  %343 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %341, i32 %342)
  %344 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %345 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %344, i32 0, i32 1
  store i8* %343, i8** %345, align 8
  %346 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %347 = load i32, i32* @XGMAC_RX_FCSERRPKTS, align 4
  %348 = call i8* @hns_mac_reg_read64(%struct.mac_driver* %346, i32 %347)
  %349 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %4, align 8
  %350 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %349, i32 0, i32 0
  store i8* %348, i8** %350, align 8
  ret void
}

declare dso_local i8* @hns_mac_reg_read64(%struct.mac_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
