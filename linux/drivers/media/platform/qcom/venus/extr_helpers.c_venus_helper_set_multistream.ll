; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_set_multistream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_set_multistream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.hfi_multi_stream = type { i32, i32, i32 }

@HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_set_multistream(%struct.venus_inst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi_multi_stream, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.hfi_multi_stream* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  %12 = load i32, i32* @HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @HFI_BUFFER_OUTPUT, align 4
  %14 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @hfi_session_set_property(%struct.venus_inst* %17, i32 %18, %struct.hfi_multi_stream* %8)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* @HFI_BUFFER_OUTPUT2, align 4
  %26 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @hfi_session_set_property(%struct.venus_inst* %29, i32 %30, %struct.hfi_multi_stream* %8)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %22
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hfi_session_set_property(%struct.venus_inst*, i32, %struct.hfi_multi_stream*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
