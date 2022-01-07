; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-mpeg2.c_coda_mpeg2_parse_headers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-mpeg2.c_coda_mpeg2_parse_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }
%struct.coda_ctx = type { i32 }

@coda_mpeg2_parse_headers.sequence_header_start = internal constant [4 x i32] [i32 0, i32 0, i32 1, i32 179], align 16
@coda_mpeg2_parse_headers.u = internal constant %union.anon { [4 x i32] [i32 0, i32 0, i32 1, i32 181] }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_mpeg2_parse_headers(%struct.coda_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.coda_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 22
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @memcmp(i32* %11, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @coda_mpeg2_parse_headers.sequence_header_start, i64 0, i64 0), i32 4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %50

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 22
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 25
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 22
  %24 = call i64 @memcmp(i32* %23, i32* getelementptr inbounds ([3 x i32], [3 x i32]* bitcast (%union.anon* @coda_mpeg2_parse_headers.u to [3 x i32]*), i64 0, i64 0), i32 3)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21, %15
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 12
  %29 = call i64 @memcmp(i32* %28, i32* getelementptr inbounds (%union.anon, %union.anon* @coda_mpeg2_parse_headers.u, i32 0, i32 0, i64 0), i32 4)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 22, i32* %4, align 4
  br label %50

32:                                               ; preds = %26, %21, %18
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 86
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 89
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 86
  %41 = call i64 @memcmp(i32* %40, i32* getelementptr inbounds ([3 x i32], [3 x i32]* bitcast (%union.anon* @coda_mpeg2_parse_headers.u to [3 x i32]*), i64 0, i64 0), i32 3)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %32
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 76
  %46 = call i64 @memcmp(i32* %45, i32* getelementptr inbounds (%union.anon, %union.anon* @coda_mpeg2_parse_headers.u, i32 0, i32 0, i64 0), i32 4)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 86, i32* %4, align 4
  br label %50

49:                                               ; preds = %43, %38, %35
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %31, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
