; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-loopback.c_loop_set_wakeup_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-loopback.c_loop_set_wakeup_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.ir_raw_event = type { i32 }

@loop_set_wakeup_filter.max = internal constant i32 512, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)* @loop_set_wakeup_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_set_wakeup_filter(%struct.rc_dev* %0, %struct.rc_scancode_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.rc_scancode_filter*, align 8
  %6 = alloca %struct.ir_raw_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store %struct.rc_scancode_filter* %1, %struct.rc_scancode_filter** %5, align 8
  %9 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %10 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ir_raw_event* @kmalloc_array(i32 512, i32 4, i32 %15)
  store %struct.ir_raw_event* %16, %struct.ir_raw_event** %6, align 8
  %17 = load %struct.ir_raw_event*, %struct.ir_raw_event** %6, align 8
  %18 = icmp ne %struct.ir_raw_event* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %61

22:                                               ; preds = %14
  %23 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %27 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ir_raw_event*, %struct.ir_raw_event** %6, align 8
  %30 = call i32 @ir_raw_encode_scancode(i32 %25, i32 %28, %struct.ir_raw_event* %29, i32 512)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ENOBUFS, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 512, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %46 = load %struct.ir_raw_event*, %struct.ir_raw_event** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %46, i64 %48
  %50 = call i32 @ir_raw_event_store(%struct.rc_dev* %45, %struct.ir_raw_event* %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %56 = call i32 @ir_raw_event_handle(%struct.rc_dev* %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %36
  %58 = load %struct.ir_raw_event*, %struct.ir_raw_event** %6, align 8
  %59 = call i32 @kfree(%struct.ir_raw_event* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %19, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.ir_raw_event* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ir_raw_encode_scancode(i32, i32, %struct.ir_raw_event*, i32) #1

declare dso_local i32 @ir_raw_event_store(%struct.rc_dev*, %struct.ir_raw_event*) #1

declare dso_local i32 @ir_raw_event_handle(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.ir_raw_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
