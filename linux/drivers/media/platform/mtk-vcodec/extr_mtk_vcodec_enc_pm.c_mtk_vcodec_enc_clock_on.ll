; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc_pm.c_mtk_vcodec_enc_clock_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc_pm.c_mtk_vcodec_enc_clock_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_pm = type { i32, i32, %struct.mtk_vcodec_clk }
%struct.mtk_vcodec_clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"venc clk_prepare_enable %d %s fail %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"mtk_smi_larb_get larb3 fail %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"mtk_smi_larb_get larb4 fail %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_vcodec_enc_clock_on(%struct.mtk_vcodec_pm* %0) #0 {
  %2 = alloca %struct.mtk_vcodec_pm*, align 8
  %3 = alloca %struct.mtk_vcodec_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_vcodec_pm* %0, %struct.mtk_vcodec_pm** %2, align 8
  %6 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %6, i32 0, i32 2
  store %struct.mtk_vcodec_clk* %7, %struct.mtk_vcodec_clk** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %39, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_prepare_enable(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %3, align 8
  %29 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, i32, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %35, i32 %36)
  br label %69

38:                                               ; preds = %14
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %8

42:                                               ; preds = %8
  %43 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %2, align 8
  %44 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @mtk_smi_larb_get(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i8*, i32, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %68

52:                                               ; preds = %42
  %53 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %2, align 8
  %54 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mtk_smi_larb_get(i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i8*, i32, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %63

62:                                               ; preds = %52
  br label %88

63:                                               ; preds = %59
  %64 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %2, align 8
  %65 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mtk_smi_larb_put(i32 %66)
  br label %68

68:                                               ; preds = %63, %49
  br label %69

69:                                               ; preds = %68, %26
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %85, %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %3, align 8
  %77 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @clk_disable_unprepare(i32 %83)
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %5, align 4
  br label %72

88:                                               ; preds = %62, %72
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32, ...) #1

declare dso_local i32 @mtk_smi_larb_get(i32) #1

declare dso_local i32 @mtk_smi_larb_put(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
