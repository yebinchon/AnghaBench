; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_set_component_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_set_component_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.enclosure_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)* }
%struct.enclosure_component = type { i32 }

@enclosure_status = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_component_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_component_status(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.enclosure_device*, align 8
  %11 = alloca %struct.enclosure_component*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.enclosure_device* @to_enclosure_device(i32 %15)
  store %struct.enclosure_device* %16, %struct.enclosure_device** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.enclosure_component* @to_enclosure_component(%struct.device* %17)
  store %struct.enclosure_component* %18, %struct.enclosure_component** %11, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %67, %4
  %20 = load i64*, i64** @enclosure_status, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = load i64*, i64** @enclosure_status, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** @enclosure_status, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @strlen(i64 %37)
  %39 = call i64 @strncmp(i8* %27, i64 %32, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %26
  %42 = load i8*, i8** %8, align 8
  %43 = load i64*, i64** @enclosure_status, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @strlen(i64 %47)
  %49 = getelementptr inbounds i8, i8* %42, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %65, label %53

53:                                               ; preds = %41
  %54 = load i8*, i8** %8, align 8
  %55 = load i64*, i64** @enclosure_status, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @strlen(i64 %59)
  %61 = getelementptr inbounds i8, i8* %54, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53, %41
  br label %70

66:                                               ; preds = %53, %26
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %19

70:                                               ; preds = %65, %19
  %71 = load i64*, i64** @enclosure_status, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %70
  %78 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %79 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)*, i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %86 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)*, i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)** %88, align 8
  %90 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %91 = load %struct.enclosure_component*, %struct.enclosure_component** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 %89(%struct.enclosure_device* %90, %struct.enclosure_component* %91, i32 %92)
  %94 = load i64, i64* %9, align 8
  store i64 %94, i64* %5, align 8
  br label %98

95:                                               ; preds = %77, %70
  %96 = load i64, i64* @EINVAL, align 8
  %97 = sub i64 0, %96
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %95, %84
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local %struct.enclosure_device* @to_enclosure_device(i32) #1

declare dso_local %struct.enclosure_component* @to_enclosure_component(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i64, i64) #1

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
