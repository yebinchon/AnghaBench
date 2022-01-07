; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_register_snapshot_button.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_register_snapshot_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.input_dev*, %struct.TYPE_4__*, i32 }
%struct.input_dev = type { i8*, i32*, %struct.TYPE_3__, i32, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Registering snapshot button...\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"/sbutton\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"em28xx snapshot button\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@EM28XX_SNAPSHOT_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"input_register_device failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_register_snapshot_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_register_snapshot_button(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %7 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %8 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.TYPE_4__* %9)
  store %struct.usb_device* %10, %struct.usb_device** %4, align 8
  %11 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %16, %struct.input_dev** %5, align 8
  %17 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %18 = icmp ne %struct.input_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %85

22:                                               ; preds = %1
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @usb_make_path(%struct.usb_device* %23, i32 %26, i32 4)
  %28 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strlcat(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %32 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 8
  %34 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %35 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @EV_KEY, align 4
  %40 = call i32 @BIT_MASK(i32 %39)
  %41 = load i32, i32* @EV_REP, align 4
  %42 = call i32 @BIT_MASK(i32 %41)
  %43 = or i32 %40, %42
  %44 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @EM28XX_SNAPSHOT_KEY, align 4
  %49 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @set_bit(i32 %48, i32 %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 3
  %60 = call i32 @usb_to_input_id(%struct.usb_device* %57, i32* %59)
  %61 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %62 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32* %64, i32** %67, align 8
  %68 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %69 = call i32 @input_register_device(%struct.input_dev* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %22
  %73 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %74 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %79 = call i32 @input_free_device(%struct.input_dev* %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %22
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %84 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %83, i32 0, i32 0
  store %struct.input_dev* %82, %struct.input_dev** %84, align 8
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %72, %19
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
