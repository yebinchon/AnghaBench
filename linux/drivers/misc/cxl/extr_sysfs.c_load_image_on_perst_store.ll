; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_load_image_on_perst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_load_image_on_perst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cxl = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"factory\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @load_image_on_perst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_image_on_perst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cxl*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.cxl* @to_cxl_adapter(%struct.device* %12)
  store %struct.cxl* %13, %struct.cxl** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.cxl*, %struct.cxl** %10, align 8
  %19 = getelementptr inbounds %struct.cxl, %struct.cxl* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %43

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.cxl*, %struct.cxl** %10, align 8
  %26 = getelementptr inbounds %struct.cxl, %struct.cxl* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.cxl*, %struct.cxl** %10, align 8
  %28 = getelementptr inbounds %struct.cxl, %struct.cxl* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.cxl*, %struct.cxl** %10, align 8
  %35 = getelementptr inbounds %struct.cxl, %struct.cxl* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.cxl*, %struct.cxl** %10, align 8
  %37 = getelementptr inbounds %struct.cxl, %struct.cxl* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %24
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.cxl*, %struct.cxl** %10, align 8
  %45 = call i32 @cxl_update_image_control(%struct.cxl* %44)
  store i32 %45, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %47, %38
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.cxl* @to_cxl_adapter(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @cxl_update_image_control(%struct.cxl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
