; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_pm_wake_connected_net_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_pm_wake_connected_net_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, %struct.wil6210_vif** }
%struct.wil6210_vif = type { i32 }

@wil_vif_fwconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*)* @wil_pm_wake_connected_net_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_pm_wake_connected_net_queues(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_vif*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %6 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %11 = call i32 @GET_MAX_VIFS(%struct.wil6210_priv* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %15 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %14, i32 0, i32 1
  %16 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %16, i64 %18
  %20 = load %struct.wil6210_vif*, %struct.wil6210_vif** %19, align 8
  store %struct.wil6210_vif* %20, %struct.wil6210_vif** %4, align 8
  %21 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %22 = icmp ne %struct.wil6210_vif* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load i32, i32* @wil_vif_fwconnected, align 4
  %25 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %26 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @test_bit(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %32 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %33 = call i32 @wil_update_net_queues_bh(%struct.wil6210_priv* %31, %struct.wil6210_vif* %32, i32* null, i32 0)
  br label %34

34:                                               ; preds = %30, %23, %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %40 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wil_update_net_queues_bh(%struct.wil6210_priv*, %struct.wil6210_vif*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
