; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_free_qpls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_free_qpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*)* @gve_free_qpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_free_qpls(%struct.gve_priv* %0) #0 {
  %2 = alloca %struct.gve_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %2, align 8
  %5 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %6 = call i32 @gve_num_tx_qpls(%struct.gve_priv* %5)
  %7 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %8 = call i32 @gve_num_rx_qpls(%struct.gve_priv* %7)
  %9 = add nsw i32 %6, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %11 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kvfree(i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %23, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @gve_free_queue_page_list(%struct.gve_priv* %20, i32 %21)
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %28 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kvfree(i32 %29)
  ret void
}

declare dso_local i32 @gve_num_tx_qpls(%struct.gve_priv*) #1

declare dso_local i32 @gve_num_rx_qpls(%struct.gve_priv*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @gve_free_queue_page_list(%struct.gve_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
