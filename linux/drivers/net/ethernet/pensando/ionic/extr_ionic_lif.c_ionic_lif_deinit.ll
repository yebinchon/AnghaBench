; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IONIC_LIF_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*)* @ionic_lif_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_lif_deinit(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  %3 = load i32, i32* @IONIC_LIF_INITED, align 4
  %4 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %5 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @test_bit(i32 %3, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load i32, i32* @IONIC_LIF_INITED, align 4
  %12 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %13 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clear_bit(i32 %11, i32 %14)
  %16 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %17 = call i32 @ionic_rx_filters_deinit(%struct.ionic_lif* %16)
  %18 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %19 = call i32 @ionic_lif_rss_deinit(%struct.ionic_lif* %18)
  %20 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %21 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @napi_disable(i32* %23)
  %25 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %26 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %27 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @ionic_lif_qcq_deinit(%struct.ionic_lif* %25, %struct.TYPE_2__* %28)
  %30 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %31 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %32 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @ionic_lif_qcq_deinit(%struct.ionic_lif* %30, %struct.TYPE_2__* %33)
  %35 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %36 = call i32 @ionic_lif_reset(%struct.ionic_lif* %35)
  br label %37

37:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @ionic_rx_filters_deinit(%struct.ionic_lif*) #1

declare dso_local i32 @ionic_lif_rss_deinit(%struct.ionic_lif*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ionic_lif_qcq_deinit(%struct.ionic_lif*, %struct.TYPE_2__*) #1

declare dso_local i32 @ionic_lif_reset(%struct.ionic_lif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
