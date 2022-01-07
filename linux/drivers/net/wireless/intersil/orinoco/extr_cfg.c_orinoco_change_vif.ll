; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_cfg.c_orinoco_change_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_cfg.c_orinoco_change_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.vif_params = type { i32 }
%struct.orinoco_private = type { i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@force_monitor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Monitor mode support is buggy in this firmware, not enabling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, %struct.vif_params*)* @orinoco_change_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_change_vif(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %14 = call %struct.orinoco_private* @wiphy_priv(%struct.wiphy* %13)
  store %struct.orinoco_private* %14, %struct.orinoco_private** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %16 = call i64 @orinoco_lock(%struct.orinoco_private* %15, i64* %12)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %70

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %52 [
    i32 130, label %23
    i32 128, label %37
    i32 129, label %38
  ]

23:                                               ; preds = %21
  %24 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %25 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %30 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %28, %23
  br label %55

37:                                               ; preds = %21
  br label %55

38:                                               ; preds = %21
  %39 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %40 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* @force_monitor, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %48 = call i32 @wiphy_warn(%struct.wiphy* %47, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %46, %43, %38
  br label %55

52:                                               ; preds = %21
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %51, %37, %36
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %61 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %63 = call i32 @set_port_type(%struct.orinoco_private* %62)
  %64 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %65 = call i32 @orinoco_commit(%struct.orinoco_private* %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %58, %55
  %67 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %68 = call i32 @orinoco_unlock(%struct.orinoco_private* %67, i64* %12)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %18
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.orinoco_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @wiphy_warn(%struct.wiphy*, i8*) #1

declare dso_local i32 @set_port_type(%struct.orinoco_private*) #1

declare dso_local i32 @orinoco_commit(%struct.orinoco_private*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
