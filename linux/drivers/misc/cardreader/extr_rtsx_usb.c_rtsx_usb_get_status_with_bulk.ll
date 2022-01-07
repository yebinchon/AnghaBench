; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_get_status_with_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_get_status_with_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32* }

@READ_REG_CMD = common dso_local global i32 0, align 4
@CARD_EXIST = common dso_local global i32 0, align 4
@OCPSTAT = common dso_local global i32 0, align 4
@MODE_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_ucr*, i32*)* @rtsx_usb_get_status_with_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_usb_get_status_with_bulk(%struct.rtsx_ucr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_ucr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %8 = call i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr* %7)
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %10 = load i32, i32* @READ_REG_CMD, align 4
  %11 = load i32, i32* @CARD_EXIST, align 4
  %12 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %9, i32 %10, i32 %11, i32 0, i32 0)
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %14 = load i32, i32* @READ_REG_CMD, align 4
  %15 = load i32, i32* @OCPSTAT, align 4
  %16 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %13, i32 %14, i32 %15, i32 0, i32 0)
  %17 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %18 = load i32, i32* @MODE_CR, align 4
  %19 = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %17, i32 %18, i32 100)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %2
  %25 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %26 = call i32 @rtsx_usb_get_rsp(%struct.rtsx_ucr* %25, i32 2, i32 100)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %48

31:                                               ; preds = %24
  %32 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %33 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 2
  %38 = and i32 %37, 15
  %39 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %40 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 3
  %45 = shl i32 %44, 4
  %46 = or i32 %38, %45
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %31, %29, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr*) #1

declare dso_local i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr*, i32, i32) #1

declare dso_local i32 @rtsx_usb_get_rsp(%struct.rtsx_ucr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
