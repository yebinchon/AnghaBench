; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_comp.c_mtk_mdp_comp_clock_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_comp.c_mtk_mdp_comp_clock_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_mdp_comp = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_mdp_comp_clock_off(%struct.device* %0, %struct.mtk_mdp_comp* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mtk_mdp_comp*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.mtk_mdp_comp* %1, %struct.mtk_mdp_comp** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %6
  %14 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %33

24:                                               ; preds = %13
  %25 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.mtk_mdp_comp*, %struct.mtk_mdp_comp** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_mdp_comp, %struct.mtk_mdp_comp* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @mtk_smi_larb_put(i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mtk_smi_larb_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
