; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_show_associate_remote.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_show_associate_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.imon_context = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"associating\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"closed\0A\00", align 1
@.str.2 = private unnamed_addr constant [111 x i8] c"Visit http://www.lirc.org/html/imon-24g.html for instructions on how to associate your iMON 2.4G DT/LT remote\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_associate_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_associate_remote(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.imon_context*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.imon_context* @dev_get_drvdata(%struct.device* %9)
  store %struct.imon_context* %10, %struct.imon_context** %8, align 8
  %11 = load %struct.imon_context*, %struct.imon_context** %8, align 8
  %12 = icmp ne %struct.imon_context* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.imon_context*, %struct.imon_context** %8, align 8
  %18 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.imon_context*, %struct.imon_context** %8, align 8
  %21 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = call i32 @strscpy(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %32

28:                                               ; preds = %16
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 @strscpy(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @dev_info(%struct.device* %33, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.imon_context*, %struct.imon_context** %8, align 8
  %36 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.imon_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strscpy(i8*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
