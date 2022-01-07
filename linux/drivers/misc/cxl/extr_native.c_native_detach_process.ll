; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_detach_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_detach_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CXL_MODE_DEDICATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_context*)* @native_detach_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_detach_process(%struct.cxl_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_context*, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %3, align 8
  %4 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %5 = call i32 @trace_cxl_detach(%struct.cxl_context* %4)
  %6 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %7 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CXL_MODE_DEDICATED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %15 = call i32 @detach_process_native_dedicated(%struct.cxl_context* %14)
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %18 = call i32 @detach_process_native_afu_directed(%struct.cxl_context* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @trace_cxl_detach(%struct.cxl_context*) #1

declare dso_local i32 @detach_process_native_dedicated(%struct.cxl_context*) #1

declare dso_local i32 @detach_process_native_afu_directed(%struct.cxl_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
