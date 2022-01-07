; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_write_eraseblock2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_write_eraseblock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@subpgsize = common dso_local global i32 0, align 4
@rnd_state = common dso_local global i32 0, align 4
@writebuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error: write failed at %#llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  write size: %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"  written: %#08zx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @write_eraseblock2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_eraseblock2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  store i32 %12, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %89, %1
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 33
  br i1 %15, label %16, label %92

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @subpgsize, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %17, %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = icmp sgt i32 %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %92

30:                                               ; preds = %16
  %31 = load i32, i32* @writebuf, align 4
  %32 = load i32, i32* @subpgsize, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = call i32 @prandom_bytes_state(i32* @rnd_state, i32 %31, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @subpgsize, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* @writebuf, align 4
  %42 = call i32 @mtd_write(%struct.TYPE_3__* %36, i32 %37, i32 %40, i64* %4, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %30
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* @subpgsize, align 4
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %46, %50
  br label %52

52:                                               ; preds = %45, %30
  %53 = phi i1 [ true, %30 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* @subpgsize, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %61, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load i32, i32* @subpgsize, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %67, %57
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  br label %81

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ -1, %80 ]
  store i32 %82, i32* %2, align 4
  br label %94

83:                                               ; preds = %52
  %84 = load i32, i32* @subpgsize, align 4
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %13

92:                                               ; preds = %29, %13
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %81
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @prandom_bytes_state(i32*, i32, i32) #1

declare dso_local i32 @mtd_write(%struct.TYPE_3__*, i32, i32, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
