; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_probe_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_probe_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i32, i32, i32, i32 }
%struct.wil_probe_client_req = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"probe_client: %pM => CID %d MID %d\0A\00", align 1
@ENOLINK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32*)* @wil_cfg80211_probe_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_probe_client(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wil6210_priv*, align 8
  %11 = alloca %struct.wil6210_vif*, align 8
  %12 = alloca %struct.wil_probe_client_req*, align 8
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %15 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %14)
  store %struct.wil6210_priv* %15, %struct.wil6210_priv** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %16)
  store %struct.wil6210_vif* %17, %struct.wil6210_vif** %11, align 8
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %19 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %20 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @wil_find_cid(%struct.wil6210_priv* %18, i32 %21, i32* %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %28 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %25, i32 %26, i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @ENOLINK, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %72

36:                                               ; preds = %4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.wil_probe_client_req* @kzalloc(i32 12, i32 %37)
  store %struct.wil_probe_client_req* %38, %struct.wil_probe_client_req** %12, align 8
  %39 = load %struct.wil_probe_client_req*, %struct.wil_probe_client_req** %12, align 8
  %40 = icmp ne %struct.wil_probe_client_req* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %72

44:                                               ; preds = %36
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.wil_probe_client_req*, %struct.wil_probe_client_req** %12, align 8
  %47 = getelementptr inbounds %struct.wil_probe_client_req, %struct.wil_probe_client_req* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.wil_probe_client_req*, %struct.wil_probe_client_req** %12, align 8
  %50 = getelementptr inbounds %struct.wil_probe_client_req, %struct.wil_probe_client_req* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %52 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.wil_probe_client_req*, %struct.wil_probe_client_req** %12, align 8
  %55 = getelementptr inbounds %struct.wil_probe_client_req, %struct.wil_probe_client_req* %54, i32 0, i32 2
  %56 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %57 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %56, i32 0, i32 2
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %60 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.wil_probe_client_req*, %struct.wil_probe_client_req** %12, align 8
  %63 = getelementptr inbounds %struct.wil_probe_client_req, %struct.wil_probe_client_req* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %67 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %70 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %69, i32 0, i32 0
  %71 = call i32 @queue_work(i32 %68, i32* %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %44, %41, %33
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @wil_find_cid(%struct.wil6210_priv*, i32, i32*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32*, i32, i32) #1

declare dso_local %struct.wil_probe_client_req* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
