; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_alloc_rx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_alloc_rx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.spider_net_descr_chain }
%struct.spider_net_descr_chain = type { %struct.TYPE_6__*, %struct.spider_net_descr* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.spider_net_descr = type { %struct.spider_net_descr*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*)* @spider_net_alloc_rx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_alloc_rx_skbs(%struct.spider_net_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spider_net_card*, align 8
  %4 = alloca %struct.spider_net_descr_chain*, align 8
  %5 = alloca %struct.spider_net_descr*, align 8
  %6 = alloca %struct.spider_net_descr*, align 8
  store %struct.spider_net_card* %0, %struct.spider_net_card** %3, align 8
  %7 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %8 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %7, i32 0, i32 0
  store %struct.spider_net_descr_chain* %8, %struct.spider_net_descr_chain** %4, align 8
  %9 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %10 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %9, i32 0, i32 1
  %11 = load %struct.spider_net_descr*, %struct.spider_net_descr** %10, align 8
  store %struct.spider_net_descr* %11, %struct.spider_net_descr** %5, align 8
  %12 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  store %struct.spider_net_descr* %12, %struct.spider_net_descr** %6, align 8
  br label %13

13:                                               ; preds = %26, %1
  %14 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %15 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %18 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %16, i32* %22, align 4
  %23 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %24 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %23, i32 0, i32 0
  %25 = load %struct.spider_net_descr*, %struct.spider_net_descr** %24, align 8
  store %struct.spider_net_descr* %25, %struct.spider_net_descr** %6, align 8
  br label %26

26:                                               ; preds = %13
  %27 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %28 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %29 = icmp ne %struct.spider_net_descr* %27, %28
  br i1 %29, label %13, label %30

30:                                               ; preds = %26
  %31 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %32 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %33 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i64 @spider_net_prepare_rx_descr(%struct.spider_net_card* %31, %struct.TYPE_6__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %51

38:                                               ; preds = %30
  %39 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %40 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %45 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %44, i32 0, i32 0
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %45, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %48 = call i32 @spider_net_refill_rx_chain(%struct.spider_net_card* %47)
  %49 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %50 = call i32 @spider_net_enable_rxdmac(%struct.spider_net_card* %49)
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %37
  %52 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %53 = call i32 @spider_net_free_rx_chain_contents(%struct.spider_net_card* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @spider_net_prepare_rx_descr(%struct.spider_net_card*, %struct.TYPE_6__*) #1

declare dso_local i32 @spider_net_refill_rx_chain(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_enable_rxdmac(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_free_rx_chain_contents(%struct.spider_net_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
