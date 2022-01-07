; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_comp.c_mtk_mdp_comp_clock_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_comp.c_mtk_mdp_comp_clock_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_mdp_comp = type { i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [43 x i8] c"failed to get larb, err %d. type:%d id:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to enable clock, err %d. type:%d id:%d i:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_mdp_comp_clock_on(%struct.device* %0, %struct.mtk_mdp_comp* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mtk_mdp_comp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.mtk_mdp_comp* %1, %struct.mtk_mdp_comp** %4, align 8
  %7 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @mtk_smi_larb_get(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %18, %11
  br label %29

29:                                               ; preds = %28, %2
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %71, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %30
  %38 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %39 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %71

48:                                               ; preds = %37
  %49 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %50 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_prepare_enable(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %66 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %59, %48
  br label %71

71:                                               ; preds = %70, %47
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %30

74:                                               ; preds = %30
  ret void
}

declare dso_local i32 @mtk_smi_larb_get(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
