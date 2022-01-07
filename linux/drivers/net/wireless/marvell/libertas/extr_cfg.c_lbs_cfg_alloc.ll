; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lbs_cfg80211_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot allocate wiphy\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wireless_dev* @lbs_cfg_alloc(%struct.device* %0) #0 {
  %2 = alloca %struct.wireless_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wireless_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.wireless_dev* @kzalloc(i32 4, i32 %6)
  store %struct.wireless_dev* %7, %struct.wireless_dev** %5, align 8
  %8 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %9 = icmp ne %struct.wireless_dev* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.wireless_dev* @ERR_PTR(i32 %12)
  store %struct.wireless_dev* %13, %struct.wireless_dev** %2, align 8
  br label %34

14:                                               ; preds = %1
  %15 = call i32 @wiphy_new(i32* @lbs_cfg80211_ops, i32 4)
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %14
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  store %struct.wireless_dev* %28, %struct.wireless_dev** %2, align 8
  br label %34

29:                                               ; preds = %22
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %31 = call i32 @kfree(%struct.wireless_dev* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.wireless_dev* @ERR_PTR(i32 %32)
  store %struct.wireless_dev* %33, %struct.wireless_dev** %2, align 8
  br label %34

34:                                               ; preds = %29, %27, %10
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  ret %struct.wireless_dev* %35
}

declare dso_local %struct.wireless_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local i32 @wiphy_new(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @kfree(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
