; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_turnup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_turnup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { %struct.gve_notify_block*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.gve_notify_block = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*)* @gve_turnup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_turnup(%struct.gve_priv* %0) #0 {
  %2 = alloca %struct.gve_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gve_notify_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gve_notify_block*, align 8
  store %struct.gve_priv* %0, %struct.gve_priv** %2, align 8
  %8 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %9 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @netif_tx_start_all_queues(i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %15 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %12
  %20 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @gve_tx_idx_to_ntfy(%struct.gve_priv* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %24 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %23, i32 0, i32 0
  %25 = load %struct.gve_notify_block*, %struct.gve_notify_block** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %25, i64 %27
  store %struct.gve_notify_block* %28, %struct.gve_notify_block** %5, align 8
  %29 = load %struct.gve_notify_block*, %struct.gve_notify_block** %5, align 8
  %30 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %29, i32 0, i32 0
  %31 = call i32 @napi_enable(i32* %30)
  %32 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %33 = load %struct.gve_notify_block*, %struct.gve_notify_block** %5, align 8
  %34 = call i32 @gve_irq_doorbell(%struct.gve_priv* %32, %struct.gve_notify_block* %33)
  %35 = call i32 @iowrite32be(i32 0, i32 %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %12

39:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %64, %39
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %43 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @gve_rx_idx_to_ntfy(%struct.gve_priv* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %52 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %51, i32 0, i32 0
  %53 = load %struct.gve_notify_block*, %struct.gve_notify_block** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %53, i64 %55
  store %struct.gve_notify_block* %56, %struct.gve_notify_block** %7, align 8
  %57 = load %struct.gve_notify_block*, %struct.gve_notify_block** %7, align 8
  %58 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %57, i32 0, i32 0
  %59 = call i32 @napi_enable(i32* %58)
  %60 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %61 = load %struct.gve_notify_block*, %struct.gve_notify_block** %7, align 8
  %62 = call i32 @gve_irq_doorbell(%struct.gve_priv* %60, %struct.gve_notify_block* %61)
  %63 = call i32 @iowrite32be(i32 0, i32 %62)
  br label %64

64:                                               ; preds = %47
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %40

67:                                               ; preds = %40
  %68 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %69 = call i32 @gve_set_napi_enabled(%struct.gve_priv* %68)
  ret void
}

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @gve_tx_idx_to_ntfy(%struct.gve_priv*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i32 @gve_irq_doorbell(%struct.gve_priv*, %struct.gve_notify_block*) #1

declare dso_local i32 @gve_rx_idx_to_ntfy(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_set_napi_enabled(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
