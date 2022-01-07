; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_set_driver_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_set_driver_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { %struct.cxl_afu_driver_ops*, i32 }
%struct.cxl_afu_driver_ops = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_set_driver_ops(%struct.cxl_context* %0, %struct.cxl_afu_driver_ops* %1) #0 {
  %3 = alloca %struct.cxl_context*, align 8
  %4 = alloca %struct.cxl_afu_driver_ops*, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %3, align 8
  store %struct.cxl_afu_driver_ops* %1, %struct.cxl_afu_driver_ops** %4, align 8
  %5 = load %struct.cxl_afu_driver_ops*, %struct.cxl_afu_driver_ops** %4, align 8
  %6 = getelementptr inbounds %struct.cxl_afu_driver_ops, %struct.cxl_afu_driver_ops* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.cxl_afu_driver_ops*, %struct.cxl_afu_driver_ops** %4, align 8
  %11 = getelementptr inbounds %struct.cxl_afu_driver_ops, %struct.cxl_afu_driver_ops* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i1 [ true, %2 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %20 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %19, i32 0, i32 1
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.cxl_afu_driver_ops*, %struct.cxl_afu_driver_ops** %4, align 8
  %23 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %24 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %23, i32 0, i32 0
  store %struct.cxl_afu_driver_ops* %22, %struct.cxl_afu_driver_ops** %24, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
