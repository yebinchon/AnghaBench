; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_release_psl_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_release_psl_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.cxl_afu = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_native_release_psl_irq(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %11 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %16 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @irq_find_mapping(i32* null, i32 %19)
  %21 = icmp ne i64 %14, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %9, %1
  br label %51

23:                                               ; preds = %9
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %25 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %30 = call i32 @cxl_unmap_irq(i64 %28, %struct.cxl_afu* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %35 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %38 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %33(i32 %36, i32 %41)
  %43 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %44 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %48 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @irq_find_mapping(i32*, i32) #1

declare dso_local i32 @cxl_unmap_irq(i64, %struct.cxl_afu*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
