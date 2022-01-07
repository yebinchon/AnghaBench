; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_core.c_mt76x02u_restart_pre_tbtt_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_core.c_mt76x02u_restart_pre_tbtt_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MT_TBTT_TIMER = common dso_local global i32 0, align 4
@MT_TBTT_TIMER_VAL = common dso_local global i32 0, align 4
@MT_TSF_TIMER_DW0 = common dso_local global i32 0, align 4
@MT_TSF_TIMER_DW1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"TSF: %llu us TBTT %u us\0A\00", align 1
@PRE_TBTT_USEC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x02u_restart_pre_tbtt_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02u_restart_pre_tbtt_timer(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %9 = load i32, i32* @MT_TBTT_TIMER, align 4
  %10 = load i32, i32* @MT_TBTT_TIMER_VAL, align 4
  %11 = call i32 @mt76_get_field(%struct.mt76x02_dev* %8, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 32
  store i32 %13, i32* %3, align 4
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %15 = load i32, i32* @MT_TSF_TIMER_DW0, align 4
  %16 = call i32 @mt76_rr(%struct.mt76x02_dev* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %18 = load i32, i32* @MT_TSF_TIMER_DW1, align 4
  %19 = call i32 @mt76_rr(%struct.mt76x02_dev* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %20, 32
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %25 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 1000000000, %34
  %36 = lshr i64 %35, 10
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @PRE_TBTT_USEC, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %1
  %42 = load i32, i32* @PRE_TBTT_USEC, align 4
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 1000
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  br label %61

51:                                               ; preds = %1
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PRE_TBTT_USEC, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 1000
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %51, %41
  %62 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %63 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %66 = call i32 @hrtimer_start(i32* %63, i32 %64, i32 %65)
  ret void
}

declare dso_local i32 @mt76_get_field(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
