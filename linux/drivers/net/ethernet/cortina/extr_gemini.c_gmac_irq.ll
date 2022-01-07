; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_ethernet_port = type { i32, %struct.TYPE_2__, i32, i32, i32, %struct.gemini_ethernet* }
%struct.TYPE_2__ = type { i32 }
%struct.gemini_ethernet = type { i32, i64 }
%struct.net_device = type { i32 }

@GMAC0_IRQ0_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hw failure/sw bug\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@GMAC0_IRQ0_TXQ0_INTS = common dso_local global i32 0, align 4
@DEFAULT_Q0_INT_BIT = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@GMAC0_MIB_INT_BIT = common dso_local global i32 0, align 4
@GMAC0_RX_OVERRUN_INT_BIT = common dso_local global i32 0, align 4
@GMAC0_RXDERR_INT_BIT = common dso_local global i32 0, align 4
@GLOBAL_INTERRUPT_STATUS_4_REG = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gmac_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmac_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gemini_ethernet_port*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.gemini_ethernet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %14)
  store %struct.gemini_ethernet_port* %15, %struct.gemini_ethernet_port** %6, align 8
  %16 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %17 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %16, i32 0, i32 5
  %18 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %17, align 8
  store %struct.gemini_ethernet* %18, %struct.gemini_ethernet** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call i32 @gmac_get_intr_flags(%struct.net_device* %19, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @GMAC0_IRQ0_2, align 4
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 2
  %30 = shl i32 %25, %29
  %31 = and i32 %24, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = call i32 @gmac_dump_dma_state(%struct.net_device* %36)
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = call i32 @gmac_enable_irq(%struct.net_device* %38, i32 0)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %157

41:                                               ; preds = %2
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @GMAC0_IRQ0_TXQ0_INTS, align 4
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 6
  %48 = shl i32 %43, %47
  %49 = and i32 %42, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = call i32 @gmac_tx_irq(%struct.net_device* %52, i32 0)
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = call i32 @gmac_get_intr_flags(%struct.net_device* %55, i32 1)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @DEFAULT_Q0_INT_BIT, align 4
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %61, %64
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %54
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = call i32 @gmac_enable_rx_irq(%struct.net_device* %69, i32 0)
  %71 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %72 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %77 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %76, i32 0, i32 4
  %78 = call i32 @napi_schedule(i32* %77)
  br label %89

79:                                               ; preds = %68
  %80 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %81 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ktime_set(i32 0, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %85 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %84, i32 0, i32 2
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %88 = call i32 @hrtimer_start(i32* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %79, %75
  br label %90

90:                                               ; preds = %89, %54
  %91 = load %struct.net_device*, %struct.net_device** %7, align 8
  %92 = call i32 @gmac_get_intr_flags(%struct.net_device* %91, i32 4)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @GMAC0_MIB_INT_BIT, align 4
  %98 = load %struct.net_device*, %struct.net_device** %7, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 8
  %102 = shl i32 %97, %101
  %103 = and i32 %96, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %90
  %106 = load %struct.net_device*, %struct.net_device** %7, align 8
  %107 = call i32 @gmac_update_hw_stats(%struct.net_device* %106)
  br label %108

108:                                              ; preds = %105, %90
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @GMAC0_RX_OVERRUN_INT_BIT, align 4
  %111 = load %struct.net_device*, %struct.net_device** %7, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 8
  %115 = shl i32 %110, %114
  %116 = and i32 %109, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %148

118:                                              ; preds = %108
  %119 = load i32, i32* @GMAC0_RXDERR_INT_BIT, align 4
  %120 = load %struct.net_device*, %struct.net_device** %7, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 8
  %124 = shl i32 %119, %123
  %125 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %8, align 8
  %126 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @GLOBAL_INTERRUPT_STATUS_4_REG, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i32 %124, i64 %129)
  %131 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %8, align 8
  %132 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %131, i32 0, i32 0
  %133 = call i32 @spin_lock(i32* %132)
  %134 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %135 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %134, i32 0, i32 0
  %136 = call i32 @u64_stats_update_begin(i32* %135)
  %137 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %138 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %143 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %142, i32 0, i32 0
  %144 = call i32 @u64_stats_update_end(i32* %143)
  %145 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %8, align 8
  %146 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock(i32* %146)
  br label %148

148:                                              ; preds = %118, %108
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* @IRQ_HANDLED, align 4
  br label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @IRQ_NONE, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %33
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gmac_get_intr_flags(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @gmac_dump_dma_state(%struct.net_device*) #1

declare dso_local i32 @gmac_enable_irq(%struct.net_device*, i32) #1

declare dso_local i32 @gmac_tx_irq(%struct.net_device*, i32) #1

declare dso_local i32 @gmac_enable_rx_irq(%struct.net_device*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @gmac_update_hw_stats(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
