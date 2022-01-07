; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_show_rev_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_show_rev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.c2port_device = type { i32, i32, i32, i32 }

@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"cannot read from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @c2port_show_rev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c2port_show_rev_id(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.c2port_device*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.c2port_device* @dev_get_drvdata(%struct.device* %10)
  store %struct.c2port_device* %11, %struct.c2port_device** %8, align 8
  %12 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %13 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @EBUSY, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %21 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @__c2port_show_rev_id(%struct.c2port_device* %23, i8* %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %27 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i64, i64* %9, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %33 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %36 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %31, %19
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %39, %16
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local %struct.c2port_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__c2port_show_rev_id(%struct.c2port_device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
