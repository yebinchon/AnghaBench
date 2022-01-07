; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_dev_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_dev_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.rc_dev = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"NAME=%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DRV_NAME=%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"DEV_NAME=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @rc_dev_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_dev_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobj_uevent_env*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.rc_dev* @to_rc_dev(%struct.device* %6)
  store %struct.rc_dev* %7, %struct.rc_dev** %5, align 8
  %8 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %15 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %21 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %26 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %36 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  ret i32 0
}

declare dso_local %struct.rc_dev* @to_rc_dev(%struct.device*) #1

declare dso_local i32 @ADD_HOTPLUG_VAR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
