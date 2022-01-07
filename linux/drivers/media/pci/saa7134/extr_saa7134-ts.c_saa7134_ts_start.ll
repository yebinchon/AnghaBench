; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_saa7134_ts_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_saa7134_ts_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.saa7134_dev = type { i32, i64, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"TS start\0A\00", align 1
@SAA7134_TS_DMA0 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA1 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA2 = common dso_local global i32 0, align 4
@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BURST_16 = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_ME = common dso_local global i32 0, align 4
@SAA7134_TS_SERIAL1 = common dso_local global i32 0, align 4
@saa7134_boards = common dso_local global %struct.TYPE_8__* null, align 8
@SAA7134_TS_SERIAL0 = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL_SERIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_ts_start(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  %4 = call i32 @ts_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %6 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

11:                                               ; preds = %1
  %12 = load i32, i32* @SAA7134_TS_DMA0, align 4
  %13 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %14 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %17, 255
  %19 = call i32 @saa_writeb(i32 %12, i32 %18)
  %20 = load i32, i32* @SAA7134_TS_DMA1, align 4
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  %28 = call i32 @saa_writeb(i32 %20, i32 %27)
  %29 = load i32, i32* @SAA7134_TS_DMA2, align 4
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %31 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 63
  %37 = call i32 @saa_writeb(i32 %29, i32 %36)
  %38 = call i32 @SAA7134_RS_PITCH(i32 5)
  %39 = load i32, i32* @TS_PACKET_SIZE, align 4
  %40 = call i32 @saa_writel(i32 %38, i32 %39)
  %41 = call i32 @SAA7134_RS_CONTROL(i32 5)
  %42 = load i32, i32* @SAA7134_RS_CONTROL_BURST_16, align 4
  %43 = load i32, i32* @SAA7134_RS_CONTROL_ME, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 12
  %51 = or i32 %44, %50
  %52 = call i32 @saa_writel(i32 %41, i32 %51)
  %53 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %54 = call i32 @saa_writeb(i32 %53, i32 0)
  %55 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %56 = call i32 @saa_writeb(i32 %55, i32 3)
  %57 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %58 = call i32 @saa_writeb(i32 %57, i32 0)
  %59 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %60 = call i32 @saa_writeb(i32 %59, i32 1)
  %61 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %62 = call i32 @saa_writeb(i32 %61, i32 0)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saa7134_boards, align 8
  %64 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %65 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %102 [
    i32 129, label %70
    i32 128, label %84
  ]

70:                                               ; preds = %11
  %71 = load i32, i32* @SAA7134_TS_SERIAL0, align 4
  %72 = call i32 @saa_writeb(i32 %71, i32 64)
  %73 = load i32, i32* @SAA7134_TS_PARALLEL, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saa7134_boards, align 8
  %75 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %76 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 4
  %82 = or i32 236, %81
  %83 = call i32 @saa_writeb(i32 %73, i32 %82)
  br label %102

84:                                               ; preds = %11
  %85 = load i32, i32* @SAA7134_TS_SERIAL0, align 4
  %86 = call i32 @saa_writeb(i32 %85, i32 216)
  %87 = load i32, i32* @SAA7134_TS_PARALLEL, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saa7134_boards, align 8
  %89 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %90 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 4
  %96 = or i32 108, %95
  %97 = call i32 @saa_writeb(i32 %87, i32 %96)
  %98 = load i32, i32* @SAA7134_TS_PARALLEL_SERIAL, align 4
  %99 = call i32 @saa_writeb(i32 %98, i32 188)
  %100 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %101 = call i32 @saa_writeb(i32 %100, i32 2)
  br label %102

102:                                              ; preds = %11, %84, %70
  %103 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %104 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %10
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @ts_dbg(i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
