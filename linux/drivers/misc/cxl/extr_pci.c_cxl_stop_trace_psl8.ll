; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_stop_trace_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_stop_trace_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, i32, i64* }

@CXL_PSL_TRACE = common dso_local global i32 0, align 4
@CXL_PSL_SLICE_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl*)* @cxl_stop_trace_psl8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_stop_trace_psl8(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  %3 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  %4 = load %struct.cxl*, %struct.cxl** %2, align 8
  %5 = load i32, i32* @CXL_PSL_TRACE, align 4
  %6 = call i32 @cxl_p1_write(%struct.cxl* %4, i32 %5, i32 23)
  %7 = load %struct.cxl*, %struct.cxl** %2, align 8
  %8 = getelementptr inbounds %struct.cxl, %struct.cxl* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %36, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.cxl*, %struct.cxl** %2, align 8
  %13 = getelementptr inbounds %struct.cxl, %struct.cxl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.cxl*, %struct.cxl** %2, align 8
  %18 = getelementptr inbounds %struct.cxl, %struct.cxl* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.cxl*, %struct.cxl** %2, align 8
  %27 = getelementptr inbounds %struct.cxl, %struct.cxl* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @CXL_PSL_SLICE_TRACE, align 4
  %34 = call i32 @cxl_p1n_write(i64 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %25, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.cxl*, %struct.cxl** %2, align 8
  %41 = getelementptr inbounds %struct.cxl, %struct.cxl* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  ret void
}

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cxl_p1n_write(i64, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
