; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-vbi.c_buffer_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-vbi.c_buffer_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i64, i64 }
%struct.saa7134_buf = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.saa7134_dmaqueue* }
%struct.saa7134_dmaqueue = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"buffer_activate [%p]\0A\00", align 1
@TASK_A = common dso_local global i32 0, align 4
@TASK_B = common dso_local global i32 0, align 4
@SAA7134_OFMT_DATA_A = common dso_local global i32 0, align 4
@SAA7134_OFMT_DATA_B = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BURST_16 = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_ME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BUFFER_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.saa7134_buf*, %struct.saa7134_buf*)* @buffer_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_activate(%struct.saa7134_dev* %0, %struct.saa7134_buf* %1, %struct.saa7134_buf* %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_buf*, align 8
  %6 = alloca %struct.saa7134_buf*, align 8
  %7 = alloca %struct.saa7134_dmaqueue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_buf* %1, %struct.saa7134_buf** %5, align 8
  store %struct.saa7134_buf* %2, %struct.saa7134_buf** %6, align 8
  %10 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %11 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %15, align 8
  store %struct.saa7134_dmaqueue* %16, %struct.saa7134_dmaqueue** %7, align 8
  %17 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %18 = call i32 @vbi_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.saa7134_buf* %17)
  %19 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %20 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %22 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %23 = load i32, i32* @TASK_A, align 4
  %24 = call i32 @task_init(%struct.saa7134_dev* %21, %struct.saa7134_buf* %22, i32 %23)
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %26 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %27 = load i32, i32* @TASK_B, align 4
  %28 = call i32 @task_init(%struct.saa7134_dev* %25, %struct.saa7134_buf* %26, i32 %27)
  %29 = load i32, i32* @SAA7134_OFMT_DATA_A, align 4
  %30 = call i32 @saa_writeb(i32 %29, i32 6)
  %31 = load i32, i32* @SAA7134_OFMT_DATA_B, align 4
  %32 = call i32 @saa_writeb(i32 %31, i32 6)
  %33 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %34 = call i64 @saa7134_buffer_base(%struct.saa7134_buf* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* @SAA7134_RS_CONTROL_BURST_16, align 4
  %36 = load i32, i32* @SAA7134_RS_CONTROL_ME, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %7, align 8
  %39 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 12
  %43 = or i32 %37, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %8, align 8
  %45 = call i32 @SAA7134_RS_BA1(i32 2)
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @saa_writel(i32 %45, i64 %46)
  %48 = call i32 @SAA7134_RS_BA2(i32 2)
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %51 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %54 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = mul i64 %52, %55
  %57 = add i64 %49, %56
  %58 = call i32 @saa_writel(i32 %48, i64 %57)
  %59 = call i32 @SAA7134_RS_PITCH(i32 2)
  %60 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %61 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @saa_writel(i32 %59, i64 %62)
  %64 = call i32 @SAA7134_RS_CONTROL(i32 2)
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @saa_writel(i32 %64, i64 %65)
  %67 = call i32 @SAA7134_RS_BA1(i32 3)
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @saa_writel(i32 %67, i64 %68)
  %70 = call i32 @SAA7134_RS_BA2(i32 3)
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %73 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %76 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = mul i64 %74, %77
  %79 = add i64 %71, %78
  %80 = call i32 @saa_writel(i32 %70, i64 %79)
  %81 = call i32 @SAA7134_RS_PITCH(i32 3)
  %82 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %83 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @saa_writel(i32 %81, i64 %84)
  %86 = call i32 @SAA7134_RS_CONTROL(i32 3)
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @saa_writel(i32 %86, i64 %87)
  %89 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %90 = call i32 @saa7134_set_dmabits(%struct.saa7134_dev* %89)
  %91 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %7, align 8
  %92 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %91, i32 0, i32 0
  %93 = load i64, i64* @jiffies, align 8
  %94 = load i64, i64* @BUFFER_TIMEOUT, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @mod_timer(i32* %92, i64 %95)
  ret i32 0
}

declare dso_local i32 @vbi_dbg(i8*, %struct.saa7134_buf*) #1

declare dso_local i32 @task_init(%struct.saa7134_dev*, %struct.saa7134_buf*, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i64 @saa7134_buffer_base(%struct.saa7134_buf*) #1

declare dso_local i32 @saa_writel(i32, i64) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

declare dso_local i32 @saa7134_set_dmabits(%struct.saa7134_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
