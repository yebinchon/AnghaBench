; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis302dl_interrupt_thread2_8b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis302dl_interrupt_thread2_8b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i64, i32 }

@LIS3_IRQ2_MASK = common dso_local global i64 0, align 8
@LIS3_IRQ2_CLICK = common dso_local global i64 0, align 8
@LIS3_IRQ2_DATA_READY = common dso_local global i64 0, align 8
@IRQ_LINE1 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lis302dl_interrupt_thread2_8b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis302dl_interrupt_thread2_8b(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lis3lv02d*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.lis3lv02d*
  store %struct.lis3lv02d* %8, %struct.lis3lv02d** %5, align 8
  %9 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %10 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LIS3_IRQ2_MASK, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @LIS3_IRQ2_CLICK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %19 = call i32 @lis302dl_interrupt_handle_click(%struct.lis3lv02d* %18)
  br label %37

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @LIS3_IRQ2_DATA_READY, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %29 = load i32, i32* @IRQ_LINE1, align 4
  %30 = call i32 @lis302dl_data_ready(%struct.lis3lv02d* %28, i32 %29)
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %33 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @lis3lv02d_joystick_poll(i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  br label %37

37:                                               ; preds = %36, %17
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i32 @lis302dl_interrupt_handle_click(%struct.lis3lv02d*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lis302dl_data_ready(%struct.lis3lv02d*, i32) #1

declare dso_local i32 @lis3lv02d_joystick_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
