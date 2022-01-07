; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_assign_psn_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_assign_psn_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32, i32, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_assign_psn_space(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  %3 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %3, i32 0, i32 2
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %11 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %9, %1
  %15 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %16 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %21 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %23 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %30 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %65

31:                                               ; preds = %9
  %32 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %33 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %38 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %45 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %50 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %43, %53
  %55 = add nsw i64 %36, %54
  %56 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %57 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %59 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %64 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %31, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
