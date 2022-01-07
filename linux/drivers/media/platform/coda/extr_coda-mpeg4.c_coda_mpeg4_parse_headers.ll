; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-mpeg4.c_coda_mpeg4_parse_headers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-mpeg4.c_coda_mpeg4_parse_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }
%struct.coda_ctx = type { i32 }

@coda_mpeg4_parse_headers.vos_start = internal constant [4 x i32] [i32 0, i32 0, i32 1, i32 176], align 16
@coda_mpeg4_parse_headers.u = internal constant %union.anon { [4 x i32] [i32 0, i32 0, i32 1, i32 181] }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_mpeg4_parse_headers(%struct.coda_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.coda_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 30
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @memcmp(i32* %11, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @coda_mpeg4_parse_headers.vos_start, i64 0, i64 0), i32 4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  %17 = call i64 @memcmp(i32* %16, i32* getelementptr inbounds (%union.anon, %union.anon* @coda_mpeg4_parse_headers.u, i32 0, i32 0, i64 0), i32 4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %10, %3
  store i32 0, i32* %4, align 4
  br label %57

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 30
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 33
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 30
  %29 = call i64 @memcmp(i32* %28, i32* getelementptr inbounds ([3 x i32], [3 x i32]* bitcast (%union.anon* @coda_mpeg4_parse_headers.u to [3 x i32]*), i64 0, i64 0), i32 3)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %20
  store i32 30, i32* %4, align 4
  br label %57

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 31
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 34
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 31
  %41 = call i64 @memcmp(i32* %40, i32* getelementptr inbounds ([3 x i32], [3 x i32]* bitcast (%union.anon* @coda_mpeg4_parse_headers.u to [3 x i32]*), i64 0, i64 0), i32 3)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %32
  store i32 31, i32* %4, align 4
  br label %57

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 35
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 32
  %53 = call i64 @memcmp(i32* %52, i32* getelementptr inbounds ([3 x i32], [3 x i32]* bitcast (%union.anon* @coda_mpeg4_parse_headers.u to [3 x i32]*), i64 0, i64 0), i32 3)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %44
  store i32 32, i32* %4, align 4
  br label %57

56:                                               ; preds = %50, %47
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %43, %31, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
