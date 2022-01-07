; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_set_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%d, %d)\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"gpio_port_expander undefined, assuming PCA9534\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxl111sf_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @mxl_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %5, align 8
  %12 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %14 [
    i32 129, label %17
    i32 128, label %22
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @KERN_ERR, align 4
  %16 = call i32 @mxl_printk(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %3, %14
  %18 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pca9534_set_gpio(%struct.mxl111sf_state* %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mxl111sf_hw_set_gpio(%struct.mxl111sf_state* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @mxl_debug(i8*, i32, i32) #1

declare dso_local i32 @mxl_printk(i32, i8*) #1

declare dso_local i32 @pca9534_set_gpio(%struct.mxl111sf_state*, i32, i32) #1

declare dso_local i32 @mxl111sf_hw_set_gpio(%struct.mxl111sf_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
