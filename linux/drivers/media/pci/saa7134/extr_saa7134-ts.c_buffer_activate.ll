; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_buffer_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_buffer_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.saa7134_buf = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"buffer_activate [%p]\00", align 1
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"- [top]     buf=%p next=%p\0A\00", align 1
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"- [bottom]  buf=%p next=%p\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TS_BUFFER_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.saa7134_buf*, %struct.saa7134_buf*)* @buffer_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_activate(%struct.saa7134_dev* %0, %struct.saa7134_buf* %1, %struct.saa7134_buf* %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_buf*, align 8
  %6 = alloca %struct.saa7134_buf*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_buf* %1, %struct.saa7134_buf** %5, align 8
  store %struct.saa7134_buf* %2, %struct.saa7134_buf** %6, align 8
  %7 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %8 = call i32 (i8*, %struct.saa7134_buf*, ...) @ts_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.saa7134_buf* %7)
  %9 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %10 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %12 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %18 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %21 = icmp eq %struct.saa7134_buf* null, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  store %struct.saa7134_buf* %23, %struct.saa7134_buf** %6, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %32 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %33 = call i32 (i8*, %struct.saa7134_buf*, ...) @ts_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.saa7134_buf* %31, %struct.saa7134_buf* %32)
  %34 = call i32 @SAA7134_RS_BA1(i32 5)
  %35 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %36 = call i32 @saa7134_buffer_base(%struct.saa7134_buf* %35)
  %37 = call i32 @saa_writel(i32 %34, i32 %36)
  %38 = call i32 @SAA7134_RS_BA2(i32 5)
  %39 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %40 = call i32 @saa7134_buffer_base(%struct.saa7134_buf* %39)
  %41 = call i32 @saa_writel(i32 %38, i32 %40)
  %42 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %43 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %44 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %60

45:                                               ; preds = %24
  %46 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %47 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %48 = call i32 (i8*, %struct.saa7134_buf*, ...) @ts_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.saa7134_buf* %46, %struct.saa7134_buf* %47)
  %49 = call i32 @SAA7134_RS_BA1(i32 5)
  %50 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %51 = call i32 @saa7134_buffer_base(%struct.saa7134_buf* %50)
  %52 = call i32 @saa_writel(i32 %49, i32 %51)
  %53 = call i32 @SAA7134_RS_BA2(i32 5)
  %54 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %55 = call i32 @saa7134_buffer_base(%struct.saa7134_buf* %54)
  %56 = call i32 @saa_writel(i32 %53, i32 %55)
  %57 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %58 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %59 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %45, %30
  %61 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %62 = call i32 @saa7134_set_dmabits(%struct.saa7134_dev* %61)
  %63 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %64 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i64, i64* @TS_BUFFER_TIMEOUT, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @mod_timer(i32* %65, i64 %68)
  %70 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %71 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %60
  %75 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %76 = call i32 @saa7134_ts_start(%struct.saa7134_dev* %75)
  br label %77

77:                                               ; preds = %74, %60
  ret i32 0
}

declare dso_local i32 @ts_dbg(i8*, %struct.saa7134_buf*, ...) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @saa7134_buffer_base(%struct.saa7134_buf*) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @saa7134_set_dmabits(%struct.saa7134_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @saa7134_ts_start(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
