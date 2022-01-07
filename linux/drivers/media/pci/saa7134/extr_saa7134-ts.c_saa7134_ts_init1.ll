; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_saa7134_ts_init1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_saa7134_ts_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_4__, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, %struct.saa7134_dev*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@tsbufs = common dso_local global i32 0, align 4
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@ts_nr_packets = common dso_local global i32 0, align 4
@saa7134_buffer_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_ts_init1(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = load i32, i32* @tsbufs, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 2, i32* @tsbufs, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, i32* @tsbufs, align 4
  %8 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  store i32 %11, i32* @tsbufs, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, i32* @ts_nr_packets, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 4, i32* @ts_nr_packets, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* @ts_nr_packets, align 4
  %18 = icmp sgt i32 %17, 312
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 312, i32* @ts_nr_packets, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* @tsbufs, align 4
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %23 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @ts_nr_packets, align 4
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %34 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* @saa7134_buffer_timeout, align 4
  %37 = call i32 @timer_setup(i32* %35, i32 %36, i32 0)
  %38 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %39 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %40 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store %struct.saa7134_dev* %38, %struct.saa7134_dev** %41, align 8
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %43 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %48 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %51 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = call i32 @saa7134_pgtable_alloc(i32 %49, i32* %52)
  %54 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %55 = call i32 @saa7134_ts_init_hw(%struct.saa7134_dev* %54)
  ret i32 0
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @saa7134_pgtable_alloc(i32, i32*) #1

declare dso_local i32 @saa7134_ts_init_hw(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
