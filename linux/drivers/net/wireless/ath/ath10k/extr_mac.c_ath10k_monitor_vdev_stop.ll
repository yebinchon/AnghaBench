; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_monitor_vdev_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_monitor_vdev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to put down monitor vdev %i: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to to request monitor vdev %i stop: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"failed to synchronize monitor vdev %i stop: %d\0A\00", align 1
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"mac monitor vdev %i stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_monitor_vdev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_monitor_vdev_stop(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %4, i32 0, i32 3
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ath10k_wmi_vdev_down(%struct.ath10k* %7, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %16 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ath10k_warn(%struct.ath10k* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 2
  %24 = call i32 @reinit_completion(i32* %23)
  %25 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 1
  %27 = call i32 @reinit_completion(i32* %26)
  %28 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %29 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ath10k_wmi_vdev_stop(%struct.ath10k* %28, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %37 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @ath10k_warn(%struct.ath10k* %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %21
  %43 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %44 = call i32 @ath10k_vdev_setup_sync(%struct.ath10k* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %49 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @ath10k_warn(%struct.ath10k* %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %56 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %57 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %58 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ath10k_dbg(%struct.ath10k* %55, i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_wmi_vdev_down(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ath10k_wmi_vdev_stop(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_vdev_setup_sync(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
