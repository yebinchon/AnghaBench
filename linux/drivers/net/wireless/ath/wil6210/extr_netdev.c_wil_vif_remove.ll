; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, i32, i32, i32, %struct.wil6210_vif**, i32 }
%struct.wil6210_vif = type { i64, i32, i32, i32, i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid MID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"MID %d not registered\0A\00", align 1
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@wil_status_napi_en = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_vif_remove(%struct.wil6210_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wil6210_vif*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %9 = call i32 @wil_has_active_ifaces(%struct.wil6210_priv* %8, i32 1, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %13 = call i64 @GET_MAX_VIFS(%struct.wil6210_priv* %12)
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @wil_err(%struct.wil6210_priv* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %103

19:                                               ; preds = %2
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %21 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %20, i32 0, i32 5
  %22 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %22, i64 %23
  %25 = load %struct.wil6210_vif*, %struct.wil6210_vif** %24, align 8
  store %struct.wil6210_vif* %25, %struct.wil6210_vif** %5, align 8
  %26 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %27 = icmp ne %struct.wil6210_vif* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @wil_err(%struct.wil6210_priv* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %103

32:                                               ; preds = %19
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %34 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %33, i32 0, i32 6
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %37 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %38 = call i32 @wil6210_disconnect(%struct.wil6210_vif* %36, i32* null, i32 %37)
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %40 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %39, i32 0, i32 6
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %43 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %42)
  store %struct.net_device* %43, %struct.net_device** %6, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = call i32 @unregister_netdevice(%struct.net_device* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %32
  %49 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %50 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %55 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %56 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @wmi_port_delete(%struct.wil6210_priv* %54, i64 %57)
  br label %59

59:                                               ; preds = %53, %48, %32
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %61 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %60, i32 0, i32 1
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %64 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %63, i32 0, i32 5
  %65 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %65, i64 %66
  store %struct.wil6210_vif* null, %struct.wil6210_vif** %67, align 8
  %68 = call i32 (...) @wmb()
  %69 = load i32, i32* @wil_status_napi_en, align 4
  %70 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %71 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @test_bit(i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %59
  %76 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %77 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %76, i32 0, i32 3
  %78 = call i32 @napi_synchronize(i32* %77)
  %79 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %80 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %79, i32 0, i32 2
  %81 = call i32 @napi_synchronize(i32* %80)
  br label %82

82:                                               ; preds = %75, %59
  %83 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %84 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %87 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %86, i32 0, i32 0
  %88 = call i32 @flush_work(i32* %87)
  %89 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %90 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %89, i32 0, i32 4
  %91 = call i32 @del_timer_sync(i32* %90)
  %92 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %93 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %92, i32 0, i32 3
  %94 = call i32 @cancel_work_sync(i32* %93)
  %95 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %96 = call i32 @wil_probe_client_flush(%struct.wil6210_vif* %95)
  %97 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %98 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %97, i32 0, i32 2
  %99 = call i32 @cancel_work_sync(i32* %98)
  %100 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %101 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %100, i32 0, i32 1
  %102 = call i32 @cancel_work_sync(i32* %101)
  br label %103

103:                                              ; preds = %82, %28, %15
  ret void
}

declare dso_local i32 @wil_has_active_ifaces(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil6210_disconnect(%struct.wil6210_vif*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @wmi_port_delete(%struct.wil6210_priv*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @wil_probe_client_flush(%struct.wil6210_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
