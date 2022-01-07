; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_rw_multiple_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_rw_multiple_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.mmc_test_multiple_rw = type { i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [40 x i8] c"error: only one of pre/post is defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, %struct.mmc_test_multiple_rw*)* @mmc_test_rw_multiple_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_rw_multiple_size(%struct.mmc_test_card* %0, %struct.mmc_test_multiple_rw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_test_card*, align 8
  %5 = alloca %struct.mmc_test_multiple_rw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %4, align 8
  store %struct.mmc_test_multiple_rw* %1, %struct.mmc_test_multiple_rw** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load %struct.mmc_test_multiple_rw*, %struct.mmc_test_multiple_rw** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35, %32
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41, %35
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %83

48:                                               ; preds = %41, %38, %2
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %78, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mmc_test_multiple_rw*, %struct.mmc_test_multiple_rw** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi i1 [ false, %49 ], [ %57, %55 ]
  br i1 %59, label %60, label %81

60:                                               ; preds = %58
  %61 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %62 = load %struct.mmc_test_multiple_rw*, %struct.mmc_test_multiple_rw** %5, align 8
  %63 = load %struct.mmc_test_multiple_rw*, %struct.mmc_test_multiple_rw** %5, align 8
  %64 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mmc_test_multiple_rw*, %struct.mmc_test_multiple_rw** %5, align 8
  %71 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mmc_test_rw_multiple(%struct.mmc_test_card* %61, %struct.mmc_test_multiple_rw* %62, i32 %69, i32 %72, i32 0)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %81

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %49

81:                                               ; preds = %76, %58
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %44
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mmc_test_rw_multiple(%struct.mmc_test_card*, %struct.mmc_test_multiple_rw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
