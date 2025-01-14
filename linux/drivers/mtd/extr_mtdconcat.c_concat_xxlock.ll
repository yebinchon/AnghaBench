; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_xxlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_xxlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i32)* @concat_xxlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_xxlock(%struct.mtd_info* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_concat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %15 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %14)
  store %struct.mtd_concat* %15, %struct.mtd_concat** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %86, %4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.mtd_concat*, %struct.mtd_concat** %9, align 8
  %21 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %18
  %25 = load %struct.mtd_concat*, %struct.mtd_concat** %9, align 8
  %26 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %25, i32 0, i32 1
  %27 = load %struct.mtd_info**, %struct.mtd_info*** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %27, i64 %29
  %31 = load %struct.mtd_info*, %struct.mtd_info** %30, align 8
  store %struct.mtd_info* %31, %struct.mtd_info** %12, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  store i64 0, i64* %13, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* %6, align 8
  br label %86

43:                                               ; preds = %24
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %13, align 8
  br label %59

57:                                               ; preds = %43
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @mtd_lock(%struct.mtd_info* %63, i64 %64, i64 %65)
  store i32 %66, i32* %11, align 4
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @mtd_unlock(%struct.mtd_info* %68, i64 %69, i64 %70)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %89

76:                                               ; preds = %72
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %7, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %89

83:                                               ; preds = %76
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  store i64 0, i64* %6, align 8
  br label %86

86:                                               ; preds = %83, %37
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %18

89:                                               ; preds = %82, %75, %18
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

declare dso_local i32 @mtd_lock(%struct.mtd_info*, i64, i64) #1

declare dso_local i32 @mtd_unlock(%struct.mtd_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
