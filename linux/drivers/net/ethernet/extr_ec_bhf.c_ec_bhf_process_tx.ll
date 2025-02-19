; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_process_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_process_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_bhf_priv = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ec_bhf_priv*)* @ec_bhf_process_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ec_bhf_process_tx(%struct.ec_bhf_priv* %0) #0 {
  %2 = alloca %struct.ec_bhf_priv*, align 8
  store %struct.ec_bhf_priv* %0, %struct.ec_bhf_priv** %2, align 8
  %3 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @netif_queue_stopped(i32 %5)
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = call i32 (...) @smp_rmb()
  %11 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = call i64 @ec_bhf_desc_sent(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %9
  %21 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netif_wake_queue(i32 %23)
  br label %25

25:                                               ; preds = %20, %9
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_queue_stopped(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @ec_bhf_desc_sent(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
