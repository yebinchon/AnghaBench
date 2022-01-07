; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nb8800_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@TX_RETRY_EN = common dso_local global i32 0, align 4
@TX_PAD_EN = common dso_local global i32 0, align 4
@TX_APPEND_FCS = common dso_local global i32 0, align 4
@NB8800_TX_CTL1 = common dso_local global i32 0, align 4
@NB8800_TX_CTL2 = common dso_local global i32 0, align 4
@RX_PAD_STRIP = common dso_local global i32 0, align 4
@RX_AF_EN = common dso_local global i32 0, align 4
@NB8800_RX_CTL = common dso_local global i32 0, align 4
@NB8800_RANDOM_SEED = common dso_local global i32 0, align 4
@NB8800_TX_SDP = common dso_local global i32 0, align 4
@NB8800_PE_THRESHOLD = common dso_local global i32 0, align 4
@NB8800_PF_THRESHOLD = common dso_local global i32 0, align 4
@NB8800_TX_BUFSIZE = common dso_local global i32 0, align 4
@NB8800_TXC_CR = common dso_local global i32 0, align 4
@TCR_LE = common dso_local global i32 0, align 4
@TCR_DM = common dso_local global i32 0, align 4
@TCR_RS = common dso_local global i32 0, align 4
@TCR_DIE = common dso_local global i32 0, align 4
@NB8800_TX_ITR = common dso_local global i32 0, align 4
@NB8800_RXC_CR = common dso_local global i32 0, align 4
@RCR_LE = common dso_local global i32 0, align 4
@RCR_DM = common dso_local global i32 0, align 4
@RCR_RS = common dso_local global i32 0, align 4
@RCR_DIE = common dso_local global i32 0, align 4
@NB8800_RX_ITR = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@DESC_DS = common dso_local global i32 0, align 4
@DESC_EOF = common dso_local global i32 0, align 4
@NB8800_PQ1 = common dso_local global i32 0, align 4
@NB8800_PQ2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nb8800_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb8800_hw_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nb8800_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.nb8800_priv* %6, %struct.nb8800_priv** %3, align 8
  %7 = load i32, i32* @TX_RETRY_EN, align 4
  %8 = load i32, i32* @TX_PAD_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TX_APPEND_FCS, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %13 = load i32, i32* @NB8800_TX_CTL1, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @nb8800_writeb(%struct.nb8800_priv* %12, i32 %13, i32 %14)
  %16 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %17 = load i32, i32* @NB8800_TX_CTL2, align 4
  %18 = call i32 @nb8800_writeb(%struct.nb8800_priv* %16, i32 %17, i32 5)
  %19 = load i32, i32* @RX_PAD_STRIP, align 4
  %20 = load i32, i32* @RX_AF_EN, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %23 = load i32, i32* @NB8800_RX_CTL, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @nb8800_writeb(%struct.nb8800_priv* %22, i32 %23, i32 %24)
  %26 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %27 = load i32, i32* @NB8800_RANDOM_SEED, align 4
  %28 = call i32 @nb8800_writeb(%struct.nb8800_priv* %26, i32 %27, i32 4)
  %29 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %30 = load i32, i32* @NB8800_TX_SDP, align 4
  %31 = call i32 @nb8800_writeb(%struct.nb8800_priv* %29, i32 %30, i32 12)
  %32 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %33 = load i32, i32* @NB8800_PE_THRESHOLD, align 4
  %34 = call i32 @nb8800_writeb(%struct.nb8800_priv* %32, i32 %33, i32 0)
  %35 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %36 = load i32, i32* @NB8800_PF_THRESHOLD, align 4
  %37 = call i32 @nb8800_writeb(%struct.nb8800_priv* %35, i32 %36, i32 255)
  %38 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %39 = load i32, i32* @NB8800_TX_BUFSIZE, align 4
  %40 = call i32 @nb8800_writeb(%struct.nb8800_priv* %38, i32 %39, i32 64)
  %41 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %42 = load i32, i32* @NB8800_TXC_CR, align 4
  %43 = call i32 @nb8800_readl(%struct.nb8800_priv* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @TCR_LE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @TCR_DM, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @TCR_RS, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @TCR_DIE, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = call i32 @TCR_TFI(i32 7)
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = call i32 @TCR_BTS(i32 2)
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %63 = load i32, i32* @NB8800_TXC_CR, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @nb8800_writel(%struct.nb8800_priv* %62, i32 %63, i32 %64)
  %66 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %67 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @clk_get_rate(i32 %68)
  %70 = sdiv i32 %69, 100
  store i32 %70, i32* %4, align 4
  %71 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %72 = load i32, i32* @NB8800_TX_ITR, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @nb8800_writel(%struct.nb8800_priv* %71, i32 %72, i32 %73)
  %75 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %76 = load i32, i32* @NB8800_RXC_CR, align 4
  %77 = call i32 @nb8800_readl(%struct.nb8800_priv* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @RCR_LE, align 4
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @RCR_DM, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @RCR_RS, align 4
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @RCR_DIE, align 4
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = call i32 @RCR_RFI(i32 7)
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = call i32 @RCR_BTS(i32 2)
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %97 = load i32, i32* @NB8800_RXC_CR, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @nb8800_writel(%struct.nb8800_priv* %96, i32 %97, i32 %98)
  %100 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %101 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @clk_get_rate(i32 %102)
  %104 = sdiv i32 %103, 20000
  %105 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %106 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %108 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @clk_get_rate(i32 %109)
  %111 = sdiv i32 %110, 100
  %112 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %113 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %115 = load i32, i32* @NB8800_RX_ITR, align 4
  %116 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %117 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @nb8800_writel(%struct.nb8800_priv* %114, i32 %115, i32 %118)
  %120 = load i32, i32* @RX_BUF_SIZE, align 4
  %121 = call i32 @DESC_BTS(i32 2)
  %122 = or i32 %120, %121
  %123 = load i32, i32* @DESC_DS, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @DESC_EOF, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %128 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  store i32 195, i32* %4, align 4
  %129 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %130 = load i32, i32* @NB8800_PQ1, align 4
  %131 = load i32, i32* %4, align 4
  %132 = ashr i32 %131, 8
  %133 = call i32 @nb8800_writeb(%struct.nb8800_priv* %129, i32 %130, i32 %132)
  %134 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %135 = load i32, i32* @NB8800_PQ2, align 4
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, 255
  %138 = call i32 @nb8800_writeb(%struct.nb8800_priv* %134, i32 %135, i32 %137)
  %139 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %140 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %139, i32 0, i32 3
  store i32 1, i32* %140, align 4
  %141 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %142 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %141, i32 0, i32 4
  store i32 1, i32* %142, align 4
  %143 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %144 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %143, i32 0, i32 5
  store i32 1, i32* %144, align 4
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = call i32 @nb8800_mc_init(%struct.net_device* %145, i32 0)
  ret i32 0
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nb8800_writeb(%struct.nb8800_priv*, i32, i32) #1

declare dso_local i32 @nb8800_readl(%struct.nb8800_priv*, i32) #1

declare dso_local i32 @TCR_TFI(i32) #1

declare dso_local i32 @TCR_BTS(i32) #1

declare dso_local i32 @nb8800_writel(%struct.nb8800_priv*, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @RCR_RFI(i32) #1

declare dso_local i32 @RCR_BTS(i32) #1

declare dso_local i32 @DESC_BTS(i32) #1

declare dso_local i32 @nb8800_mc_init(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
