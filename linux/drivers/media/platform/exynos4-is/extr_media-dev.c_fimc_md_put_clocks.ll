; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_put_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_put_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@FIMC_MAX_CAMCLKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FIMC_MAX_WBCLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_md*)* @fimc_md_put_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_md_put_clocks(%struct.fimc_md* %0) #0 {
  %2 = alloca %struct.fimc_md*, align 8
  %3 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %2, align 8
  %4 = load i32, i32* @FIMC_MAX_CAMCLKS, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %21, %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %11 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %5

21:                                               ; preds = %9
  %22 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %23 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @clk_put(i8* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i8* @ERR_PTR(i32 %32)
  %34 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %35 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %33, i8** %40, align 8
  br label %5

41:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %75, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @FIMC_MAX_WBCLKS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %48 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %75

57:                                               ; preds = %46
  %58 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %59 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @clk_put(i8* %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i8* @ERR_PTR(i32 %67)
  %69 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %70 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  br label %75

75:                                               ; preds = %57, %56
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %42

78:                                               ; preds = %42
  ret void
}

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @clk_put(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
