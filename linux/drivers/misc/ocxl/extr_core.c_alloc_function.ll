; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_alloc_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_alloc_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_fn = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocxl_fn* ()* @alloc_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocxl_fn* @alloc_function() #0 {
  %1 = alloca %struct.ocxl_fn*, align 8
  %2 = alloca %struct.ocxl_fn*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.ocxl_fn* @kzalloc(i32 12, i32 %3)
  store %struct.ocxl_fn* %4, %struct.ocxl_fn** %2, align 8
  %5 = load %struct.ocxl_fn*, %struct.ocxl_fn** %2, align 8
  %6 = icmp ne %struct.ocxl_fn* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.ocxl_fn* null, %struct.ocxl_fn** %1, align 8
  br label %19

8:                                                ; preds = %0
  %9 = load %struct.ocxl_fn*, %struct.ocxl_fn** %2, align 8
  %10 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.ocxl_fn*, %struct.ocxl_fn** %2, align 8
  %13 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.ocxl_fn*, %struct.ocxl_fn** %2, align 8
  %16 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %15, i32 0, i32 0
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.ocxl_fn*, %struct.ocxl_fn** %2, align 8
  store %struct.ocxl_fn* %18, %struct.ocxl_fn** %1, align 8
  br label %19

19:                                               ; preds = %8, %7
  %20 = load %struct.ocxl_fn*, %struct.ocxl_fn** %1, align 8
  ret %struct.ocxl_fn* %20
}

declare dso_local %struct.ocxl_fn* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
