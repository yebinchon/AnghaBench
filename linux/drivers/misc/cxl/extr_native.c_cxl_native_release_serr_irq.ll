; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_release_serr_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_release_serr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.cxl_afu = type { i64, i32, i32, i32 }

@CXL_PSL_SERR_An = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_native_release_serr_irq(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %9 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %12 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @irq_find_mapping(i32* null, i32 %13)
  %15 = icmp ne i64 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7, %1
  br label %42

17:                                               ; preds = %7
  %18 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %19 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %20 = call i32 @cxl_p1n_write(%struct.cxl_afu* %18, i32 %19, i32 0)
  %21 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %22 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %25 = call i32 @cxl_unmap_irq(i64 %23, %struct.cxl_afu* %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %30 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %33 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %28(i32 %31, i32 %34)
  %36 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %37 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kfree(i32 %38)
  %40 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %41 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @irq_find_mapping(i32*, i32) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_unmap_irq(i64, %struct.cxl_afu*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
