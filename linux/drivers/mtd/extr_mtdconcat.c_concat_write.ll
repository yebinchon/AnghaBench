; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @concat_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_write(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mtd_concat*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtd_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %18 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %17)
  store %struct.mtd_concat* %18, %struct.mtd_concat** %11, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %88, %5
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.mtd_concat*, %struct.mtd_concat** %11, align 8
  %24 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %91

27:                                               ; preds = %21
  %28 = load %struct.mtd_concat*, %struct.mtd_concat** %11, align 8
  %29 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %28, i32 0, i32 1
  %30 = load %struct.mtd_info**, %struct.mtd_info*** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %30, i64 %32
  %34 = load %struct.mtd_info*, %struct.mtd_info** %33, align 8
  store %struct.mtd_info* %34, %struct.mtd_info** %14, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  store i64 0, i64* %15, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %88

46:                                               ; preds = %27
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %15, align 8
  br label %62

60:                                               ; preds = %46
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @mtd_write(%struct.mtd_info* %63, i64 %64, i64 %65, i64* %16, i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %91

71:                                               ; preds = %62
  %72 = load i64, i64* %16, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %72
  store i64 %75, i64* %73, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %8, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %91

82:                                               ; preds = %71
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %12, align 4
  %85 = load i64, i64* %15, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %85
  store i32* %87, i32** %10, align 8
  store i64 0, i64* %7, align 8
  br label %88

88:                                               ; preds = %82, %40
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %21

91:                                               ; preds = %81, %70, %21
  %92 = load i32, i32* %12, align 4
  ret i32 %92
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

declare dso_local i32 @mtd_write(%struct.mtd_info*, i64, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
