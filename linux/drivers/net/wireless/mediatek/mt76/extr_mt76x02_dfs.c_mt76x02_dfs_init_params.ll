; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_DFS_UNSET = common dso_local global i64 0, align 8
@MT_INT_GPTIMER = common dso_local global i32 0, align 4
@MT_INT_TIMER_EN = common dso_local global i32 0, align 4
@MT_INT_TIMER_EN_GP_TIMER_EN = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@IBI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_dfs_init_params(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %4 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store %struct.cfg80211_chan_def* %6, %struct.cfg80211_chan_def** %3, align 8
  %7 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %8 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %17 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_DFS_UNSET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %24 = call i32 @mt76x02_dfs_init_sw_detector(%struct.mt76x02_dev* %23)
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %26 = call i32 @mt76x02_dfs_set_bbp_params(%struct.mt76x02_dev* %25)
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %28 = call i32 @mt76x02_dfs_set_capture_mode_ctrl(%struct.mt76x02_dev* %27, i32 1)
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %30 = load i32, i32* @MT_INT_GPTIMER, align 4
  %31 = call i32 @mt76x02_irq_enable(%struct.mt76x02_dev* %29, i32 %30)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %33 = load i32, i32* @MT_INT_TIMER_EN, align 4
  %34 = load i32, i32* @MT_INT_TIMER_EN_GP_TIMER_EN, align 4
  %35 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %32, i32 %33, i32 %34, i32 1)
  br label %72

36:                                               ; preds = %15, %1
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %38 = load i32, i32* @DFS, align 4
  %39 = call i32 @MT_BBP(i32 %38, i32 0)
  %40 = call i32 @mt76_wr(%struct.mt76x02_dev* %37, i32 %39, i32 0)
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %42 = load i32, i32* @DFS, align 4
  %43 = call i32 @MT_BBP(i32 %42, i32 1)
  %44 = call i32 @mt76_wr(%struct.mt76x02_dev* %41, i32 %43, i32 15)
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %45, i32 0, i32 0
  %47 = call i32 @mt76_chip(%struct.TYPE_4__* %46)
  %48 = icmp eq i32 %47, 30224
  br i1 %48, label %54, label %49

49:                                               ; preds = %36
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %51 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %50, i32 0, i32 0
  %52 = call i32 @mt76_chip(%struct.TYPE_4__* %51)
  %53 = icmp eq i32 %52, 30256
  br i1 %53, label %54, label %59

54:                                               ; preds = %49, %36
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %56 = load i32, i32* @IBI, align 4
  %57 = call i32 @MT_BBP(i32 %56, i32 11)
  %58 = call i32 @mt76_wr(%struct.mt76x02_dev* %55, i32 %57, i32 266240129)
  br label %64

59:                                               ; preds = %49
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %61 = load i32, i32* @IBI, align 4
  %62 = call i32 @MT_BBP(i32 %61, i32 11)
  %63 = call i32 @mt76_wr(%struct.mt76x02_dev* %60, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %66 = load i32, i32* @MT_INT_GPTIMER, align 4
  %67 = call i32 @mt76x02_irq_disable(%struct.mt76x02_dev* %65, i32 %66)
  %68 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %69 = load i32, i32* @MT_INT_TIMER_EN, align 4
  %70 = load i32, i32* @MT_INT_TIMER_EN_GP_TIMER_EN, align 4
  %71 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %68, i32 %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %64, %22
  ret void
}

declare dso_local i32 @mt76x02_dfs_init_sw_detector(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_dfs_set_bbp_params(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_dfs_set_capture_mode_ctrl(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_irq_enable(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @mt76_chip(%struct.TYPE_4__*) #1

declare dso_local i32 @mt76x02_irq_disable(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
