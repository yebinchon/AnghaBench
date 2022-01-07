; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_incremental_errors_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_incremental_errors_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"incremental biterrors test\0A\00", align 1
@mtd = common dso_local global %struct.TYPE_2__* null, align 8
@seed = common dso_local global i64 0, align 8
@wbuffer = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Read reported %d corrected bit errors\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"After %d biterrors per subpage, read reported error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"ECC failure, read data is incorrect despite read success\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Successfully corrected %d bit errors per subpage\0A\00", align 1
@subcount = common dso_local global i32 0, align 4
@subsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @incremental_errors_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incremental_errors_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %21, %0
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtd, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  %12 = load i32, i32* %2, align 4
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* @seed, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @hash(i64 %15)
  %17 = load i32*, i32** @wbuffer, align 8
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %2, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %5

24:                                               ; preds = %5
  %25 = call i32 @write_page(i32 1)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %77

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %74
  %31 = call i32 @rewrite_page(i32 1)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %77

35:                                               ; preds = %30
  %36 = call i32 @read_page(i32 1)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  store i32 0, i32* %1, align 4
  br label %77

49:                                               ; preds = %42
  %50 = call i32 @verify_page(i32 1)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %77

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %71, %55
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @subcount, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @subsize, align 4
  %65 = mul i32 %63, %64
  %66 = call i32 @insert_biterror(i32 %65)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %77

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %2, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %2, align 4
  br label %58

74:                                               ; preds = %58
  %75 = load i32, i32* %3, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %30

77:                                               ; preds = %69, %53, %45, %34, %28
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @hash(i64) #1

declare dso_local i32 @write_page(i32) #1

declare dso_local i32 @rewrite_page(i32) #1

declare dso_local i32 @read_page(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @verify_page(i32) #1

declare dso_local i32 @insert_biterror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
