; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_turndown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_turndown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, %struct.gve_notify_block*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.gve_notify_block = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*)* @gve_turndown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_turndown(%struct.gve_priv* %0) #0 {
  %2 = alloca %struct.gve_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gve_notify_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gve_notify_block*, align 8
  store %struct.gve_priv* %0, %struct.gve_priv** %2, align 8
  %8 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %9 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @netif_carrier_ok(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %15 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netif_carrier_off(i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %20 = call i32 @gve_get_napi_enabled(%struct.gve_priv* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %78

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %27 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @gve_tx_idx_to_ntfy(%struct.gve_priv* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %36 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %35, i32 0, i32 1
  %37 = load %struct.gve_notify_block*, %struct.gve_notify_block** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %37, i64 %39
  store %struct.gve_notify_block* %40, %struct.gve_notify_block** %5, align 8
  %41 = load %struct.gve_notify_block*, %struct.gve_notify_block** %5, align 8
  %42 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %41, i32 0, i32 0
  %43 = call i32 @napi_disable(i32* %42)
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %24

47:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %51 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @gve_rx_idx_to_ntfy(%struct.gve_priv* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %60 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %59, i32 0, i32 1
  %61 = load %struct.gve_notify_block*, %struct.gve_notify_block** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %61, i64 %63
  store %struct.gve_notify_block* %64, %struct.gve_notify_block** %7, align 8
  %65 = load %struct.gve_notify_block*, %struct.gve_notify_block** %7, align 8
  %66 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %65, i32 0, i32 0
  %67 = call i32 @napi_disable(i32* %66)
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %48

71:                                               ; preds = %48
  %72 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %73 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @netif_tx_disable(i32 %74)
  %76 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %77 = call i32 @gve_clear_napi_enabled(%struct.gve_priv* %76)
  br label %78

78:                                               ; preds = %71, %22
  ret void
}

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @gve_get_napi_enabled(%struct.gve_priv*) #1

declare dso_local i32 @gve_tx_idx_to_ntfy(%struct.gve_priv*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @gve_rx_idx_to_ntfy(%struct.gve_priv*, i32) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @gve_clear_napi_enabled(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
