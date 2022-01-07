; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i64, i32, i32, i32, i32, %struct.macb_queue*, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.macb_queue = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@SGMIIEN = common dso_local global i32 0, align 4
@PCSSEL = common dso_local global i32 0, align 4
@RBOF = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@PAE = common dso_local global i32 0, align 4
@DRFCS = common dso_local global i32 0, align 4
@MACB_CAPS_JUMBO = common dso_local global i32 0, align 4
@JFRAME = common dso_local global i32 0, align 4
@BIG = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CAF = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RXCOEN = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@NBC = common dso_local global i32 0, align 4
@NCFGR = common dso_local global i32 0, align 4
@JML = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@MACB_RX_FRMLEN_MASK = common dso_local global i32 0, align 4
@MACB_RX_JFRMLEN_MASK = common dso_local global i32 0, align 4
@RBQP = common dso_local global i32 0, align 4
@TBQP = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@MACB_TX_INT_FLAGS = common dso_local global i32 0, align 4
@HRESP = common dso_local global i32 0, align 4
@NCR = common dso_local global i32 0, align 4
@RE = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@HW_DMA_CAP_64B = common dso_local global i32 0, align 4
@RBQPH = common dso_local global i32 0, align 4
@TBQPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @macb_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_init_hw(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca %struct.macb_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  %6 = load %struct.macb*, %struct.macb** %2, align 8
  %7 = call i32 @macb_reset_hw(%struct.macb* %6)
  %8 = load %struct.macb*, %struct.macb** %2, align 8
  %9 = call i32 @macb_set_hwaddr(%struct.macb* %8)
  %10 = load %struct.macb*, %struct.macb** %2, align 8
  %11 = call i32 @macb_mdc_clk_div(%struct.macb* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.macb*, %struct.macb** %2, align 8
  %13 = getelementptr inbounds %struct.macb, %struct.macb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @SGMIIEN, align 4
  %19 = call i32 @GEM_BIT(i32 %18)
  %20 = load i32, i32* @PCSSEL, align 4
  %21 = call i32 @GEM_BIT(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %17, %1
  %26 = load i32, i32* @RBOF, align 4
  %27 = load i32, i32* @NET_IP_ALIGN, align 4
  %28 = call i32 @MACB_BF(i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @PAE, align 4
  %32 = call i32 @MACB_BIT(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @DRFCS, align 4
  %36 = call i32 @MACB_BIT(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.macb*, %struct.macb** %2, align 8
  %40 = getelementptr inbounds %struct.macb, %struct.macb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MACB_CAPS_JUMBO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %25
  %46 = load i32, i32* @JFRAME, align 4
  %47 = call i32 @MACB_BIT(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %55

50:                                               ; preds = %25
  %51 = load i32, i32* @BIG, align 4
  %52 = call i32 @MACB_BIT(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.macb*, %struct.macb** %2, align 8
  %57 = getelementptr inbounds %struct.macb, %struct.macb* %56, i32 0, i32 10
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_PROMISC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load i32, i32* @CAF, align 4
  %66 = call i32 @MACB_BIT(i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %88

69:                                               ; preds = %55
  %70 = load %struct.macb*, %struct.macb** %2, align 8
  %71 = call i64 @macb_is_gem(%struct.macb* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load %struct.macb*, %struct.macb** %2, align 8
  %75 = getelementptr inbounds %struct.macb, %struct.macb* %74, i32 0, i32 10
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load i32, i32* @RXCOEN, align 4
  %84 = call i32 @GEM_BIT(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %73, %69
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.macb*, %struct.macb** %2, align 8
  %90 = getelementptr inbounds %struct.macb, %struct.macb* %89, i32 0, i32 10
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IFF_BROADCAST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* @NBC, align 4
  %99 = call i32 @MACB_BIT(i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %97, %88
  %103 = load %struct.macb*, %struct.macb** %2, align 8
  %104 = call i32 @macb_dbw(%struct.macb* %103)
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load %struct.macb*, %struct.macb** %2, align 8
  %108 = load i32, i32* @NCFGR, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @macb_writel(%struct.macb* %107, i32 %108, i32 %109)
  %111 = load %struct.macb*, %struct.macb** %2, align 8
  %112 = getelementptr inbounds %struct.macb, %struct.macb* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MACB_CAPS_JUMBO, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %102
  %118 = load %struct.macb*, %struct.macb** %2, align 8
  %119 = getelementptr inbounds %struct.macb, %struct.macb* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.macb*, %struct.macb** %2, align 8
  %124 = load i32, i32* @JML, align 4
  %125 = load %struct.macb*, %struct.macb** %2, align 8
  %126 = getelementptr inbounds %struct.macb, %struct.macb* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @gem_writel(%struct.macb* %123, i32 %124, i64 %127)
  br label %129

129:                                              ; preds = %122, %117, %102
  %130 = load i32, i32* @SPEED_10, align 4
  %131 = load %struct.macb*, %struct.macb** %2, align 8
  %132 = getelementptr inbounds %struct.macb, %struct.macb* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @DUPLEX_HALF, align 4
  %134 = load %struct.macb*, %struct.macb** %2, align 8
  %135 = getelementptr inbounds %struct.macb, %struct.macb* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @MACB_RX_FRMLEN_MASK, align 4
  %137 = load %struct.macb*, %struct.macb** %2, align 8
  %138 = getelementptr inbounds %struct.macb, %struct.macb* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  %139 = load %struct.macb*, %struct.macb** %2, align 8
  %140 = getelementptr inbounds %struct.macb, %struct.macb* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MACB_CAPS_JUMBO, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %129
  %146 = load i32, i32* @MACB_RX_JFRMLEN_MASK, align 4
  %147 = load %struct.macb*, %struct.macb** %2, align 8
  %148 = getelementptr inbounds %struct.macb, %struct.macb* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %145, %129
  %150 = load %struct.macb*, %struct.macb** %2, align 8
  %151 = call i32 @macb_configure_dma(%struct.macb* %150)
  store i32 0, i32* %4, align 4
  %152 = load %struct.macb*, %struct.macb** %2, align 8
  %153 = getelementptr inbounds %struct.macb, %struct.macb* %152, i32 0, i32 5
  %154 = load %struct.macb_queue*, %struct.macb_queue** %153, align 8
  store %struct.macb_queue* %154, %struct.macb_queue** %3, align 8
  br label %155

155:                                              ; preds = %187, %149
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.macb*, %struct.macb** %2, align 8
  %158 = getelementptr inbounds %struct.macb, %struct.macb* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %192

161:                                              ; preds = %155
  %162 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %163 = load i32, i32* @RBQP, align 4
  %164 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %165 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @lower_32_bits(i32 %166)
  %168 = call i32 @queue_writel(%struct.macb_queue* %162, i32 %163, i32 %167)
  %169 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %170 = load i32, i32* @TBQP, align 4
  %171 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %172 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @lower_32_bits(i32 %173)
  %175 = call i32 @queue_writel(%struct.macb_queue* %169, i32 %170, i32 %174)
  %176 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %177 = load i32, i32* @IER, align 4
  %178 = load %struct.macb*, %struct.macb** %2, align 8
  %179 = getelementptr inbounds %struct.macb, %struct.macb* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @MACB_TX_INT_FLAGS, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @HRESP, align 4
  %184 = call i32 @MACB_BIT(i32 %183)
  %185 = or i32 %182, %184
  %186 = call i32 @queue_writel(%struct.macb_queue* %176, i32 %177, i32 %185)
  br label %187

187:                                              ; preds = %161
  %188 = load i32, i32* %4, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %4, align 4
  %190 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %191 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %190, i32 1
  store %struct.macb_queue* %191, %struct.macb_queue** %3, align 8
  br label %155

192:                                              ; preds = %155
  %193 = load %struct.macb*, %struct.macb** %2, align 8
  %194 = load i32, i32* @NCR, align 4
  %195 = load %struct.macb*, %struct.macb** %2, align 8
  %196 = load i32, i32* @NCR, align 4
  %197 = call i32 @macb_readl(%struct.macb* %195, i32 %196)
  %198 = load i32, i32* @RE, align 4
  %199 = call i32 @MACB_BIT(i32 %198)
  %200 = or i32 %197, %199
  %201 = load i32, i32* @TE, align 4
  %202 = call i32 @MACB_BIT(i32 %201)
  %203 = or i32 %200, %202
  %204 = call i32 @macb_writel(%struct.macb* %193, i32 %194, i32 %203)
  ret void
}

declare dso_local i32 @macb_reset_hw(%struct.macb*) #1

declare dso_local i32 @macb_set_hwaddr(%struct.macb*) #1

declare dso_local i32 @macb_mdc_clk_div(%struct.macb*) #1

declare dso_local i32 @GEM_BIT(i32) #1

declare dso_local i32 @MACB_BF(i32, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i64 @macb_is_gem(%struct.macb*) #1

declare dso_local i32 @macb_dbw(%struct.macb*) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @gem_writel(%struct.macb*, i32, i64) #1

declare dso_local i32 @macb_configure_dma(%struct.macb*) #1

declare dso_local i32 @queue_writel(%struct.macb_queue*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
