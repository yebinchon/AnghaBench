; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_selftest_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_selftest_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lis3lv02d = type { i32 }

@lis3lv02d_selftest_show.ok = internal constant [3 x i8] c"OK\00", align 1
@lis3lv02d_selftest_show.fail = internal constant [5 x i8] c"FAIL\00", align 1
@lis3lv02d_selftest_show.irq = internal constant [9 x i8] c"FAIL_IRQ\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"%s %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lis3lv02d_selftest_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3lv02d_selftest_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lis3lv02d*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.lis3lv02d* @dev_get_drvdata(%struct.device* %10)
  store %struct.lis3lv02d* %11, %struct.lis3lv02d** %7, align 8
  %12 = load %struct.lis3lv02d*, %struct.lis3lv02d** %7, align 8
  %13 = call i32 @lis3lv02d_sysfs_poweron(%struct.lis3lv02d* %12)
  %14 = load %struct.lis3lv02d*, %struct.lis3lv02d** %7, align 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %16 = call i32 @lis3lv02d_selftest(%struct.lis3lv02d* %14, i32* %15)
  switch i32 %16, label %20 [
    i32 130, label %17
    i32 129, label %18
    i32 128, label %19
  ]

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @lis3lv02d_selftest_show.fail, i64 0, i64 0), i8** %9, align 8
  br label %21

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @lis3lv02d_selftest_show.irq, i64 0, i64 0), i8** %9, align 8
  br label %21

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %3, %19
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @lis3lv02d_selftest_show.ok, i64 0, i64 0), i8** %9, align 8
  br label %21

21:                                               ; preds = %20, %18, %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25, i32 %27, i32 %29)
  ret i32 %30
}

declare dso_local %struct.lis3lv02d* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lis3lv02d_sysfs_poweron(%struct.lis3lv02d*) #1

declare dso_local i32 @lis3lv02d_selftest(%struct.lis3lv02d*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
