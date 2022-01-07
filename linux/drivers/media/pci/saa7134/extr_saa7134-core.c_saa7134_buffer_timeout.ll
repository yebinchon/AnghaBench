; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_buffer_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_buffer_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dmaqueue = type { i64, %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.timer_list = type { i32 }

@timeout = common dso_local global i32 0, align 4
@SAA7134_REGION_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"timeout on %p\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@q = common dso_local global %struct.saa7134_dmaqueue* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_buffer_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.saa7134_dmaqueue*, align 8
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %7 = ptrtoint %struct.saa7134_dmaqueue* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timeout, align 4
  %10 = call %struct.saa7134_dmaqueue* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.saa7134_dmaqueue* %10, %struct.saa7134_dmaqueue** %3, align 8
  %11 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %12 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %11, i32 0, i32 1
  %13 = load %struct.saa7134_dev*, %struct.saa7134_dev** %12, align 8
  store %struct.saa7134_dev* %13, %struct.saa7134_dev** %4, align 8
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %15 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* @SAA7134_REGION_ENABLE, align 4
  %19 = call i32 @saa_writeb(i32 %18, i32 0)
  %20 = load i32, i32* @SAA7134_REGION_ENABLE, align 4
  %21 = call i32 @saa_writeb(i32 %20, i32 128)
  %22 = load i32, i32* @SAA7134_REGION_ENABLE, align 4
  %23 = call i32 @saa_writeb(i32 %22, i32 0)
  %24 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %25 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %30 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @core_dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %34 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %35 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %36 = call i32 @saa7134_buffer_finish(%struct.saa7134_dev* %33, %struct.saa7134_dmaqueue* %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %1
  %38 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %39 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %40 = call i32 @saa7134_buffer_next(%struct.saa7134_dev* %38, %struct.saa7134_dmaqueue* %39)
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %42 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local %struct.saa7134_dmaqueue* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @core_dbg(i8*, i64) #1

declare dso_local i32 @saa7134_buffer_finish(%struct.saa7134_dev*, %struct.saa7134_dmaqueue*, i32) #1

declare dso_local i32 @saa7134_buffer_next(%struct.saa7134_dev*, %struct.saa7134_dmaqueue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
