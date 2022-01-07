; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_dvb_start_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_dvb_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.TYPE_2__, %struct.mantis_pci* }
%struct.TYPE_2__ = type { i32 }
%struct.mantis_pci = type { i32, i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Mantis DVB Start feed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no frontend ?\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"mantis start feed, feeds=%d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"mantis start feed & dma\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @mantis_dvb_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mantis_dvb_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.mantis_pci*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %6 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %6, i32 0, i32 0
  %8 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  store %struct.dvb_demux* %8, %struct.dvb_demux** %4, align 8
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %9, i32 0, i32 1
  %11 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  store %struct.mantis_pci* %11, %struct.mantis_pci** %5, align 8
  %12 = load i32, i32* @MANTIS_DEBUG, align 4
  %13 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %12, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @MANTIS_DEBUG, align 4
  %21 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %20, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %1
  %25 = load %struct.mantis_pci*, %struct.mantis_pci** %5, align 8
  %26 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @MANTIS_DEBUG, align 4
  %30 = load %struct.mantis_pci*, %struct.mantis_pci** %5, align 8
  %31 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %29, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.mantis_pci*, %struct.mantis_pci** %5, align 8
  %35 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %24
  %39 = load i32, i32* @MANTIS_DEBUG, align 4
  %40 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %39, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.mantis_pci*, %struct.mantis_pci** %5, align 8
  %42 = call i32 @mantis_dma_start(%struct.mantis_pci* %41)
  %43 = load %struct.mantis_pci*, %struct.mantis_pci** %5, align 8
  %44 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %43, i32 0, i32 1
  %45 = call i32 @tasklet_enable(i32* %44)
  br label %46

46:                                               ; preds = %38, %24
  %47 = load %struct.mantis_pci*, %struct.mantis_pci** %5, align 8
  %48 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @mantis_dma_start(%struct.mantis_pci*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
