; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_init_edcca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_init_edcca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, i32, i64, i64 }

@MT_RXTD_8_LOWER_SIGNAL = common dso_local global i32 0, align 4
@MT_MIB_STAT_ED = common dso_local global i32 0, align 4
@MT_MIB_CTL = common dso_local global i32 0, align 4
@MT_MIB_CTL_ED_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_init_edcca(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %3 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %4 = call i32 @MT_RXTD(i32 8)
  %5 = load i32, i32* @MT_RXTD_8_LOWER_SIGNAL, align 4
  %6 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %3, i32 %4, i32 %5, i32 35)
  %7 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %8 = load i32, i32* @MT_MIB_STAT_ED, align 4
  %9 = call i32 @mt76_rr(%struct.mt7603_dev* %7, i32 %8)
  %10 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %16 = load i32, i32* @MT_MIB_CTL, align 4
  %17 = load i32, i32* @MT_MIB_CTL_ED_TIME, align 4
  %18 = call i32 @mt76_set(%struct.mt7603_dev* %15, i32 %16, i32 %17)
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %21 = load i32, i32* @MT_MIB_CTL, align 4
  %22 = load i32, i32* @MT_MIB_CTL_ED_TIME, align 4
  %23 = call i32 @mt76_clear(%struct.mt7603_dev* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %25, i32 0, i32 0
  store i32 255, i32* %26, align 8
  %27 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %28 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = call i32 (...) @ktime_get_boottime()
  %30 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %33 = call i32 @mt7603_edcca_set_strict(%struct.mt7603_dev* %32, i32 0)
  ret void
}

declare dso_local i32 @mt76_rmw_field(%struct.mt7603_dev*, i32, i32, i32) #1

declare dso_local i32 @MT_RXTD(i32) #1

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @ktime_get_boottime(...) #1

declare dso_local i32 @mt7603_edcca_set_strict(%struct.mt7603_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
