; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_afu_release_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_afu_release_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, i32)* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.cxl_context = type { i64, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }

@CXL_IRQ_RANGES = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afu_release_irqs(%struct.cxl_context* %0, i8* %1) #0 {
  %3 = alloca %struct.cxl_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 (...) @afu_irq_range_start()
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %50, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %16 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %44, %14
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %26 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %24, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @irq_find_mapping(i32* null, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @cxl_unmap_irq(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %23

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %10

53:                                               ; preds = %10
  %54 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %55 = call i32 @afu_irq_name_free(%struct.cxl_context* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxl_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %57, align 8
  %59 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %60 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %59, i32 0, i32 2
  %61 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %62 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %58(%struct.TYPE_5__* %60, i32 %65)
  %67 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %68 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  ret void
}

declare dso_local i32 @afu_irq_range_start(...) #1

declare dso_local i32 @irq_find_mapping(i32*, i32) #1

declare dso_local i32 @cxl_unmap_irq(i32, i8*) #1

declare dso_local i32 @afu_irq_name_free(%struct.cxl_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
