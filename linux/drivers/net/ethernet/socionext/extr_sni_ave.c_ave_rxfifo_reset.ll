; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_rxfifo_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_rxfifo_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AVE_RXCR = common dso_local global i64 0, align 8
@AVE_RXCR_RXEN = common dso_local global i32 0, align 4
@AVE_DESC_RX_SUSPEND = common dso_local global i32 0, align 4
@AVE_GRR_RXFFR = common dso_local global i32 0, align 4
@AVE_GRR = common dso_local global i64 0, align 8
@AVE_GI_RXOVF = common dso_local global i32 0, align 4
@AVE_GISR = common dso_local global i64 0, align 8
@AVE_DESC_RX_PERMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ave_rxfifo_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ave_rxfifo_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ave_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ave_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ave_private* %6, %struct.ave_private** %3, align 8
  %7 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %8 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AVE_RXCR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @AVE_RXCR_RXEN, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %18 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AVE_RXCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @AVE_DESC_RX_SUSPEND, align 4
  %25 = call i32 @ave_desc_switch(%struct.net_device* %23, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %28 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ave_rx_receive(%struct.net_device* %26, i32 %30)
  %32 = load i32, i32* @AVE_GRR_RXFFR, align 4
  %33 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %34 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AVE_GRR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = call i32 @udelay(i32 50)
  %40 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %41 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AVE_GRR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 0, i64 %44)
  %46 = call i32 @udelay(i32 20)
  %47 = load i32, i32* @AVE_GI_RXOVF, align 4
  %48 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %49 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AVE_GISR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @AVE_DESC_RX_PERMIT, align 4
  %56 = call i32 @ave_desc_switch(%struct.net_device* %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %59 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AVE_RXCR, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  ret void
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ave_desc_switch(%struct.net_device*, i32) #1

declare dso_local i32 @ave_rx_receive(%struct.net_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
