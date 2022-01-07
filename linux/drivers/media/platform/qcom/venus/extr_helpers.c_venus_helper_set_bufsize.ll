; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_set_bufsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_set_bufsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.hfi_buffer_size_actual = type { i8*, i8* }

@HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_set_bufsize(%struct.venus_inst* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hfi_buffer_size_actual, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** @HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.hfi_buffer_size_actual, %struct.hfi_buffer_size_actual* %8, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds %struct.hfi_buffer_size_actual, %struct.hfi_buffer_size_actual* %8, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @hfi_session_set_property(%struct.venus_inst* %14, i8* %15, %struct.hfi_buffer_size_actual* %8)
  ret i32 %16
}

declare dso_local i32 @hfi_session_set_property(%struct.venus_inst*, i8*, %struct.hfi_buffer_size_actual*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
