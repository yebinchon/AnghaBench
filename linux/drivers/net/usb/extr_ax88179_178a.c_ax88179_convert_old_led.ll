; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_convert_old_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_convert_old_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@AX_ACCESS_EEPROM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LED0_ACTIVE = common dso_local global i32 0, align 4
@LED1_LINK_10 = common dso_local global i32 0, align 4
@LED1_LINK_100 = common dso_local global i32 0, align 4
@LED1_LINK_1000 = common dso_local global i32 0, align 4
@LED2_ACTIVE = common dso_local global i32 0, align 4
@LED2_LINK_10 = common dso_local global i32 0, align 4
@LED2_LINK_100 = common dso_local global i32 0, align 4
@LED2_LINK_1000 = common dso_local global i32 0, align 4
@LED_VALID = common dso_local global i32 0, align 4
@LED1_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32*)* @ax88179_convert_old_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_convert_old_led(%struct.usbnet* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %8 = load i32, i32* @AX_ACCESS_EEPROM, align 4
  %9 = call i64 @ax88179_read_cmd(%struct.usbnet* %7, i32 %8, i32 60, i32 1, i32 2, i32* %6)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %89

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %68 [
    i32 255, label %18
    i32 254, label %36
    i32 253, label %44
    i32 252, label %54
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @LED0_ACTIVE, align 4
  %20 = load i32, i32* @LED1_LINK_10, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @LED1_LINK_100, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LED1_LINK_1000, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @LED2_ACTIVE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LED2_LINK_10, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @LED2_LINK_100, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @LED2_LINK_1000, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @LED_VALID, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %86

36:                                               ; preds = %14
  %37 = load i32, i32* @LED0_ACTIVE, align 4
  %38 = load i32, i32* @LED1_LINK_1000, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @LED2_LINK_100, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @LED_VALID, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %6, align 4
  br label %86

44:                                               ; preds = %14
  %45 = load i32, i32* @LED0_ACTIVE, align 4
  %46 = load i32, i32* @LED1_LINK_1000, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @LED2_LINK_100, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @LED2_LINK_10, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @LED_VALID, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %6, align 4
  br label %86

54:                                               ; preds = %14
  %55 = load i32, i32* @LED0_ACTIVE, align 4
  %56 = load i32, i32* @LED1_ACTIVE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @LED1_LINK_1000, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @LED2_ACTIVE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @LED2_LINK_100, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @LED2_LINK_10, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @LED_VALID, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %6, align 4
  br label %86

68:                                               ; preds = %14
  %69 = load i32, i32* @LED0_ACTIVE, align 4
  %70 = load i32, i32* @LED1_LINK_10, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @LED1_LINK_100, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @LED1_LINK_1000, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @LED2_ACTIVE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @LED2_LINK_10, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @LED2_LINK_100, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @LED2_LINK_1000, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @LED_VALID, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %68, %54, %44, %36, %18
  %87 = load i32, i32* %6, align 4
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %11
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
