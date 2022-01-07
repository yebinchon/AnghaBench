; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_start_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i64 }
%struct.pluto = type { i32, i32 }

@PID0_AFIL = common dso_local global i32 0, align 4
@PID0_NOFIL = common dso_local global i32 0, align 4
@NHWFILTERS = common dso_local global i64 0, align 8
@PIDn_ENP = common dso_local global i32 0, align 4
@PIDn_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @pluto_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pluto_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca %struct.dvb_demux_feed*, align 8
  %3 = alloca %struct.pluto*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %2, align 8
  %4 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %5 = call %struct.pluto* @feed_to_pluto(%struct.dvb_demux_feed* %4)
  store %struct.pluto* %5, %struct.pluto** %3, align 8
  %6 = load %struct.pluto*, %struct.pluto** %3, align 8
  %7 = getelementptr inbounds %struct.pluto, %struct.pluto* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.pluto*, %struct.pluto** %3, align 8
  %13 = call i32 @REG_PIDn(i64 0)
  %14 = load i32, i32* @PID0_AFIL, align 4
  %15 = load i32, i32* @PID0_NOFIL, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @pluto_rw(%struct.pluto* %12, i32 %13, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %20 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 8192
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %25 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NHWFILTERS, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.pluto*, %struct.pluto** %3, align 8
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %32 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @REG_PIDn(i64 %33)
  %35 = load i32, i32* @PIDn_ENP, align 4
  %36 = load i32, i32* @PIDn_PID, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PIDn_ENP, align 4
  %39 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %2, align 8
  %40 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %38, %41
  %43 = call i32 @pluto_rw(%struct.pluto* %30, i32 %34, i32 %37, i32 %42)
  br label %57

44:                                               ; preds = %23, %18
  %45 = load %struct.pluto*, %struct.pluto** %3, align 8
  %46 = getelementptr inbounds %struct.pluto, %struct.pluto* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.pluto*, %struct.pluto** %3, align 8
  %52 = call i32 @REG_PIDn(i64 0)
  %53 = load i32, i32* @PID0_NOFIL, align 4
  %54 = load i32, i32* @PID0_NOFIL, align 4
  %55 = call i32 @pluto_rw(%struct.pluto* %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56, %29
  ret i32 0
}

declare dso_local %struct.pluto* @feed_to_pluto(%struct.dvb_demux_feed*) #1

declare dso_local i32 @pluto_rw(%struct.pluto*, i32, i32, i32) #1

declare dso_local i32 @REG_PIDn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
