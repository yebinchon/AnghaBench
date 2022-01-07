; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_alloc_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_alloc_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { %struct.ocxl_fn*, i32, i32, i32, i32 }
%struct.ocxl_fn = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocxl_afu* (%struct.ocxl_fn*)* @alloc_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocxl_afu* @alloc_afu(%struct.ocxl_fn* %0) #0 {
  %2 = alloca %struct.ocxl_afu*, align 8
  %3 = alloca %struct.ocxl_fn*, align 8
  %4 = alloca %struct.ocxl_afu*, align 8
  store %struct.ocxl_fn* %0, %struct.ocxl_fn** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ocxl_afu* @kzalloc(i32 24, i32 %5)
  store %struct.ocxl_afu* %6, %struct.ocxl_afu** %4, align 8
  %7 = load %struct.ocxl_afu*, %struct.ocxl_afu** %4, align 8
  %8 = icmp ne %struct.ocxl_afu* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ocxl_afu* null, %struct.ocxl_afu** %2, align 8
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.ocxl_afu*, %struct.ocxl_afu** %4, align 8
  %12 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %11, i32 0, i32 4
  %13 = call i32 @kref_init(i32* %12)
  %14 = load %struct.ocxl_afu*, %struct.ocxl_afu** %4, align 8
  %15 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %14, i32 0, i32 3
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.ocxl_afu*, %struct.ocxl_afu** %4, align 8
  %18 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %17, i32 0, i32 2
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.ocxl_afu*, %struct.ocxl_afu** %4, align 8
  %21 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %20, i32 0, i32 1
  %22 = call i32 @idr_init(i32* %21)
  %23 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %24 = load %struct.ocxl_afu*, %struct.ocxl_afu** %4, align 8
  %25 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %24, i32 0, i32 0
  store %struct.ocxl_fn* %23, %struct.ocxl_fn** %25, align 8
  %26 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %27 = call i32 @ocxl_fn_get(%struct.ocxl_fn* %26)
  %28 = load %struct.ocxl_afu*, %struct.ocxl_afu** %4, align 8
  store %struct.ocxl_afu* %28, %struct.ocxl_afu** %2, align 8
  br label %29

29:                                               ; preds = %10, %9
  %30 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  ret %struct.ocxl_afu* %30
}

declare dso_local %struct.ocxl_afu* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @ocxl_fn_get(%struct.ocxl_fn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
