; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @concat_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mtd_concat*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mtd_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %20 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %19)
  store %struct.mtd_concat* %20, %struct.mtd_concat** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %117, %5
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.mtd_concat*, %struct.mtd_concat** %12, align 8
  %24 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %120

27:                                               ; preds = %21
  %28 = load %struct.mtd_concat*, %struct.mtd_concat** %12, align 8
  %29 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %28, i32 0, i32 1
  %30 = load %struct.mtd_info**, %struct.mtd_info*** %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %30, i64 %32
  %34 = load %struct.mtd_info*, %struct.mtd_info** %33, align 8
  store %struct.mtd_info* %34, %struct.mtd_info** %16, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  store i64 0, i64* %17, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %117

46:                                               ; preds = %27
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %17, align 8
  br label %62

60:                                               ; preds = %46
  %61 = load i64, i64* %9, align 8
  store i64 %61, i64* %17, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @mtd_read(%struct.mtd_info* %63, i64 %64, i64 %65, i64* %18, i32* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %62
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @mtd_is_eccerr(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %77 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %13, align 4
  br label %100

82:                                               ; preds = %71
  %83 = load i32, i32* %14, align 4
  %84 = call i64 @mtd_is_bitflip(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %88 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %94, %86
  br label %99

97:                                               ; preds = %82
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %6, align 4
  br label %123

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99, %75
  br label %101

101:                                              ; preds = %100, %62
  %102 = load i64, i64* %18, align 8
  %103 = load i64*, i64** %10, align 8
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, %102
  store i64 %105, i64* %103, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* %9, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %9, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %6, align 4
  br label %123

113:                                              ; preds = %101
  %114 = load i64, i64* %17, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 %114
  store i32* %116, i32** %11, align 8
  store i64 0, i64* %8, align 8
  br label %117

117:                                              ; preds = %113, %40
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %21

120:                                              ; preds = %21
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %120, %111, %97
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i64, i64*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
