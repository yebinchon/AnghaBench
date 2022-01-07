; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_ack_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32 }

@CXL_PSL_TFC_An = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_context*, i64, i64)* @native_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_ack_irq(%struct.cxl_context* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.cxl_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @trace_cxl_psl_irq_ack(%struct.cxl_context* %7, i64 %8)
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %14 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CXL_PSL_TFC_An, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @cxl_p2n_write(i32 %15, i32 %16, i64 %17)
  br label %19

19:                                               ; preds = %12, %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %24 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @recover_psl_err(i32 %25, i64 %26)
  br label %28

28:                                               ; preds = %22, %19
  ret i32 0
}

declare dso_local i32 @trace_cxl_psl_irq_ack(%struct.cxl_context*, i64) #1

declare dso_local i32 @cxl_p2n_write(i32, i32, i64) #1

declare dso_local i32 @recover_psl_err(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
