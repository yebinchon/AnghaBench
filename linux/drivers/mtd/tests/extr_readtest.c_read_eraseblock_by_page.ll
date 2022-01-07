; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_readtest.c_read_eraseblock_by_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_readtest.c_read_eraseblock_by_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.mtd_oob_ops = type { i64, i64, i8*, i32*, i64, i64, i64, i32 }

@mtd = common dso_local global %struct.TYPE_4__* null, align 8
@iobuf = common dso_local global i8* null, align 8
@iobuf1 = common dso_local global i8* null, align 8
@pgcnt = common dso_local global i32 0, align 4
@pgsize = common dso_local global i32 0, align 4
@MTD_OPS_PLACE_OOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error: read oob failed at %#llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_eraseblock_by_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eraseblock_by_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mtd_oob_ops, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load i8*, i8** @iobuf, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** @iobuf1, align 8
  store i8* %16, i8** %8, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %102, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @pgcnt, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %105

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @pgsize, align 4
  %24 = call i32 @memset(i8* %22, i32 0, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @pgsize, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @mtdtest_read(%struct.TYPE_4__* %25, i32 %26, i32 %27, i8* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %21
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %38
  %44 = load i32, i32* @MTD_OPS_PLACE_OOB, align 4
  %45 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 7
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @mtd_read_oob(%struct.TYPE_4__* %57, i32 %58, %struct.mtd_oob_ops* %9)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %43
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @mtd_is_bitflip(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62, %43
  %67 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %66, %62
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %66
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr i8, i8* %92, i64 %91
  store i8* %93, i8** %8, align 8
  br label %94

94:                                               ; preds = %88, %38
  %95 = load i32, i32* @pgsize, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @pgsize, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr i8, i8* %99, i64 %100
  store i8* %101, i8** %7, align 8
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %17

105:                                              ; preds = %17
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mtdtest_read(%struct.TYPE_4__*, i32, i32, i8*) #1

declare dso_local i32 @mtd_read_oob(%struct.TYPE_4__*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @mtd_is_bitflip(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
