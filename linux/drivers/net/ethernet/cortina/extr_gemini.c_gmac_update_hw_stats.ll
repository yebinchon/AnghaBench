; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_update_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_update_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gemini_ethernet_port = type { i32*, i32, %struct.TYPE_2__, i64, %struct.gemini_ethernet* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gemini_ethernet = type { i32, i64 }

@GMAC_IN_DISCARDS = common dso_local global i64 0, align 8
@GMAC_IN_ERRORS = common dso_local global i64 0, align 8
@GMAC_IN_MCAST = common dso_local global i64 0, align 8
@GMAC_IN_BCAST = common dso_local global i64 0, align 8
@GMAC_IN_MAC1 = common dso_local global i64 0, align 8
@GMAC_IN_MAC2 = common dso_local global i64 0, align 8
@GMAC0_MIB_INT_BIT = common dso_local global i32 0, align 4
@GLOBAL_INTERRUPT_STATUS_4_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @gmac_update_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmac_update_hw_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gemini_ethernet_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gemini_ethernet*, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %9)
  store %struct.gemini_ethernet_port* %10, %struct.gemini_ethernet_port** %3, align 8
  %11 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %12 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %11, i32 0, i32 4
  %13 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %12, align 8
  store %struct.gemini_ethernet* %13, %struct.gemini_ethernet** %7, align 8
  %14 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %15 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %19 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %18, i32 0, i32 1
  %20 = call i32 @u64_stats_update_begin(i32* %19)
  %21 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %22 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GMAC_IN_DISCARDS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %29 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %35 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GMAC_IN_ERRORS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %41 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %47 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @GMAC_IN_MCAST, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %54 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %60 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GMAC_IN_BCAST, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %67 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %73 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @GMAC_IN_MAC1, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readl(i64 %76)
  %78 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %79 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, %77
  store i32 %83, i32* %81, align 4
  %84 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %85 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @GMAC_IN_MAC2, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  %90 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %91 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  %94 = load i32, i32* %93, align 4
  %95 = add i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %98 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %104 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %110 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, %108
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @GMAC0_MIB_INT_BIT, align 4
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, 8
  %119 = shl i32 %114, %118
  %120 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %121 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @GLOBAL_INTERRUPT_STATUS_4_REG, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  %126 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %127 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %126, i32 0, i32 1
  %128 = call i32 @u64_stats_update_end(i32* %127)
  %129 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %130 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %129, i32 0, i32 0
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  ret void
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
