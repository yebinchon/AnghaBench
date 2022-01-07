; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i64, i32, i32, %struct.TYPE_5__**, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@STOPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"IRQ while state stopped\0A\00", align 1
@STOPPING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"IRQ while state stopping\0A\00", align 1
@VNMS_REG = common dso_local global i32 0, align 4
@VNMS_FBS_MASK = common dso_local global i32 0, align 4
@VNMS_FBS_SHIFT = common dso_local global i32 0, align 4
@STARTING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Starting sync slot: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Capture start synced!\0A\00", align 1
@RUNNING = common dso_local global i64 0, align 8
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Dropping frame %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rvin_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rvin_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.rvin_dev*
  store %struct.rvin_dev* %12, %struct.rvin_dev** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %14 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %13, i32 0, i32 2
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %18 = call i32 @rvin_get_interrupt_status(%struct.rvin_dev* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %142

22:                                               ; preds = %2
  %23 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %24 = call i32 @rvin_ack_interrupt(%struct.rvin_dev* %23)
  store i32 1, i32* %9, align 4
  %25 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %26 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @STOPPED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %32 = call i32 (%struct.rvin_dev*, i8*, ...) @vin_dbg(%struct.rvin_dev* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %142

33:                                               ; preds = %22
  %34 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %35 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STOPPING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %41 = call i32 (%struct.rvin_dev*, i8*, ...) @vin_dbg(%struct.rvin_dev* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %142

42:                                               ; preds = %33
  %43 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %44 = load i32, i32* @VNMS_REG, align 4
  %45 = call i32 @rvin_read(%struct.rvin_dev* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @VNMS_FBS_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @VNMS_FBS_SHIFT, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %52 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @STARTING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (%struct.rvin_dev*, i8*, ...) @vin_dbg(%struct.rvin_dev* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %142

63:                                               ; preds = %56
  %64 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %65 = call i32 (%struct.rvin_dev*, i8*, ...) @vin_dbg(%struct.rvin_dev* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i64, i64* @RUNNING, align 8
  %67 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %68 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %42
  %70 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %71 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %72, i64 %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = icmp ne %struct.TYPE_5__* %76, null
  br i1 %77, label %78, label %128

78:                                               ; preds = %69
  %79 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %80 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %84 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %85, i64 %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i32 %82, i32* %90, align 4
  %91 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %92 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %95 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %94, i32 0, i32 3
  %96 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %96, i64 %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32 %93, i32* %101, align 4
  %102 = call i32 (...) @ktime_get_ns()
  %103 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %104 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %103, i32 0, i32 3
  %105 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %105, i64 %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %102, i32* %111, align 4
  %112 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %113 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %114, i64 %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %121 = call i32 @vb2_buffer_done(%struct.TYPE_6__* %119, i32 %120)
  %122 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %123 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %122, i32 0, i32 3
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %124, i64 %126
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %127, align 8
  br label %134

128:                                              ; preds = %69
  %129 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %130 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %131 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (%struct.rvin_dev*, i8*, ...) @vin_dbg(%struct.rvin_dev* %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %128, %78
  %135 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %136 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @rvin_fill_hw_slot(%struct.rvin_dev* %139, i32 %140)
  br label %142

142:                                              ; preds = %134, %59, %39, %30, %21
  %143 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %144 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %143, i32 0, i32 2
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @IRQ_RETVAL(i32 %147)
  ret i32 %148
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rvin_get_interrupt_status(%struct.rvin_dev*) #1

declare dso_local i32 @rvin_ack_interrupt(%struct.rvin_dev*) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, ...) #1

declare dso_local i32 @rvin_read(%struct.rvin_dev*, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rvin_fill_hw_slot(%struct.rvin_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
