; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-mce_kbd-decoder.c_mce_kbd_rx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-mce_kbd-decoder.c_mce_kbd_rx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ir_raw_event_ctrl = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.timer_list = type { i32 }

@mce_kbd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"timer callback clearing all keys\0A\00", align 1
@kbd_keycodes = common dso_local global i8* null, align 8
@MCIR2_MASK_KEYS_START = common dso_local global i32 0, align 4
@raw = common dso_local global %struct.ir_raw_event_ctrl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mce_kbd_rx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_kbd_rx_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ir_raw_event_ctrl*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %8 = ptrtoint %struct.ir_raw_event_ctrl* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mce_kbd, i32 0, i32 0), align 4
  %11 = call %struct.ir_raw_event_ctrl* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.ir_raw_event_ctrl* %11, %struct.ir_raw_event_ctrl** %3, align 8
  %12 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @time_is_before_eq_jiffies(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 7
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i8*, i8** @kbd_keycodes, align 8
  %35 = load i32, i32* @MCIR2_MASK_KEYS_START, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %4, align 1
  %41 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %42 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8, i8* %4, align 1
  %47 = call i32 @input_report_key(i32 %45, i8 zeroext %46, i32 0)
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %30

51:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MCIR2_MASK_KEYS_START, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %58 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** @kbd_keycodes, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @input_report_key(i32 %61, i8 zeroext %66, i32 0)
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %73 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @input_sync(i32 %76)
  br label %78

78:                                               ; preds = %71, %1
  %79 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %3, align 8
  %80 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  ret void
}

declare dso_local %struct.ir_raw_event_ctrl* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_is_before_eq_jiffies(i32) #1

declare dso_local i32 @input_report_key(i32, i8 zeroext, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
