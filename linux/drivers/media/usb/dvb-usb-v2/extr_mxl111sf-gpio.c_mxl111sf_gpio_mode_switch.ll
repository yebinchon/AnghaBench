; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_gpio_mode_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_gpio_mode_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_gpio_mode_switch(%struct.mxl111sf_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @mxl_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %36 [
    i32 128, label %8
    i32 129, label %22
  ]

8:                                                ; preds = %2
  %9 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %10 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %9, i32 4, i32 0)
  %11 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %12 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %11, i32 5, i32 0)
  %13 = call i32 @msleep(i32 50)
  %14 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %15 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %14, i32 7, i32 1)
  %16 = call i32 @msleep(i32 50)
  %17 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %18 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %17, i32 6, i32 1)
  %19 = call i32 @msleep(i32 50)
  %20 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %21 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %20, i32 3, i32 0)
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %24 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %23, i32 6, i32 0)
  %25 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %26 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %25, i32 7, i32 0)
  %27 = call i32 @msleep(i32 50)
  %28 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %29 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %28, i32 5, i32 1)
  %30 = call i32 @msleep(i32 50)
  %31 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %32 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %31, i32 4, i32 1)
  %33 = call i32 @msleep(i32 50)
  %34 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %35 = call i32 @mxl111sf_set_gpio(%struct.mxl111sf_state* %34, i32 3, i32 1)
  br label %39

36:                                               ; preds = %2
  %37 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %38 = call i32 @mxl111sf_init_port_expander(%struct.mxl111sf_state* %37)
  br label %39

39:                                               ; preds = %36, %22, %8
  ret i32 0
}

declare dso_local i32 @mxl_debug(i8*, i32) #1

declare dso_local i32 @mxl111sf_set_gpio(%struct.mxl111sf_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mxl111sf_init_port_expander(%struct.mxl111sf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
