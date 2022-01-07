; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, %struct.wireless_dev* }
%struct.wireless_dev = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_cfg_free(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.wireless_dev*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %4 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %5 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %4, i32 0, i32 1
  %6 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  store %struct.wireless_dev* %6, %struct.wireless_dev** %3, align 8
  %7 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %8 = icmp ne %struct.wireless_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @wiphy_unregister(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @wiphy_free(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %32 = call i32 @kfree(%struct.wireless_dev* %31)
  br label %33

33:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @wiphy_unregister(i64) #1

declare dso_local i32 @wiphy_free(i64) #1

declare dso_local i32 @kfree(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
