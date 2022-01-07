; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_release_psl_err_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_release_psl_err_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cxl*, i32)* }
%struct.cxl = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@CXL_PSL_ErrIVTE = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_native_release_psl_err_irq(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  %3 = load %struct.cxl*, %struct.cxl** %2, align 8
  %4 = getelementptr inbounds %struct.cxl, %struct.cxl* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = load %struct.cxl*, %struct.cxl** %2, align 8
  %11 = getelementptr inbounds %struct.cxl, %struct.cxl* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cxl*, %struct.cxl** %2, align 8
  %16 = getelementptr inbounds %struct.cxl, %struct.cxl* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @irq_find_mapping(i32* null, i32 %19)
  %21 = icmp ne i64 %14, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %9, %1
  br label %52

23:                                               ; preds = %9
  %24 = load %struct.cxl*, %struct.cxl** %2, align 8
  %25 = load i32, i32* @CXL_PSL_ErrIVTE, align 4
  %26 = call i32 @cxl_p1_write(%struct.cxl* %24, i32 %25, i32 0)
  %27 = load %struct.cxl*, %struct.cxl** %2, align 8
  %28 = getelementptr inbounds %struct.cxl, %struct.cxl* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cxl*, %struct.cxl** %2, align 8
  %33 = call i32 @cxl_unmap_irq(i64 %31, %struct.cxl* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.cxl*, i32)*, i32 (%struct.cxl*, i32)** %35, align 8
  %37 = load %struct.cxl*, %struct.cxl** %2, align 8
  %38 = load %struct.cxl*, %struct.cxl** %2, align 8
  %39 = getelementptr inbounds %struct.cxl, %struct.cxl* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %36(%struct.cxl* %37, i32 %42)
  %44 = load %struct.cxl*, %struct.cxl** %2, align 8
  %45 = getelementptr inbounds %struct.cxl, %struct.cxl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kfree(i32 %46)
  %48 = load %struct.cxl*, %struct.cxl** %2, align 8
  %49 = getelementptr inbounds %struct.cxl, %struct.cxl* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @irq_find_mapping(i32*, i32) #1

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

declare dso_local i32 @cxl_unmap_irq(i64, %struct.cxl*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
