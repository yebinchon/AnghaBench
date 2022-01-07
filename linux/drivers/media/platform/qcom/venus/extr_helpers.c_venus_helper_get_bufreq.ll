; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_bufreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_bufreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.hfi_buffer_requirements = type { i32 }
%union.hfi_get_property = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HFI_PROPERTY_CONFIG_BUFFER_REQUIREMENTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HFI_BUFFER_TYPE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_get_bufreq(%struct.venus_inst* %0, i64 %1, %struct.hfi_buffer_requirements* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hfi_buffer_requirements*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.hfi_get_property, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hfi_buffer_requirements* %2, %struct.hfi_buffer_requirements** %7, align 8
  %12 = load i64, i64* @HFI_PROPERTY_CONFIG_BUFFER_REQUIREMENTS, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements** %7, align 8
  %14 = icmp ne %struct.hfi_buffer_requirements* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements** %7, align 8
  %17 = call i32 @memset(%struct.hfi_buffer_requirements* %16, i32 0, i32 4)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @hfi_session_get_property(%struct.venus_inst* %19, i64 %20, %union.hfi_get_property* %9)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %61

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %56, %26
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @HFI_BUFFER_TYPE_MAX, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = bitcast %union.hfi_get_property* %9 to %struct.TYPE_2__**
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %56

44:                                               ; preds = %33
  %45 = load %struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements** %7, align 8
  %46 = icmp ne %struct.hfi_buffer_requirements* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements** %7, align 8
  %49 = bitcast %union.hfi_get_property* %9 to %struct.TYPE_2__**
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = call i32 @memcpy(%struct.hfi_buffer_requirements* %48, %struct.TYPE_2__* %53, i32 4)
  br label %55

55:                                               ; preds = %47, %44
  store i32 0, i32* %11, align 4
  br label %59

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %29

59:                                               ; preds = %55, %29
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.hfi_buffer_requirements*, i32, i32) #1

declare dso_local i32 @hfi_session_get_property(%struct.venus_inst*, i64, %union.hfi_get_property*) #1

declare dso_local i32 @memcpy(%struct.hfi_buffer_requirements*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
