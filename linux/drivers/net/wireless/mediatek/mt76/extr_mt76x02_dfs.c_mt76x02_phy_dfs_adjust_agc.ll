; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_phy_dfs_adjust_agc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_phy_dfs_adjust_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@AGC = common dso_local global i32 0, align 4
@MT_BBP_AGC_LNA_HIGH_GAIN = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@MT_DFS_CH_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_phy_dfs_adjust_agc(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %9 = load i32, i32* @AGC, align 4
  %10 = call i32 @MT_BBP(i32 %9, i32 8)
  %11 = call i32 @mt76_rr(%struct.mt76x02_dev* %8, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %13 = load i32, i32* @AGC, align 4
  %14 = call i32 @MT_BBP(i32 %13, i32 4)
  %15 = call i32 @mt76_rr(%struct.mt76x02_dev* %12, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 32256
  %18 = ashr i32 %17, 9
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, -520093697
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = ashr i32 %22, 1
  %24 = shl i32 %23, 24
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %28 = load i32, i32* @AGC, align 4
  %29 = call i32 @MT_BBP(i32 %28, i32 4)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mt76_wr(%struct.mt76x02_dev* %27, i32 %29, i32 %30)
  %32 = load i32, i32* @MT_BBP_AGC_LNA_HIGH_GAIN, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @FIELD_GET(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 56
  %40 = ashr i32 %39, 3
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %44, 775
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %47 = load i32, i32* @DFS, align 4
  %48 = call i32 @MT_BBP(i32 %47, i32 31)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mt76_wr(%struct.mt76x02_dev* %46, i32 %48, i32 %49)
  %51 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %52 = call i64 @is_mt76x2(%struct.mt76x02_dev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %1
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %56 = load i32, i32* @DFS, align 4
  %57 = call i32 @MT_BBP(i32 %56, i32 32)
  %58 = call i32 @mt76_wr(%struct.mt76x02_dev* %55, i32 %57, i32 262257)
  br label %70

59:                                               ; preds = %1
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %61 = load i32, i32* @DFS, align 4
  %62 = call i32 @MT_BBP(i32 %61, i32 0)
  %63 = call i32 @mt76_wr(%struct.mt76x02_dev* %60, i32 %62, i32 0)
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %65 = load i32, i32* @DFS, align 4
  %66 = call i32 @MT_BBP(i32 %65, i32 0)
  %67 = load i32, i32* @MT_DFS_CH_EN, align 4
  %68 = shl i32 %67, 16
  %69 = call i32 @mt76_wr(%struct.mt76x02_dev* %64, i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i64 @is_mt76x2(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
