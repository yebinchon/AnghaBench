; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_store_imon_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_store_imon_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.imon_context = type { i32, i64, i32 }

@ENODEV = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%u %u %u %u %u %u %u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_imon_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_imon_clock(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.imon_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.imon_context* @dev_get_drvdata(%struct.device* %19)
  store %struct.imon_context* %20, %struct.imon_context** %10, align 8
  %21 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %22 = icmp ne %struct.imon_context* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* @ENODEV, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %100

26:                                               ; preds = %4
  %27 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %28 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %31 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i64, i64* @ENODEV, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %11, align 8
  br label %95

37:                                               ; preds = %26
  %38 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %39 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* @EBUSY, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %11, align 8
  br label %95

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @sscanf(i8* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18)
  %49 = icmp ne i32 %48, 7
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %11, align 8
  br label %95

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  %55 = icmp ult i32 %54, 1
  br i1 %55, label %77, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = icmp ugt i32 %57, 12
  br i1 %58, label %77, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = icmp ult i32 %60, 1
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = icmp ugt i32 %63, 31
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = icmp ugt i32 %66, 6
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %16, align 4
  %70 = icmp ugt i32 %69, 23
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %17, align 4
  %73 = icmp ugt i32 %72, 59
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %18, align 4
  %76 = icmp ugt i32 %75, 59
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %71, %68, %65, %62, %59, %56, %53
  %78 = load i64, i64* @EINVAL, align 8
  %79 = sub i64 0, %78
  store i64 %79, i64* %11, align 8
  br label %95

80:                                               ; preds = %74
  %81 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %18, align 4
  %89 = call i64 @send_set_imon_clock(%struct.imon_context* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %95

93:                                               ; preds = %80
  %94 = load i64, i64* %9, align 8
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %93, %92, %77, %50, %42, %34
  %96 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %97 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i64, i64* %11, align 8
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %95, %23
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local %struct.imon_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @send_set_imon_clock(%struct.imon_context*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
