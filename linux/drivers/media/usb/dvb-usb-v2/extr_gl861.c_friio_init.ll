; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.dvb_usb_device = type { i32 }
%struct.friio_priv = type { i32 }

@friio_init.demod_init = internal constant [36 x [2 x %struct.TYPE_4__]] [[2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 1, i32 64 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 4, i32 56 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 5, i32 64 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 7, i32 64 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 15, i32 79 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 17, i32 33 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 18, i32 11 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 19, i32 47 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 20, i32 49 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 22, i32 2 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 33, i32 196 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 34, i32 32 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 44, i32 121 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 45, i32 52 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 47, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 48, i32 40 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 49, i32 49 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 50, i32 223 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 56, i32 1 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 57, i32 120 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 59, i32 51 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 60, i32 51 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 72, i32 144 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 81, i32 104 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 94, i32 56 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 113, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 114, i32 8 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 119, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 192, i32 33 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 193, i32 16 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 228, i32 26 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 234, i32 31 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 119, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 113, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 113, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 118, i32 12 }, %struct.TYPE_4__ zeroinitializer]], align 16
@FRIIO_LED_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @friio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friio_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.friio_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %9 = load i32, i32* @FRIIO_LED_STOPPED, align 4
  %10 = call i32 @friio_ext_ctl(%struct.dvb_usb_device* %8, i32 %9, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = call i32 @msleep(i32 20)
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %18 = call %struct.friio_priv* @d_to_priv(%struct.dvb_usb_device* %17)
  store %struct.friio_priv* %18, %struct.friio_priv** %6, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %37, %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_4__** bitcast ([36 x [2 x %struct.TYPE_4__]]* @friio_init.demod_init to %struct.TYPE_4__**))
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.friio_priv*, %struct.friio_priv** %6, align 8
  %25 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [36 x [2 x %struct.TYPE_4__]], [36 x [2 x %struct.TYPE_4__]]* @friio_init.demod_init, i64 0, i64 %28
  %30 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %29, i64 0, i64 0
  %31 = call i32 @i2c_master_send(i32 %26, %struct.TYPE_4__* %30, i32 2)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %42

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %19

40:                                               ; preds = %19
  %41 = call i32 @msleep(i32 100)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %34, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @friio_ext_ctl(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.friio_priv* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__**) #1

declare dso_local i32 @i2c_master_send(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
