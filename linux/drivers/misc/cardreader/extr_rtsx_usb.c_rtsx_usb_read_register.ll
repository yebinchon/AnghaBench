; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32* }

@READ_REG_CMD = common dso_local global i32 0, align 4
@MODE_CR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_ucr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %11, %3
  %14 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %15 = call i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr* %14)
  %16 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %17 = load i32, i32* @READ_REG_CMD, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %16, i32 %17, i32 %18, i32 0, i32 0)
  %20 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %21 = load i32, i32* @MODE_CR, align 4
  %22 = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %20, i32 %21, i32 100)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %13
  %28 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %29 = call i32 @rtsx_usb_get_rsp(%struct.rtsx_ucr* %28, i32 1, i32 100)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %39 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %34
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %32, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
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
