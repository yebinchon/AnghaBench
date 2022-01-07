; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cosm_device = type { i64 }

@MIC_LAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@cosm_state_string = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cosm_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.cosm_device* @dev_get_drvdata(%struct.device* %9)
  store %struct.cosm_device* %10, %struct.cosm_device** %8, align 8
  %11 = load %struct.cosm_device*, %struct.cosm_device** %8, align 8
  %12 = icmp ne %struct.cosm_device* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.cosm_device*, %struct.cosm_device** %8, align 8
  %15 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MIC_LAST, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %32

22:                                               ; preds = %13
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32*, i32** @cosm_state_string, align 8
  %26 = load %struct.cosm_device*, %struct.cosm_device** %8, align 8
  %27 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @scnprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %22, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.cosm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
