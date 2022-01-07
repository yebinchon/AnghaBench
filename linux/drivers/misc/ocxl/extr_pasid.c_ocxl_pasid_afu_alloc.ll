; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_pasid.c_ocxl_pasid_afu_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_pasid.c_ocxl_pasid_afu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_fn = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"afu pasid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_pasid_afu_alloc(%struct.ocxl_fn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocxl_fn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocxl_fn* %0, %struct.ocxl_fn** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %8 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %17 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %22 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @range_alloc(i32* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @range_alloc(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
