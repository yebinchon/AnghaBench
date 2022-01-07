; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_perf_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_perf_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { %struct.hva_ctx_dbg }
%struct.hva_ctx_dbg = type { i32, i32, i32, i64, i8*, i8*, i64, i32, i32, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hva_dbg_perf_begin(%struct.hva_ctx* %0) #0 {
  %2 = alloca %struct.hva_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hva_ctx_dbg*, align 8
  %7 = alloca i32, align 4
  store %struct.hva_ctx* %0, %struct.hva_ctx** %2, align 8
  %8 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %8, i32 0, i32 0
  store %struct.hva_ctx_dbg* %9, %struct.hva_ctx_dbg** %6, align 8
  %10 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %11 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @ktime_get()
  %14 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %15 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 8
  %16 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %17 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %114

20:                                               ; preds = %1
  %21 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %22 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ktime_us_delta(i32 %23, i32 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @do_div(i32 %27, i32 100)
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %33 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %32, i32 0, i32 10
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @min(i64 %31, i8* %34)
  %36 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %37 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %36, i32 0, i32 10
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %40 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %39, i32 0, i32 9
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @max(i64 %38, i8* %41)
  %43 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %44 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %47 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %53 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %58 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %64 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %68 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 32
  br i1 %70, label %71, label %113

71:                                               ; preds = %20
  %72 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %73 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %71
  %77 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %78 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = mul nsw i32 %80, 80
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %84 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @do_div(i32 %82, i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %91 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %90, i32 0, i32 6
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %94 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @min(i64 %92, i8* %95)
  %97 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %98 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %101 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @max(i64 %99, i8* %102)
  %104 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %105 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %76, %71
  %107 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %108 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %110 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %112 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %111, i32 0, i32 2
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %106, %20
  br label %114

114:                                              ; preds = %113, %1
  %115 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %6, align 8
  %116 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i8* @min(i64, i8*) #1

declare dso_local i8* @max(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
