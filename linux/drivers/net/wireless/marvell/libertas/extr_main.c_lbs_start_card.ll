; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_start_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_start_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.net_device* }
%struct.net_device = type { i32 }

@lbs_disablemesh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: mesh disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot register device\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Marvell WLAN 802.11 adapter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_start_card(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 0
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %9 = call i32 @lbs_setup_firmware(%struct.lbs_private* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* @lbs_disablemesh, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %18 = call i32 @lbs_init_mesh(%struct.lbs_private* %17)
  br label %24

19:                                               ; preds = %13
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %16
  %25 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %26 = call i32 @lbs_cfg_register(%struct.lbs_private* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %44

31:                                               ; preds = %24
  %32 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %33 = call i64 @lbs_mesh_activated(%struct.lbs_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %37 = call i32 @lbs_start_mesh(%struct.lbs_private* %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @lbs_debugfs_init_one(%struct.lbs_private* %39, %struct.net_device* %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @netdev_info(%struct.net_device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %29, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @lbs_setup_firmware(%struct.lbs_private*) #1

declare dso_local i32 @lbs_init_mesh(%struct.lbs_private*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @lbs_cfg_register(%struct.lbs_private*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @lbs_mesh_activated(%struct.lbs_private*) #1

declare dso_local i32 @lbs_start_mesh(%struct.lbs_private*) #1

declare dso_local i32 @lbs_debugfs_init_one(%struct.lbs_private*, %struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
