; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_sgmii.c_mtk_sgmii_setup_mode_an.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_sgmii.c_mtk_sgmii_setup_mode_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_sgmii = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@SGMSYS_PCS_LINK_TIMER = common dso_local global i32 0, align 4
@SGMII_LINK_TIMER_DEFAULT = common dso_local global i32 0, align 4
@SGMSYS_SGMII_MODE = common dso_local global i32 0, align 4
@SGMII_REMOTE_FAULT_DIS = common dso_local global i32 0, align 4
@SGMSYS_PCS_CONTROL_1 = common dso_local global i32 0, align 4
@SGMII_AN_RESTART = common dso_local global i32 0, align 4
@SGMSYS_QPHY_PWR_STATE_CTRL = common dso_local global i32 0, align 4
@SGMII_PHYA_PWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_sgmii_setup_mode_an(%struct.mtk_sgmii* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_sgmii*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_sgmii* %0, %struct.mtk_sgmii** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SGMSYS_PCS_LINK_TIMER, align 4
  %27 = load i32, i32* @SGMII_LINK_TIMER_DEFAULT, align 4
  %28 = call i32 @regmap_write(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SGMSYS_SGMII_MODE, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %6)
  %38 = load i32, i32* @SGMII_REMOTE_FAULT_DIS, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %4, align 8
  %42 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SGMSYS_SGMII_MODE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @regmap_write(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %4, align 8
  %52 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SGMSYS_PCS_CONTROL_1, align 4
  %59 = call i32 @regmap_read(i32 %57, i32 %58, i32* %6)
  %60 = load i32, i32* @SGMII_AN_RESTART, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %4, align 8
  %64 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SGMSYS_PCS_CONTROL_1, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @regmap_write(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %4, align 8
  %74 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SGMSYS_QPHY_PWR_STATE_CTRL, align 4
  %81 = call i32 @regmap_read(i32 %79, i32 %80, i32* %6)
  %82 = load i32, i32* @SGMII_PHYA_PWD, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %4, align 8
  %87 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SGMSYS_QPHY_PWR_STATE_CTRL, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @regmap_write(i32 %92, i32 %93, i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %18, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
