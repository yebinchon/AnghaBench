; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_vif_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_vif_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WOW_EVENT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"failed to issue wow wakeup for event %s on vdev %i: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to delete wow pattern %d for vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_wow_vif_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wow_vif_cleanup(%struct.ath10k_vif* %0) #0 {
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
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @WOW_EVENT_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ath10k_wmi_wow_add_wakeup_event(%struct.ath10k* %15, i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @wow_wakeup_event(i32 %25)
  %27 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ath10k_warn(%struct.ath10k* %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %68

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %10

37:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %64, %37
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %48 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ath10k_wmi_wow_del_pattern(%struct.ath10k* %46, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %58 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ath10k_warn(%struct.ath10k* %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %38

67:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %54, %23
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @ath10k_wmi_wow_add_wakeup_event(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32, i32) #1

declare dso_local i32 @wow_wakeup_event(i32) #1

declare dso_local i32 @ath10k_wmi_wow_del_pattern(%struct.ath10k*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
