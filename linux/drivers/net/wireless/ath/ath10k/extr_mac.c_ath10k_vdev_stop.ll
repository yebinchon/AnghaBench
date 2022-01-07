; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_vdev_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_vdev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.ath10k* }
%struct.ath10k = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to stop WMI vdev %i: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to synchronize setup for vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_vdev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_vdev_stop(%struct.ath10k_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  %6 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %6, i32 0, i32 1
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 3
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 2
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 1
  %17 = call i32 @reinit_completion(i32* %16)
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ath10k_wmi_vdev_stop(%struct.ath10k* %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %27 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %66

33:                                               ; preds = %1
  %34 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %35 = call i32 @ath10k_vdev_setup_sync(%struct.ath10k* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %40 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %41 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ath10k_warn(%struct.ath10k* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %66

46:                                               ; preds = %33
  %47 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %54 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %46
  %58 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %63 = call i32 @ath10k_recalc_radar_detection(%struct.ath10k* %62)
  br label %64

64:                                               ; preds = %57, %46
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %38, %25
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ath10k_wmi_vdev_stop(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_vdev_setup_sync(%struct.ath10k*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_recalc_radar_detection(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
