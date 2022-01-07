; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_perf_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_perf_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32, %struct.hva_ctx_dbg }
%struct.hva_ctx_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hva_stream = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"%s perf stream[%d] dts=%d encoded using %d bytes in %d us\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hva_dbg_perf_end(%struct.hva_ctx* %0, %struct.hva_stream* %1) #0 {
  %3 = alloca %struct.hva_ctx*, align 8
  %4 = alloca %struct.hva_stream*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hva_ctx_dbg*, align 8
  %11 = alloca i32, align 4
  store %struct.hva_ctx* %0, %struct.hva_ctx** %3, align 8
  store %struct.hva_stream* %1, %struct.hva_stream** %4, align 8
  %12 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %13 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %12)
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %14, i32 0, i32 1
  store %struct.hva_ctx_dbg* %15, %struct.hva_ctx_dbg** %10, align 8
  %16 = call i32 (...) @ktime_get()
  store i32 %16, i32* %11, align 4
  %17 = load %struct.hva_stream*, %struct.hva_stream** %4, align 8
  %18 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = call i64 @vb2_get_plane_payload(%struct.TYPE_4__* %19, i32 0)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.hva_stream*, %struct.hva_stream** %4, align 8
  %22 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @do_div(i64 %26, i32 1000)
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %31 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ktime_us_delta(i32 %29, i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hva_stream*, %struct.hva_stream** %4, align 8
  %39 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41, i64 %42, i64 %43, i64 %44)
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @do_div(i64 %46, i32 100)
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %51 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @min(i64 %49, i32 %52)
  %54 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %55 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %58 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @max(i64 %56, i32 %59)
  %61 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %62 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %65 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %71 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %76 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %83 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.hva_ctx_dbg*, %struct.hva_ctx_dbg** %10, align 8
  %89 = getelementptr inbounds %struct.hva_ctx_dbg, %struct.hva_ctx_dbg* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  ret void
}

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @vb2_get_plane_payload(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
