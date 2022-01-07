; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_emac_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_emac_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bnx2x = type { %struct.bnx2x_eth_stats }
%struct.bnx2x_eth_stats = type { i32, i32, i32, i32 }
%struct.emac_stats = type { i32 }
%struct.host_port_stats = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@mac_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@port_stats = common dso_local global i32 0, align 4
@rx_stat_ifhcinbadoctets = common dso_local global i32 0, align 4
@tx_stat_ifhcoutbadoctets = common dso_local global i32 0, align 4
@rx_stat_dot3statsfcserrors = common dso_local global i32 0, align 4
@rx_stat_dot3statsalignmenterrors = common dso_local global i32 0, align 4
@rx_stat_dot3statscarriersenseerrors = common dso_local global i32 0, align 4
@rx_stat_falsecarriererrors = common dso_local global i32 0, align 4
@rx_stat_etherstatsundersizepkts = common dso_local global i32 0, align 4
@rx_stat_dot3statsframestoolong = common dso_local global i32 0, align 4
@rx_stat_etherstatsfragments = common dso_local global i32 0, align 4
@rx_stat_etherstatsjabbers = common dso_local global i32 0, align 4
@rx_stat_maccontrolframesreceived = common dso_local global i32 0, align 4
@rx_stat_xoffstateentered = common dso_local global i32 0, align 4
@rx_stat_xonpauseframesreceived = common dso_local global i32 0, align 4
@rx_stat_xoffpauseframesreceived = common dso_local global i32 0, align 4
@tx_stat_outxonsent = common dso_local global i32 0, align 4
@tx_stat_outxoffsent = common dso_local global i32 0, align 4
@tx_stat_flowcontroldone = common dso_local global i32 0, align 4
@tx_stat_etherstatscollisions = common dso_local global i32 0, align 4
@tx_stat_dot3statssinglecollisionframes = common dso_local global i32 0, align 4
@tx_stat_dot3statsmultiplecollisionframes = common dso_local global i32 0, align 4
@tx_stat_dot3statsdeferredtransmissions = common dso_local global i32 0, align 4
@tx_stat_dot3statsexcessivecollisions = common dso_local global i32 0, align 4
@tx_stat_dot3statslatecollisions = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts64octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts65octetsto127octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts128octetsto255octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts256octetsto511octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts512octetsto1023octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts1024octetsto1522octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspktsover1522octets = common dso_local global i32 0, align 4
@tx_stat_dot3statsinternalmactransmiterrors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_emac_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_emac_stats_update(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.emac_stats*, align 8
  %4 = alloca %struct.host_port_stats*, align 8
  %5 = alloca %struct.bnx2x_eth_stats*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mac_stats, i32 0, i32 0), align 4
  %8 = call i8* @bnx2x_sp(%struct.bnx2x* %6, i32 %7)
  %9 = bitcast i8* %8 to %struct.emac_stats*
  store %struct.emac_stats* %9, %struct.emac_stats** %3, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = load i32, i32* @port_stats, align 4
  %12 = call i8* @bnx2x_sp(%struct.bnx2x* %10, i32 %11)
  %13 = bitcast i8* %12 to %struct.host_port_stats*
  store %struct.host_port_stats* %13, %struct.host_port_stats** %4, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 0
  store %struct.bnx2x_eth_stats* %15, %struct.bnx2x_eth_stats** %5, align 8
  %16 = load i32, i32* @rx_stat_ifhcinbadoctets, align 4
  %17 = call i32 @UPDATE_EXTEND_STAT(i32 %16)
  %18 = load i32, i32* @tx_stat_ifhcoutbadoctets, align 4
  %19 = call i32 @UPDATE_EXTEND_STAT(i32 %18)
  %20 = load i32, i32* @rx_stat_dot3statsfcserrors, align 4
  %21 = call i32 @UPDATE_EXTEND_STAT(i32 %20)
  %22 = load i32, i32* @rx_stat_dot3statsalignmenterrors, align 4
  %23 = call i32 @UPDATE_EXTEND_STAT(i32 %22)
  %24 = load i32, i32* @rx_stat_dot3statscarriersenseerrors, align 4
  %25 = call i32 @UPDATE_EXTEND_STAT(i32 %24)
  %26 = load i32, i32* @rx_stat_falsecarriererrors, align 4
  %27 = call i32 @UPDATE_EXTEND_STAT(i32 %26)
  %28 = load i32, i32* @rx_stat_etherstatsundersizepkts, align 4
  %29 = call i32 @UPDATE_EXTEND_STAT(i32 %28)
  %30 = load i32, i32* @rx_stat_dot3statsframestoolong, align 4
  %31 = call i32 @UPDATE_EXTEND_STAT(i32 %30)
  %32 = load i32, i32* @rx_stat_etherstatsfragments, align 4
  %33 = call i32 @UPDATE_EXTEND_STAT(i32 %32)
  %34 = load i32, i32* @rx_stat_etherstatsjabbers, align 4
  %35 = call i32 @UPDATE_EXTEND_STAT(i32 %34)
  %36 = load i32, i32* @rx_stat_maccontrolframesreceived, align 4
  %37 = call i32 @UPDATE_EXTEND_STAT(i32 %36)
  %38 = load i32, i32* @rx_stat_xoffstateentered, align 4
  %39 = call i32 @UPDATE_EXTEND_STAT(i32 %38)
  %40 = load i32, i32* @rx_stat_xonpauseframesreceived, align 4
  %41 = call i32 @UPDATE_EXTEND_STAT(i32 %40)
  %42 = load i32, i32* @rx_stat_xoffpauseframesreceived, align 4
  %43 = call i32 @UPDATE_EXTEND_STAT(i32 %42)
  %44 = load i32, i32* @tx_stat_outxonsent, align 4
  %45 = call i32 @UPDATE_EXTEND_STAT(i32 %44)
  %46 = load i32, i32* @tx_stat_outxoffsent, align 4
  %47 = call i32 @UPDATE_EXTEND_STAT(i32 %46)
  %48 = load i32, i32* @tx_stat_flowcontroldone, align 4
  %49 = call i32 @UPDATE_EXTEND_STAT(i32 %48)
  %50 = load i32, i32* @tx_stat_etherstatscollisions, align 4
  %51 = call i32 @UPDATE_EXTEND_STAT(i32 %50)
  %52 = load i32, i32* @tx_stat_dot3statssinglecollisionframes, align 4
  %53 = call i32 @UPDATE_EXTEND_STAT(i32 %52)
  %54 = load i32, i32* @tx_stat_dot3statsmultiplecollisionframes, align 4
  %55 = call i32 @UPDATE_EXTEND_STAT(i32 %54)
  %56 = load i32, i32* @tx_stat_dot3statsdeferredtransmissions, align 4
  %57 = call i32 @UPDATE_EXTEND_STAT(i32 %56)
  %58 = load i32, i32* @tx_stat_dot3statsexcessivecollisions, align 4
  %59 = call i32 @UPDATE_EXTEND_STAT(i32 %58)
  %60 = load i32, i32* @tx_stat_dot3statslatecollisions, align 4
  %61 = call i32 @UPDATE_EXTEND_STAT(i32 %60)
  %62 = load i32, i32* @tx_stat_etherstatspkts64octets, align 4
  %63 = call i32 @UPDATE_EXTEND_STAT(i32 %62)
  %64 = load i32, i32* @tx_stat_etherstatspkts65octetsto127octets, align 4
  %65 = call i32 @UPDATE_EXTEND_STAT(i32 %64)
  %66 = load i32, i32* @tx_stat_etherstatspkts128octetsto255octets, align 4
  %67 = call i32 @UPDATE_EXTEND_STAT(i32 %66)
  %68 = load i32, i32* @tx_stat_etherstatspkts256octetsto511octets, align 4
  %69 = call i32 @UPDATE_EXTEND_STAT(i32 %68)
  %70 = load i32, i32* @tx_stat_etherstatspkts512octetsto1023octets, align 4
  %71 = call i32 @UPDATE_EXTEND_STAT(i32 %70)
  %72 = load i32, i32* @tx_stat_etherstatspkts1024octetsto1522octets, align 4
  %73 = call i32 @UPDATE_EXTEND_STAT(i32 %72)
  %74 = load i32, i32* @tx_stat_etherstatspktsover1522octets, align 4
  %75 = call i32 @UPDATE_EXTEND_STAT(i32 %74)
  %76 = load i32, i32* @tx_stat_dot3statsinternalmactransmiterrors, align 4
  %77 = call i32 @UPDATE_EXTEND_STAT(i32 %76)
  %78 = load %struct.host_port_stats*, %struct.host_port_stats** %4, align 8
  %79 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %5, align 8
  %85 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.host_port_stats*, %struct.host_port_stats** %4, align 8
  %87 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %5, align 8
  %93 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %5, align 8
  %95 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.host_port_stats*, %struct.host_port_stats** %4, align 8
  %98 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %5, align 8
  %104 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.host_port_stats*, %struct.host_port_stats** %4, align 8
  %107 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ADD_64(i32 %96, i32 %102, i32 %105, i32 %111)
  %113 = load %struct.host_port_stats*, %struct.host_port_stats** %4, align 8
  %114 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %5, align 8
  %120 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.host_port_stats*, %struct.host_port_stats** %4, align 8
  %122 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %5, align 8
  %128 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %5, align 8
  %130 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.host_port_stats*, %struct.host_port_stats** %4, align 8
  %133 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %132, i32 0, i32 0
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %5, align 8
  %139 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.host_port_stats*, %struct.host_port_stats** %4, align 8
  %142 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ADD_64(i32 %131, i32 %137, i32 %140, i32 %146)
  ret void
}

declare dso_local i8* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @UPDATE_EXTEND_STAT(i32) #1

declare dso_local i32 @ADD_64(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
