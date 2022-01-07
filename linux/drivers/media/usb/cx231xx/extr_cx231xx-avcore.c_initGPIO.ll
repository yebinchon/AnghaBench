; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_initGPIO.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_initGPIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"verve_read_byte address0x07=0x%x\0A\00", align 1
@Vbi = common dso_local global i32 0, align 4
@EP_MODE_SET = common dso_local global i32 0, align 4
@GBULK_BIT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initGPIO(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, -67107841
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, 66976768
  store i32 %9, i32* %3, align 4
  %10 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @cx231xx_send_gpio_cmd(%struct.cx231xx* %10, i32 %11, i32* %4, i32 4, i32 0, i32 0)
  %13 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %14 = call i32 @verve_read_byte(%struct.cx231xx* %13, i32 7, i32* %5)
  %15 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %16 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %21 = call i32 @verve_write_byte(%struct.cx231xx* %20, i32 7, i32 244)
  %22 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %23 = call i32 @verve_read_byte(%struct.cx231xx* %22, i32 7, i32* %5)
  %24 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %30 = load i32, i32* @Vbi, align 4
  %31 = call i32 @cx231xx_capture_start(%struct.cx231xx* %29, i32 1, i32 %30)
  %32 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %33 = load i32, i32* @EP_MODE_SET, align 4
  %34 = call i32 @cx231xx_mode_register(%struct.cx231xx* %32, i32 %33, i32 83951104)
  %35 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %36 = load i32, i32* @GBULK_BIT_EN, align 4
  %37 = call i32 @cx231xx_mode_register(%struct.cx231xx* %35, i32 %36, i32 -131073)
  ret void
}

declare dso_local i32 @cx231xx_send_gpio_cmd(%struct.cx231xx*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @verve_read_byte(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @verve_write_byte(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_mode_register(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
