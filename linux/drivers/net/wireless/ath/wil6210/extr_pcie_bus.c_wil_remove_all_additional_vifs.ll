; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pcie_bus.c_wil_remove_all_additional_vifs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pcie_bus.c_wil_remove_all_additional_vifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil6210_vif** }
%struct.wil6210_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*)* @wil_remove_all_additional_vifs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_remove_all_additional_vifs(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %8 = call i32 @GET_MAX_VIFS(%struct.wil6210_priv* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %5
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %12 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %11, i32 0, i32 0
  %13 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %13, i64 %15
  %17 = load %struct.wil6210_vif*, %struct.wil6210_vif** %16, align 8
  store %struct.wil6210_vif* %17, %struct.wil6210_vif** %3, align 8
  %18 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %19 = icmp ne %struct.wil6210_vif* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %22 = call i32 @wil_vif_prepare_stop(%struct.wil6210_vif* %21)
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %24 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %25 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wil_vif_remove(%struct.wil6210_priv* %23, i32 %26)
  br label %28

28:                                               ; preds = %20, %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  ret void
}

declare dso_local i32 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_vif_prepare_stop(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_vif_remove(%struct.wil6210_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
