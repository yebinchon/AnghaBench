; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_overwrite_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_overwrite_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@overwrite_test.bitstats = internal global [512 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [26 x i8] c"overwrite biterrors test\0A\00", align 1
@mtd = common dso_local global %struct.TYPE_2__* null, align 8
@seed = common dso_local global i64 0, align 8
@wbuffer = common dso_local global i32* null, align 8
@max_overwrite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Implausible number of bit errors corrected\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Read reported %d corrected bit errors\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Read reported error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"ECC failure, read data is incorrect despite read success\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Bit error histogram (%d operations total):\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Page reads with %3d corrected bit errors: %d\0A\00", align 1
@MAXBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @overwrite_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overwrite_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @memset(i32* getelementptr inbounds ([512 x i32], [512 x i32]* @overwrite_test.bitstats, i64 0, i64 0), i32 0, i32 2048)
  %6 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %23, %0
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtd, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @seed, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @hash(i64 %17)
  %19 = load i32*, i32** @wbuffer, align 8
  %20 = load i32, i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %2, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %7

26:                                               ; preds = %7
  %27 = call i32 @write_page(i32 1)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %105

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %84, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @max_overwrite, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %87

36:                                               ; preds = %32
  %37 = call i32 @write_page(i32 0)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %87

41:                                               ; preds = %36
  %42 = call i32 @read_page(i32 0)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load i32, i32* %1, align 4
  %47 = icmp sge i32 %46, 512
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %1, align 4
  br label %87

52:                                               ; preds = %45
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [512 x i32], [512 x i32]* @overwrite_test.bitstats, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* %1, align 4
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %1, align 4
  %64 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %52
  br label %69

66:                                               ; preds = %41
  %67 = load i32, i32* %1, align 4
  %68 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  store i32 0, i32* %1, align 4
  br label %87

69:                                               ; preds = %65
  %70 = call i32 @verify_page(i32 0)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [512 x i32], [512 x i32]* @overwrite_test.bitstats, i64 0, i64 %76
  store i32 %74, i32* %77, align 4
  %78 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %87

79:                                               ; preds = %69
  %80 = call i32 (...) @mtdtest_relax()
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* %1, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %32

87:                                               ; preds = %83, %73, %66, %48, %40, %32
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %101, %87
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* %2, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [512 x i32], [512 x i32]* @overwrite_test.bitstats, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %2, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %90

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %30
  %106 = load i32, i32* %1, align 4
  ret i32 %106
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @hash(i64) #1

declare dso_local i32 @write_page(i32) #1

declare dso_local i32 @read_page(i32) #1

declare dso_local i32 @verify_page(i32) #1

declare dso_local i32 @mtdtest_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
