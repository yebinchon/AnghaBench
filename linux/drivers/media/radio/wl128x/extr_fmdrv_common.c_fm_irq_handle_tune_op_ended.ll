; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_irq_handle_tune_op_ended.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_irq_handle_tune_op_ended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i8* }

@FM_FR_EVENT = common dso_local global i32 0, align 4
@FM_BL_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"irq: tune ended/bandlimit reached\0A\00", align 1
@FM_AF_SWITCH_INPROGRESS = common dso_local global i32 0, align 4
@FM_AF_JUMP_RD_FREQ_IDX = common dso_local global i8* null, align 8
@FM_HW_POWER_ENB_IDX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmdev*)* @fm_irq_handle_tune_op_ended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm_irq_handle_tune_op_ended(%struct.fmdev* %0) #0 {
  %2 = alloca %struct.fmdev*, align 8
  store %struct.fmdev* %0, %struct.fmdev** %2, align 8
  %3 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %4 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @FM_FR_EVENT, align 4
  %8 = load i32, i32* @FM_BL_EVENT, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %12 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = call i32 @fmdbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @FM_AF_SWITCH_INPROGRESS, align 4
  %20 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %21 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %20, i32 0, i32 2
  %22 = call i64 @test_and_clear_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i8*, i8** @FM_AF_JUMP_RD_FREQ_IDX, align 8
  %26 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %27 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8* %25, i8** %28, align 8
  br label %37

29:                                               ; preds = %17
  %30 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %31 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %30, i32 0, i32 1
  %32 = call i32 @complete(i32* %31)
  %33 = load i8*, i8** @FM_HW_POWER_ENB_IDX, align 8
  %34 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %35 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  br label %37

37:                                               ; preds = %29, %24
  br label %43

38:                                               ; preds = %1
  %39 = load i8*, i8** @FM_HW_POWER_ENB_IDX, align 8
  %40 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %41 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  br label %43

43:                                               ; preds = %38, %37
  %44 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %45 = call i32 @fm_irq_call(%struct.fmdev* %44)
  ret void
}

declare dso_local i32 @fmdbg(i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @fm_irq_call(%struct.fmdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
