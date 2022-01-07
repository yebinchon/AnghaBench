; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_fill_buffer_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_fill_buffer_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_buffer = type { i32, i32 }
%struct.hfi_buffer_desc = type { i32, i32, i32, i32, i32 }

@HFI_BUFFER_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_buffer*, %struct.hfi_buffer_desc*, i32)* @fill_buffer_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_buffer_desc(%struct.venus_buffer* %0, %struct.hfi_buffer_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.venus_buffer*, align 8
  %5 = alloca %struct.hfi_buffer_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.venus_buffer* %0, %struct.venus_buffer** %4, align 8
  store %struct.hfi_buffer_desc* %1, %struct.hfi_buffer_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %5, align 8
  %8 = call i32 @memset(%struct.hfi_buffer_desc* %7, i32 0, i32 20)
  %9 = load i32, i32* @HFI_BUFFER_OUTPUT, align 4
  %10 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %5, align 8
  %11 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.venus_buffer*, %struct.venus_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.venus_buffer, %struct.venus_buffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %5, align 8
  %16 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %5, align 8
  %18 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.venus_buffer*, %struct.venus_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.venus_buffer, %struct.venus_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %5, align 8
  %23 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %5, align 8
  %26 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @memset(%struct.hfi_buffer_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
