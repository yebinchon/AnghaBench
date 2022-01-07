; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-h264.c_hva_h264_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-h264.c_hva_h264_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i64 }
%struct.hva_h264_ctx = type { i64, i64, i64, i64 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hva_ctx*)* @hva_h264_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_h264_close(%struct.hva_ctx* %0) #0 {
  %2 = alloca %struct.hva_ctx*, align 8
  %3 = alloca %struct.hva_h264_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.hva_ctx* %0, %struct.hva_ctx** %2, align 8
  %5 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.hva_h264_ctx*
  store %struct.hva_h264_ctx* %8, %struct.hva_h264_ctx** %3, align 8
  %9 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %10 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %17 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @hva_mem_free(%struct.hva_ctx* %16, i64 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %28 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @hva_mem_free(%struct.hva_ctx* %27, i64 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %39 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @hva_mem_free(%struct.hva_ctx* %38, i64 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %50 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @hva_mem_free(%struct.hva_ctx* %49, i64 %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %3, align 8
  %57 = call i32 @devm_kfree(%struct.device* %55, %struct.hva_h264_ctx* %56)
  ret i32 0
}

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @hva_mem_free(%struct.hva_ctx*, i64) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.hva_h264_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
