; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_hresp_error_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_hresp_error_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32, i32, i32, %struct.macb_queue*, %struct.TYPE_2__, %struct.net_device* }
%struct.macb_queue = type { i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.macb.0*)* }
%struct.macb.0 = type opaque
%struct.net_device = type { i32 }

@IDR = common dso_local global i32 0, align 4
@MACB_TX_INT_FLAGS = common dso_local global i32 0, align 4
@HRESP = common dso_local global i32 0, align 4
@NCR = common dso_local global i32 0, align 4
@RE = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@RBQP = common dso_local global i32 0, align 4
@TBQP = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@HW_DMA_CAP_64B = common dso_local global i32 0, align 4
@RBQPH = common dso_local global i32 0, align 4
@TBQPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @macb_hresp_error_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_hresp_error_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.macb_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.macb*
  store %struct.macb* %9, %struct.macb** %3, align 8
  %10 = load %struct.macb*, %struct.macb** %3, align 8
  %11 = getelementptr inbounds %struct.macb, %struct.macb* %10, i32 0, i32 5
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.macb*, %struct.macb** %3, align 8
  %14 = getelementptr inbounds %struct.macb, %struct.macb* %13, i32 0, i32 3
  %15 = load %struct.macb_queue*, %struct.macb_queue** %14, align 8
  store %struct.macb_queue* %15, %struct.macb_queue** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.macb*, %struct.macb** %3, align 8
  %17 = getelementptr inbounds %struct.macb, %struct.macb* %16, i32 0, i32 3
  %18 = load %struct.macb_queue*, %struct.macb_queue** %17, align 8
  store %struct.macb_queue* %18, %struct.macb_queue** %5, align 8
  br label %19

19:                                               ; preds = %37, %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.macb*, %struct.macb** %3, align 8
  %22 = getelementptr inbounds %struct.macb, %struct.macb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %27 = load i32, i32* @IDR, align 4
  %28 = load %struct.macb*, %struct.macb** %3, align 8
  %29 = getelementptr inbounds %struct.macb, %struct.macb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MACB_TX_INT_FLAGS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HRESP, align 4
  %34 = call i32 @MACB_BIT(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i32 @queue_writel(%struct.macb_queue* %26, i32 %27, i32 %35)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %41 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %40, i32 1
  store %struct.macb_queue* %41, %struct.macb_queue** %5, align 8
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.macb*, %struct.macb** %3, align 8
  %44 = load i32, i32* @NCR, align 4
  %45 = call i32 @macb_readl(%struct.macb* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @RE, align 4
  %47 = call i32 @MACB_BIT(i32 %46)
  %48 = load i32, i32* @TE, align 4
  %49 = call i32 @MACB_BIT(i32 %48)
  %50 = or i32 %47, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.macb*, %struct.macb** %3, align 8
  %55 = load i32, i32* @NCR, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @macb_writel(%struct.macb* %54, i32 %55, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %58)
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @netif_carrier_off(%struct.net_device* %60)
  %62 = load %struct.macb*, %struct.macb** %3, align 8
  %63 = getelementptr inbounds %struct.macb, %struct.macb* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.macb.0*)*, i32 (%struct.macb.0*)** %64, align 8
  %66 = load %struct.macb*, %struct.macb** %3, align 8
  %67 = bitcast %struct.macb* %66 to %struct.macb.0*
  %68 = call i32 %65(%struct.macb.0* %67)
  store i32 0, i32* %6, align 4
  %69 = load %struct.macb*, %struct.macb** %3, align 8
  %70 = getelementptr inbounds %struct.macb, %struct.macb* %69, i32 0, i32 3
  %71 = load %struct.macb_queue*, %struct.macb_queue** %70, align 8
  store %struct.macb_queue* %71, %struct.macb_queue** %5, align 8
  br label %72

72:                                               ; preds = %104, %42
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.macb*, %struct.macb** %3, align 8
  %75 = getelementptr inbounds %struct.macb, %struct.macb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %80 = load i32, i32* @RBQP, align 4
  %81 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %82 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @lower_32_bits(i32 %83)
  %85 = call i32 @queue_writel(%struct.macb_queue* %79, i32 %80, i32 %84)
  %86 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %87 = load i32, i32* @TBQP, align 4
  %88 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %89 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @lower_32_bits(i32 %90)
  %92 = call i32 @queue_writel(%struct.macb_queue* %86, i32 %87, i32 %91)
  %93 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %94 = load i32, i32* @IER, align 4
  %95 = load %struct.macb*, %struct.macb** %3, align 8
  %96 = getelementptr inbounds %struct.macb, %struct.macb* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MACB_TX_INT_FLAGS, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @HRESP, align 4
  %101 = call i32 @MACB_BIT(i32 %100)
  %102 = or i32 %99, %101
  %103 = call i32 @queue_writel(%struct.macb_queue* %93, i32 %94, i32 %102)
  br label %104

104:                                              ; preds = %78
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %108 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %107, i32 1
  store %struct.macb_queue* %108, %struct.macb_queue** %5, align 8
  br label %72

109:                                              ; preds = %72
  %110 = load i32, i32* @RE, align 4
  %111 = call i32 @MACB_BIT(i32 %110)
  %112 = load i32, i32* @TE, align 4
  %113 = call i32 @MACB_BIT(i32 %112)
  %114 = or i32 %111, %113
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load %struct.macb*, %struct.macb** %3, align 8
  %118 = load i32, i32* @NCR, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @macb_writel(%struct.macb* %117, i32 %118, i32 %119)
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = call i32 @netif_carrier_on(%struct.net_device* %121)
  %123 = load %struct.net_device*, %struct.net_device** %4, align 8
  %124 = call i32 @netif_tx_start_all_queues(%struct.net_device* %123)
  ret void
}

declare dso_local i32 @queue_writel(%struct.macb_queue*, i32, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
