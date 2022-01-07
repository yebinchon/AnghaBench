; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_stop_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_stop_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"setting alternate %d\0A\00", align 1
@STK1160_DCTRL = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stk1160*)* @stk1160_stop_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk1160_stop_hw(%struct.stk1160* %0) #0 {
  %2 = alloca %struct.stk1160*, align 8
  store %struct.stk1160* %0, %struct.stk1160** %2, align 8
  %3 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %4 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %10 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %12 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @stk1160_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %16 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_set_interface(i32 %17, i32 0, i32 0)
  %19 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %20 = load i64, i64* @STK1160_DCTRL, align 8
  %21 = call i32 @stk1160_write_reg(%struct.stk1160* %19, i64 %20, i32 0)
  %22 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %23 = load i64, i64* @STK1160_DCTRL, align 8
  %24 = add nsw i64 %23, 3
  %25 = call i32 @stk1160_write_reg(%struct.stk1160* %22, i64 %24, i32 0)
  %26 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %27 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %26, i32 0, i32 0
  %28 = load i32, i32* @video, align 4
  %29 = load i32, i32* @s_stream, align 4
  %30 = call i32 @v4l2_device_call_all(i32* %27, i32 0, i32 %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @stk1160_dbg(i8*, i64) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i64, i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
