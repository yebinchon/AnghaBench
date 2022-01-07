; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_perf_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_perf_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { %struct.hva_ctx_dbg }
%struct.hva_ctx_dbg = type { i64, i64, i64, i64, i8*, i64, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hva_ctx*)* @hva_dbg_perf_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hva_dbg_perf_compute(%struct.hva_ctx* %0) #0 {
  %2 = alloca %struct.hva_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hva_ctx_dbg*, align 8
  store %struct.hva_ctx* %0, %struct.hva_ctx** %2, align 8
  %5 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %5, i32 0, i32 0
  store %struct.hva_ctx_dbg* %6, %struct.hva_ctx_dbg** %4, align 8
  %7 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %8 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %13 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %18 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @do_div(i32 %16, i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %25 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %28 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %27, i32 0, i32 9
  store i8* null, i8** %28, align 8
  br label %29

29:                                               ; preds = %26, %11
  %30 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %31 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %36 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = mul nsw i32 %38, 100000
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %42 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @do_div(i32 %40, i64 %43)
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %49 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %48, i32 0, i32 8
  store i8* %47, i8** %49, align 8
  br label %53

50:                                               ; preds = %29
  %51 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %52 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %51, i32 0, i32 8
  store i8* null, i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %34
  %54 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %55 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %60 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %65 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @do_div(i32 %63, i64 %66)
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %72 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %71, i32 0, i32 7
  store i8* %70, i8** %72, align 8
  br label %76

73:                                               ; preds = %53
  %74 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %75 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %74, i32 0, i32 7
  store i8* null, i8** %75, align 8
  br label %76

76:                                               ; preds = %73, %58
  %77 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %78 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %83 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = mul nsw i32 %85, 100000
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %89 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @do_div(i32 %87, i64 %90)
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %96 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  br label %100

97:                                               ; preds = %76
  %98 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %99 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %98, i32 0, i32 6
  store i8* null, i8** %99, align 8
  br label %100

100:                                              ; preds = %97, %81
  %101 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %102 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %107 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = mul nsw i32 %109, 80
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %113 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @do_div(i32 %111, i64 %114)
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %120 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  br label %124

121:                                              ; preds = %100
  %122 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %4, align 8
  %123 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %122, i32 0, i32 4
  store i8* null, i8** %123, align 8
  br label %124

124:                                              ; preds = %121, %105
  ret void
}

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
