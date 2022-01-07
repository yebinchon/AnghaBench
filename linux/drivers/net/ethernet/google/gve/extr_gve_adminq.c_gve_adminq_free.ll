; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gve_priv = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gve_adminq_free(%struct.device* %0, %struct.gve_priv* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.gve_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.gve_priv* %1, %struct.gve_priv** %4, align 8
  %5 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %6 = call i32 @gve_get_admin_queue_ok(%struct.gve_priv* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %23

9:                                                ; preds = %2
  %10 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %11 = call i32 @gve_adminq_release(%struct.gve_priv* %10)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %15 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %18 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_free_coherent(%struct.device* %12, i32 %13, i32 %16, i32 %19)
  %21 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %22 = call i32 @gve_clear_admin_queue_ok(%struct.gve_priv* %21)
  br label %23

23:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @gve_get_admin_queue_ok(%struct.gve_priv*) #1

declare dso_local i32 @gve_adminq_release(%struct.gve_priv*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @gve_clear_admin_queue_ok(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
