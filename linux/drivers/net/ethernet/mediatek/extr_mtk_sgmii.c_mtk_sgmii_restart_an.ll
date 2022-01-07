; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_sgmii.c_mtk_sgmii_restart_an.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_sgmii.c_mtk_sgmii_restart_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.TYPE_2__*, %struct.mtk_sgmii* }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_sgmii = type { i32* }

@MTK_SHARED_SGMII = common dso_local global i32 0, align 4
@SGMSYS_PCS_CONTROL_1 = common dso_local global i32 0, align 4
@SGMII_AN_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_sgmii_restart_an(%struct.mtk_eth* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_sgmii*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %8, i32 0, i32 1
  %10 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %9, align 8
  store %struct.mtk_sgmii* %10, %struct.mtk_sgmii** %5, align 8
  %11 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MTK_SHARED_SGMII, align 4
  %17 = call i64 @MTK_HAS_CAPS(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 0, %19 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  %24 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %56

33:                                               ; preds = %22
  %34 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SGMSYS_PCS_CONTROL_1, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %6)
  %43 = load i32, i32* @SGMII_AN_RESTART, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %47 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SGMSYS_PCS_CONTROL_1, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @regmap_write(i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %33, %32
  ret void
}

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
