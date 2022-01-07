; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_main.c_cxl_alloc_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_main.c_cxl_alloc_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cxl_afu = type { i32, %struct.cxl*, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.cxl = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8
@CXL_PREFAULT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cxl_afu* @cxl_alloc_afu(%struct.cxl* %0, i32 %1) #0 {
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cxl_afu* @kzalloc(i32 56, i32 %7)
  store %struct.cxl_afu* %8, %struct.cxl_afu** %6, align 8
  %9 = icmp ne %struct.cxl_afu* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.cxl_afu* null, %struct.cxl_afu** %3, align 8
  br label %52

11:                                               ; preds = %2
  %12 = load %struct.cxl*, %struct.cxl** %4, align 8
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %14 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %13, i32 0, i32 1
  store %struct.cxl* %12, %struct.cxl** %14, align 8
  %15 = load %struct.cxl*, %struct.cxl** %4, align 8
  %16 = getelementptr inbounds %struct.cxl, %struct.cxl* %15, i32 0, i32 1
  %17 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %18 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32* %16, i32** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %24 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %28 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %30 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %29, i32 0, i32 7
  %31 = call i32 @idr_init(i32* %30)
  %32 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %33 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %32, i32 0, i32 6
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %36 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %35, i32 0, i32 5
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %39 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %38, i32 0, i32 4
  %40 = call i32 @atomic_set(i32* %39, i32 -1)
  %41 = load i32, i32* @CXL_PREFAULT_NONE, align 4
  %42 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %43 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %45 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %44, i32 0, i32 1
  %46 = load %struct.cxl*, %struct.cxl** %45, align 8
  %47 = getelementptr inbounds %struct.cxl, %struct.cxl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %50 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  store %struct.cxl_afu* %51, %struct.cxl_afu** %3, align 8
  br label %52

52:                                               ; preds = %11, %10
  %53 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  ret %struct.cxl_afu* %53
}

declare dso_local %struct.cxl_afu* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
