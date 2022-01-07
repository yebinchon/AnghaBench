; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_parse_rc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_parse_rc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.m920x_state* }
%struct.m920x_state = type { i32 }

@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected rc state %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*, i32, i32*)* @m920x_parse_rc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m920x_parse_rc_state(%struct.dvb_usb_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.m920x_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 0
  %10 = load %struct.m920x_state*, %struct.m920x_state** %9, align 8
  store %struct.m920x_state* %10, %struct.m920x_state** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %38 [
    i32 128, label %12
    i32 136, label %15
    i32 153, label %15
    i32 192, label %15
    i32 216, label %15
    i32 147, label %20
    i32 146, label %20
    i32 131, label %20
    i32 130, label %20
    i32 145, label %25
    i32 129, label %25
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  br label %43

15:                                               ; preds = %3, %3, %3, %3
  %16 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.m920x_state*, %struct.m920x_state** %7, align 8
  %19 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %43

20:                                               ; preds = %3, %3, %3, %3
  %21 = load %struct.m920x_state*, %struct.m920x_state** %7, align 8
  %22 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  br label %43

25:                                               ; preds = %3, %3
  %26 = load %struct.m920x_state*, %struct.m920x_state** %7, align 8
  %27 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %43

38:                                               ; preds = %3
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @deb(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %37, %20, %15, %12
  ret void
}

declare dso_local i32 @deb(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
