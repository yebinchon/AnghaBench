; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_stresstest.c_do_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_stresstest.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@offsets = common dso_local global i32* null, align 8
@mtd = common dso_local global %struct.TYPE_4__* null, align 8
@pgsize = common dso_local global i32 0, align 4
@bbt = common dso_local global i64* null, align 8
@writebuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @rand_eb()
  store i32 %7, i32* %2, align 4
  %8 = load i32*, i32** @offsets, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @mtdtest_erase_eraseblock(%struct.TYPE_4__* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %1, align 4
  br label %127

26:                                               ; preds = %18
  %27 = load i32*, i32** @offsets, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 0, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %0
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @rand_len(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @pgsize, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @pgsize, align 4
  %39 = sdiv i32 %37, %38
  %40 = load i32, i32* @pgsize, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %31
  %50 = load i64*, i64** @bbt, align 8
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %5, align 4
  br label %78

63:                                               ; preds = %49
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @mtdtest_erase_eraseblock(%struct.TYPE_4__* %64, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %1, align 4
  br label %127

72:                                               ; preds = %63
  %73 = load i32*, i32** @offsets, align 8
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %57
  br label %79

79:                                               ; preds = %78, %31
  %80 = load i32, i32* %2, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %6, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @writebuf, align 4
  %91 = call i32 @mtdtest_write(%struct.TYPE_4__* %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %79
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %1, align 4
  br label %127

97:                                               ; preds = %79
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %107, %97
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** @offsets, align 8
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %2, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %3, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %3, align 4
  br label %101

121:                                              ; preds = %101
  %122 = load i32, i32* %3, align 4
  %123 = load i32*, i32** @offsets, align 8
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  store i32 0, i32* %1, align 4
  br label %127

127:                                              ; preds = %121, %95, %70, %24
  %128 = load i32, i32* %1, align 4
  ret i32 %128
}

declare dso_local i32 @rand_eb(...) #1

declare dso_local i32 @mtdtest_erase_eraseblock(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @rand_len(i32) #1

declare dso_local i32 @mtdtest_write(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
