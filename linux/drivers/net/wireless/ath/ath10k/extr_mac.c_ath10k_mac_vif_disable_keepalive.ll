; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_disable_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_disable_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i64, i32, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_sta_keepalive_arg = type { i32, i32, i32, i32 }

@WMI_VDEV_TYPE_STA = common dso_local global i64 0, align 8
@WMI_SERVICE_STA_KEEP_ALIVE = common dso_local global i32 0, align 4
@WMI_STA_KEEPALIVE_METHOD_NULL_FRAME = common dso_local global i32 0, align 4
@WMI_STA_KEEPALIVE_INTERVAL_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to submit keepalive on vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_mac_vif_disable_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_vif_disable_keepalive(%struct.ath10k_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_sta_keepalive_arg, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  %7 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %7, i32 0, i32 2
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %4, align 8
  %10 = bitcast %struct.wmi_sta_keepalive_arg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %11, i32 0, i32 2
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 1
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WMI_VDEV_TYPE_STA, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  %23 = load i32, i32* @WMI_SERVICE_STA_KEEP_ALIVE, align 4
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @test_bit(i32 %23, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %54

31:                                               ; preds = %22
  %32 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %33 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %5, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %5, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @WMI_STA_KEEPALIVE_METHOD_NULL_FRAME, align 4
  %38 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %5, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @WMI_STA_KEEPALIVE_INTERVAL_DISABLE, align 4
  %40 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %5, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %42 = call i32 @ath10k_wmi_sta_keepalive(%struct.ath10k* %41, %struct.wmi_sta_keepalive_arg* %5)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %31
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %48 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ath10k_warn(%struct.ath10k* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %45, %30, %21
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @test_bit(i32, i32) #2

declare dso_local i32 @ath10k_wmi_sta_keepalive(%struct.ath10k*, %struct.wmi_sta_keepalive_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
