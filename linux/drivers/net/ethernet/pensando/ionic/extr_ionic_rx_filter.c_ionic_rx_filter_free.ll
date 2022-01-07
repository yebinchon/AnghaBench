; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_rx_filter.c_ionic_rx_filter_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_rx_filter.c_ionic_rx_filter_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ionic_rx_filter = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_rx_filter_free(%struct.ionic_lif* %0, %struct.ionic_rx_filter* %1) #0 {
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca %struct.ionic_rx_filter*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store %struct.ionic_rx_filter* %1, %struct.ionic_rx_filter** %4, align 8
  %6 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %7 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %4, align 8
  %12 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %11, i32 0, i32 1
  %13 = call i32 @hlist_del(i32* %12)
  %14 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %4, align 8
  %15 = getelementptr inbounds %struct.ionic_rx_filter, %struct.ionic_rx_filter* %14, i32 0, i32 0
  %16 = call i32 @hlist_del(i32* %15)
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.ionic_rx_filter*, %struct.ionic_rx_filter** %4, align 8
  %19 = call i32 @devm_kfree(%struct.device* %17, %struct.ionic_rx_filter* %18)
  ret void
}

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.ionic_rx_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
