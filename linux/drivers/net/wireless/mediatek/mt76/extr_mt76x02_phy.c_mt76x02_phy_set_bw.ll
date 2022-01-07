; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_phy_set_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_phy_set_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@CORE = common dso_local global i32 0, align 4
@MT_BBP_CORE_R1_BW = common dso_local global i32 0, align 4
@AGC = common dso_local global i32 0, align 4
@MT_BBP_AGC_R0_BW = common dso_local global i32 0, align 4
@MT_BBP_AGC_R0_CTRL_CHAN = common dso_local global i32 0, align 4
@TXBE = common dso_local global i32 0, align 4
@MT_BBP_TXBE_R0_CTRL_CHAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_phy_set_bw(%struct.mt76x02_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %12 [
    i32 128, label %10
    i32 129, label %11
  ]

10:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  store i32 7, i32* %8, align 4
  br label %13

11:                                               ; preds = %3
  store i32 2, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %13

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %13

13:                                               ; preds = %12, %11, %10
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %15 = load i32, i32* @CORE, align 4
  %16 = call i32 @MT_BBP(i32 %15, i32 1)
  %17 = load i32, i32* @MT_BBP_CORE_R1_BW, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %14, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %21 = load i32, i32* @AGC, align 4
  %22 = call i32 @MT_BBP(i32 %21, i32 0)
  %23 = load i32, i32* @MT_BBP_AGC_R0_BW, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %20, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %27 = load i32, i32* @AGC, align 4
  %28 = call i32 @MT_BBP(i32 %27, i32 0)
  %29 = load i32, i32* @MT_BBP_AGC_R0_CTRL_CHAN, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %26, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %33 = load i32, i32* @TXBE, align 4
  %34 = call i32 @MT_BBP(i32 %33, i32 0)
  %35 = load i32, i32* @MT_BBP_TXBE_R0_CTRL_CHAN, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %32, i32 %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
