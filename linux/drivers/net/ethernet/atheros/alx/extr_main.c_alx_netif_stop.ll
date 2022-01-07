; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_netif_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_netif_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_priv*)* @alx_netif_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_netif_stop(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %4 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %5 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @netif_trans_update(i32 %6)
  %8 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %9 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @netif_carrier_ok(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %15 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netif_carrier_off(i32 %16)
  %18 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %19 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @netif_tx_disable(i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %38, %13
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %25 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %30 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @napi_disable(i32* %36)
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %22

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @netif_trans_update(i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
