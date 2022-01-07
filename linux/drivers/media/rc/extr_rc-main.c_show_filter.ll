; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_show_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_show_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rc_dev = type { i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.rc_filter_attribute = type { i64, i64 }

@RC_FILTER_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_filter(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca %struct.rc_filter_attribute*, align 8
  %9 = alloca %struct.rc_scancode_filter*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.rc_dev* @to_rc_dev(%struct.device* %11)
  store %struct.rc_dev* %12, %struct.rc_dev** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %14 = call %struct.rc_filter_attribute* @to_rc_filter_attr(%struct.device_attribute* %13)
  store %struct.rc_filter_attribute* %14, %struct.rc_filter_attribute** %8, align 8
  %15 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %16 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.rc_filter_attribute*, %struct.rc_filter_attribute** %8, align 8
  %19 = getelementptr inbounds %struct.rc_filter_attribute, %struct.rc_filter_attribute* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RC_FILTER_NORMAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %25 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %24, i32 0, i32 2
  store %struct.rc_scancode_filter* %25, %struct.rc_scancode_filter** %9, align 8
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %28 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %27, i32 0, i32 1
  store %struct.rc_scancode_filter* %28, %struct.rc_scancode_filter** %9, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.rc_filter_attribute*, %struct.rc_filter_attribute** %8, align 8
  %31 = getelementptr inbounds %struct.rc_filter_attribute, %struct.rc_filter_attribute* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %9, align 8
  %36 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %9, align 8
  %40 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %47)
  ret i32 %48
}

declare dso_local %struct.rc_dev* @to_rc_dev(%struct.device*) #1

declare dso_local %struct.rc_filter_attribute* @to_rc_filter_attr(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
