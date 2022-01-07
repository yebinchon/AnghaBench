; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_update_ivtes_directed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_update_ivtes_directed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i8**, i8** }

@STARTED = common dso_local global i64 0, align 8
@CXL_IRQ_RANGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_context*)* @update_ivtes_directed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ivtes_directed(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  %5 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %6 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STARTED, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %15 = call i32 @terminate_process_element(%struct.cxl_context* %14)
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %18 = call i32 @remove_process_element(%struct.cxl_context* %17)
  %19 = call i32 @WARN_ON(i32 %18)
  br label %20

20:                                               ; preds = %13, %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %21
  %26 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %27 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_be16(i32 %33)
  %35 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %36 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %34, i8** %42, align 8
  %43 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %44 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_be16(i32 %50)
  %52 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %53 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  store i8* %51, i8** %59, align 8
  br label %60

60:                                               ; preds = %25
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %21

63:                                               ; preds = %21
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %68 = call i32 @add_process_element(%struct.cxl_context* %67)
  %69 = call i32 @WARN_ON(i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @terminate_process_element(%struct.cxl_context*) #1

declare dso_local i32 @remove_process_element(%struct.cxl_context*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @add_process_element(%struct.cxl_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
