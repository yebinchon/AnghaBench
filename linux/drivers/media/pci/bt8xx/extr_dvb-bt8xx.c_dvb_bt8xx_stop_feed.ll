; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_stop_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_stop_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.TYPE_2__, %struct.dvb_bt8xx_card* }
%struct.TYPE_2__ = type { i32 }
%struct.dvb_bt8xx_card = type { i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"dvb_bt8xx: stop_feed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @dvb_bt8xx_stop_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_bt8xx_stop_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.dvb_bt8xx_card*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %6 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %6, i32 0, i32 0
  %8 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  store %struct.dvb_demux* %8, %struct.dvb_demux** %4, align 8
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %9, i32 0, i32 1
  %11 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %10, align 8
  store %struct.dvb_bt8xx_card* %11, %struct.dvb_bt8xx_card** %5, align 8
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %1
  %22 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %30 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bt878_stop(i32 %36)
  br label %38

38:                                               ; preds = %33, %21
  %39 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %40 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bt878_stop(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
