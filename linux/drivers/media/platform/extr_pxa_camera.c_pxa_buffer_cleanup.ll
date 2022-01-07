; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_buffer_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_buffer_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_buffer = type { i64, i64*, i64*, i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_buffer*)* @pxa_buffer_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_buffer_cleanup(%struct.pxa_buffer* %0) #0 {
  %2 = alloca %struct.pxa_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa_buffer* %0, %struct.pxa_buffer** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %59, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load %struct.pxa_buffer*, %struct.pxa_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %8, i32 0, i32 4
  %10 = load i32**, i32*** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br label %16

16:                                               ; preds = %7, %4
  %17 = phi i1 [ false, %4 ], [ %15, %7 ]
  br i1 %17, label %18, label %62

18:                                               ; preds = %16
  %19 = load %struct.pxa_buffer*, %struct.pxa_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %19, i32 0, i32 4
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @dmaengine_desc_free(i32* %25)
  %27 = load %struct.pxa_buffer*, %struct.pxa_buffer** %2, align 8
  %28 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %27, i32 0, i32 3
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.pxa_buffer*, %struct.pxa_buffer** %2, align 8
  %36 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %35, i32 0, i32 4
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* null, i32** %40, align 8
  %41 = load %struct.pxa_buffer*, %struct.pxa_buffer** %2, align 8
  %42 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %41, i32 0, i32 3
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* null, i32** %46, align 8
  %47 = load %struct.pxa_buffer*, %struct.pxa_buffer** %2, align 8
  %48 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load %struct.pxa_buffer*, %struct.pxa_buffer** %2, align 8
  %54 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %18
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %4

62:                                               ; preds = %16
  %63 = load %struct.pxa_buffer*, %struct.pxa_buffer** %2, align 8
  %64 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  ret void
}

declare dso_local i32 @dmaengine_desc_free(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
