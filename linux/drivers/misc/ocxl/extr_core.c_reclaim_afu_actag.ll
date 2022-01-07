; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_reclaim_afu_actag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_reclaim_afu_actag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { i32, i32, %struct.ocxl_fn* }
%struct.ocxl_fn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocxl_afu*)* @reclaim_afu_actag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reclaim_afu_actag(%struct.ocxl_afu* %0) #0 {
  %2 = alloca %struct.ocxl_afu*, align 8
  %3 = alloca %struct.ocxl_fn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocxl_afu* %0, %struct.ocxl_afu** %2, align 8
  %6 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %7 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %6, i32 0, i32 2
  %8 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  store %struct.ocxl_fn* %8, %struct.ocxl_fn** %3, align 8
  %9 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %10 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ocxl_fn*, %struct.ocxl_fn** %3, align 8
  %13 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %17 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %20 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %19, i32 0, i32 2
  %21 = load %struct.ocxl_fn*, %struct.ocxl_fn** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ocxl_actag_afu_free(%struct.ocxl_fn* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @ocxl_actag_afu_free(%struct.ocxl_fn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
