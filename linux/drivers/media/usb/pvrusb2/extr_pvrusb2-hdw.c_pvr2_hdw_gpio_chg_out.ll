; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_gpio_chg_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_gpio_chg_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32 }

@PVR2_GPIO_OUT = common dso_local global i32 0, align 4
@PVR2_TRACE_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"GPIO output changing 0x%x:0x%x from 0x%x to 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GPIO output changing to 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_hdw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = xor i32 %11, -1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %16 = load i32, i32* @PVR2_GPIO_OUT, align 4
  %17 = call i32 @pvr2_read_register(%struct.pvr2_hdw* %15, i32 %16, i32* %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %27, %28
  %30 = or i32 %26, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @PVR2_TRACE_GPIO, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  br label %42

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @PVR2_TRACE_GPIO, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %22
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %44 = load i32, i32* @PVR2_GPIO_OUT, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %43, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @pvr2_read_register(%struct.pvr2_hdw*, i32, i32*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, ...) #1

declare dso_local i32 @pvr2_write_register(%struct.pvr2_hdw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
