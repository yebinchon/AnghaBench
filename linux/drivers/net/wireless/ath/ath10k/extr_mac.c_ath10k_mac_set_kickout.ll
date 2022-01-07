; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_kickout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_kickout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ATH10K_KICKOUT_THRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to set kickout threshold on vdev %i: %d\0A\00", align 1
@ATH10K_KEEPALIVE_MIN_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"failed to set keepalive minimum idle time on vdev %i: %d\0A\00", align 1
@ATH10K_KEEPALIVE_MAX_IDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"failed to set keepalive maximum idle time on vdev %i: %d\0A\00", align 1
@ATH10K_KEEPALIVE_MAX_UNRESPONSIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"failed to set keepalive maximum unresponsive time on vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_mac_set_kickout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_set_kickout(%struct.ath10k_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  %7 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %7, i32 0, i32 1
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %4, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ATH10K_KICKOUT_THRESHOLD, align 4
  %19 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %16, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %24 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ath10k_warn(%struct.ath10k* %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %103

30:                                               ; preds = %1
  %31 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %38 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %39 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ATH10K_KEEPALIVE_MIN_IDLE, align 4
  %43 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %37, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %30
  %47 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %48 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %49 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ath10k_warn(%struct.ath10k* %47, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %103

54:                                               ; preds = %30
  %55 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %63 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ATH10K_KEEPALIVE_MAX_IDLE, align 4
  %67 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %61, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %54
  %71 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %72 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %73 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ath10k_warn(%struct.ath10k* %71, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %103

78:                                               ; preds = %54
  %79 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %80 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  %85 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %86 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %87 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @ATH10K_KEEPALIVE_MAX_UNRESPONSIVE, align 4
  %91 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %85, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %78
  %95 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %96 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %97 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @ath10k_warn(%struct.ath10k* %95, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %103

102:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %94, %70, %46, %22
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @ath10k_wmi_pdev_set_param(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_set_param(%struct.ath10k*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
