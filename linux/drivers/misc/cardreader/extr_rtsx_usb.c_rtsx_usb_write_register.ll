; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@MODE_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtsx_ucr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %10 = call i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr* %9)
  %11 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %12 = load i32, i32* @WRITE_REG_CMD, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %18 = load i32, i32* @MODE_C, align 4
  %19 = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %17, i32 %18, i32 100)
  ret i32 %19
}

declare dso_local i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr*) #1

declare dso_local i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
