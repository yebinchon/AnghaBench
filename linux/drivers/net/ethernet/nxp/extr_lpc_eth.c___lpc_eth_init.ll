; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_eth_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_eth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdata_local = type { i32, i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LPC_COMMAND_RXENABLE = common dso_local global i32 0, align 4
@LPC_COMMAND_TXENABLE = common dso_local global i32 0, align 4
@LPC_MAC1_RECV_ENABLE = common dso_local global i32 0, align 4
@LPC_MAC1_PASS_ALL_RX_FRAMES = common dso_local global i32 0, align 4
@LPC_MAC2_PAD_CRC_ENABLE = common dso_local global i32 0, align 4
@LPC_MAC2_CRC_ENABLE = common dso_local global i32 0, align 4
@ENET_MAXF_SIZE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@LPC_COMMAND_PASSRUNTFRAME = common dso_local global i32 0, align 4
@LPC_COMMAND_RMII = common dso_local global i32 0, align 4
@LPC_SUPP_RESET_RMII = common dso_local global i32 0, align 4
@LPC_RXFLTRW_ACCEPTUBROADCAST = common dso_local global i32 0, align 4
@LPC_RXFLTRW_ACCEPTPERFECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdata_local*)* @__lpc_eth_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpc_eth_init(%struct.netdata_local* %0) #0 {
  %2 = alloca %struct.netdata_local*, align 8
  %3 = alloca i32, align 4
  store %struct.netdata_local* %0, %struct.netdata_local** %2, align 8
  %4 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %5 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @LPC_ENET_COMMAND(i32 %6)
  %8 = call i8* @readl(i32 %7)
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @LPC_COMMAND_RXENABLE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @LPC_COMMAND_TXENABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %18 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @LPC_ENET_COMMAND(i32 %19)
  %21 = call i32 @writel(i32 %16, i32 %20)
  %22 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %23 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @LPC_ENET_MAC1(i32 %24)
  %26 = call i8* @readl(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @LPC_MAC1_RECV_ENABLE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %34 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @LPC_ENET_MAC1(i32 %35)
  %37 = call i32 @writel(i32 %32, i32 %36)
  %38 = load i32, i32* @LPC_MAC1_PASS_ALL_RX_FRAMES, align 4
  %39 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %40 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @LPC_ENET_MAC1(i32 %41)
  %43 = call i32 @writel(i32 %38, i32 %42)
  %44 = load i32, i32* @LPC_MAC2_PAD_CRC_ENABLE, align 4
  %45 = load i32, i32* @LPC_MAC2_CRC_ENABLE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %48 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @LPC_ENET_MAC2(i32 %49)
  %51 = call i32 @writel(i32 %46, i32 %50)
  %52 = load i32, i32* @ENET_MAXF_SIZE, align 4
  %53 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %54 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @LPC_ENET_MAXF(i32 %55)
  %57 = call i32 @writel(i32 %52, i32 %56)
  %58 = call i32 @LPC_CLRT_LOAD_RETRY_MAX(i32 15)
  %59 = call i32 @LPC_CLRT_LOAD_COLLISION_WINDOW(i32 55)
  %60 = or i32 %58, %59
  %61 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %62 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @LPC_ENET_CLRT(i32 %63)
  %65 = call i32 @writel(i32 %60, i32 %64)
  %66 = call i32 @LPC_IPGR_LOAD_PART2(i32 18)
  %67 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %68 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @LPC_ENET_IPGR(i32 %69)
  %71 = call i32 @writel(i32 %66, i32 %70)
  %72 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %73 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i64 @lpc_phy_interface_mode(i32* %75)
  %77 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %1
  %80 = load i32, i32* @LPC_COMMAND_PASSRUNTFRAME, align 4
  %81 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %82 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @LPC_ENET_COMMAND(i32 %83)
  %85 = call i32 @writel(i32 %80, i32 %84)
  br label %101

86:                                               ; preds = %1
  %87 = load i32, i32* @LPC_COMMAND_PASSRUNTFRAME, align 4
  %88 = load i32, i32* @LPC_COMMAND_RMII, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %91 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @LPC_ENET_COMMAND(i32 %92)
  %94 = call i32 @writel(i32 %89, i32 %93)
  %95 = load i32, i32* @LPC_SUPP_RESET_RMII, align 4
  %96 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %97 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @LPC_ENET_SUPP(i32 %98)
  %100 = call i32 @writel(i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %86, %79
  %102 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %103 = call i32 @__lpc_params_setup(%struct.netdata_local* %102)
  %104 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %105 = call i32 @__lpc_txrx_desc_setup(%struct.netdata_local* %104)
  %106 = load i32, i32* @LPC_RXFLTRW_ACCEPTUBROADCAST, align 4
  %107 = load i32, i32* @LPC_RXFLTRW_ACCEPTPERFECT, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %110 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @LPC_ENET_RXFILTER_CTRL(i32 %111)
  %113 = call i32 @writel(i32 %108, i32 %112)
  %114 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %115 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %117 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @LPC_ENET_TXCONSUMEINDEX(i32 %118)
  %120 = call i8* @readl(i32 %119)
  %121 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %122 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %124 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @LPC_ENET_INTCLEAR(i32 %125)
  %127 = call i32 @writel(i32 65535, i32 %126)
  %128 = call i32 (...) @smp_wmb()
  %129 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %130 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @lpc_eth_enable_int(i32 %131)
  %133 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %134 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @LPC_ENET_COMMAND(i32 %135)
  %137 = call i8* @readl(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* @LPC_COMMAND_RXENABLE, align 4
  %140 = load i32, i32* @LPC_COMMAND_TXENABLE, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %3, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* %3, align 4
  %145 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %146 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @LPC_ENET_COMMAND(i32 %147)
  %149 = call i32 @writel(i32 %144, i32 %148)
  %150 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %151 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @LPC_ENET_MAC1(i32 %152)
  %154 = call i8* @readl(i32 %153)
  %155 = ptrtoint i8* %154 to i32
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* @LPC_MAC1_RECV_ENABLE, align 4
  %157 = load i32, i32* %3, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %3, align 4
  %159 = load i32, i32* %3, align 4
  %160 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %161 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @LPC_ENET_MAC1(i32 %162)
  %164 = call i32 @writel(i32 %159, i32 %163)
  ret void
}

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @LPC_ENET_COMMAND(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC_ENET_MAC1(i32) #1

declare dso_local i32 @LPC_ENET_MAC2(i32) #1

declare dso_local i32 @LPC_ENET_MAXF(i32) #1

declare dso_local i32 @LPC_CLRT_LOAD_RETRY_MAX(i32) #1

declare dso_local i32 @LPC_CLRT_LOAD_COLLISION_WINDOW(i32) #1

declare dso_local i32 @LPC_ENET_CLRT(i32) #1

declare dso_local i32 @LPC_IPGR_LOAD_PART2(i32) #1

declare dso_local i32 @LPC_ENET_IPGR(i32) #1

declare dso_local i64 @lpc_phy_interface_mode(i32*) #1

declare dso_local i32 @LPC_ENET_SUPP(i32) #1

declare dso_local i32 @__lpc_params_setup(%struct.netdata_local*) #1

declare dso_local i32 @__lpc_txrx_desc_setup(%struct.netdata_local*) #1

declare dso_local i32 @LPC_ENET_RXFILTER_CTRL(i32) #1

declare dso_local i32 @LPC_ENET_TXCONSUMEINDEX(i32) #1

declare dso_local i32 @LPC_ENET_INTCLEAR(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @lpc_eth_enable_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
