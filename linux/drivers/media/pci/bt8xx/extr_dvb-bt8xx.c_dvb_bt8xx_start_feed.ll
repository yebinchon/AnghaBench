; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_start_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.TYPE_2__, %struct.dvb_bt8xx_card* }
%struct.TYPE_2__ = type { i32 }
%struct.dvb_bt8xx_card = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"dvb_bt8xx: start_feed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @dvb_bt8xx_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_bt8xx_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.dvb_bt8xx_card*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %7 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %7, i32 0, i32 0
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  store %struct.dvb_demux* %9, %struct.dvb_demux** %4, align 8
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %10, i32 0, i32 1
  %12 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %11, align 8
  store %struct.dvb_bt8xx_card* %12, %struct.dvb_bt8xx_card** %5, align 8
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %56

22:                                               ; preds = %1
  %23 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %24 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %51

37:                                               ; preds = %22
  %38 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %42 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %45 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %48 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bt878_start(i32 %40, i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %37, %22
  %52 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %53 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %19
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bt878_start(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
