; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_alloc_rx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_alloc_rx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { %struct.TYPE_2__*, %struct.gelic_descr_chain }
%struct.TYPE_2__ = type { i32 }
%struct.gelic_descr_chain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gelic_card*)* @gelic_card_alloc_rx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gelic_card_alloc_rx_skbs(%struct.gelic_card* %0) #0 {
  %2 = alloca %struct.gelic_card*, align 8
  %3 = alloca %struct.gelic_descr_chain*, align 8
  %4 = alloca i32, align 4
  store %struct.gelic_card* %0, %struct.gelic_card** %2, align 8
  %5 = load %struct.gelic_card*, %struct.gelic_card** %2, align 8
  %6 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %5, i32 0, i32 1
  store %struct.gelic_descr_chain* %6, %struct.gelic_descr_chain** %3, align 8
  %7 = load %struct.gelic_card*, %struct.gelic_card** %2, align 8
  %8 = call i32 @gelic_card_fill_rx_chain(%struct.gelic_card* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.gelic_card*, %struct.gelic_card** %2, align 8
  %10 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.gelic_descr_chain*, %struct.gelic_descr_chain** %3, align 8
  %15 = getelementptr inbounds %struct.gelic_descr_chain, %struct.gelic_descr_chain* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

declare dso_local i32 @gelic_card_fill_rx_chain(%struct.gelic_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
