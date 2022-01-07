; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_has_other_active_ifaces.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_has_other_active_ifaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil6210_vif** }
%struct.wil6210_vif = type { i32 }
%struct.net_device = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_has_other_active_ifaces(%struct.wil6210_priv* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wil6210_vif*, align 8
  %12 = alloca %struct.net_device*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %55, %4
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %16 = call i32 @GET_MAX_VIFS(%struct.wil6210_priv* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %13
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %20 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %19, i32 0, i32 0
  %21 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %21, i64 %23
  %25 = load %struct.wil6210_vif*, %struct.wil6210_vif** %24, align 8
  store %struct.wil6210_vif* %25, %struct.wil6210_vif** %11, align 8
  %26 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %27 = icmp ne %struct.wil6210_vif* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %18
  %29 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %30 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %29)
  store %struct.net_device* %30, %struct.net_device** %12, align 8
  %31 = load %struct.net_device*, %struct.net_device** %12, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = icmp ne %struct.net_device* %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.net_device*, %struct.net_device** %12, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_UP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37, %34
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.net_device*, %struct.net_device** %12, align 8
  %49 = call i64 @netif_carrier_ok(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %37
  store i32 1, i32* %5, align 4
  br label %59

52:                                               ; preds = %47, %44
  br label %53

53:                                               ; preds = %52, %28
  br label %54

54:                                               ; preds = %53, %18
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %13

58:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
