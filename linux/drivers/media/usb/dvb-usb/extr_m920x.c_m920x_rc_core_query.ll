; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_rc_core_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_rc_core_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M9206_CORE = common dso_local global i32 0, align 4
@M9206_RC_STATE = common dso_local global i32 0, align 4
@M9206_RC_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"state=0x%02x keycode=0x%02x\0A\00", align 1
@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @m920x_rc_core_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_rc_core_query(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32* @kmalloc(i32 2, i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %81

14:                                               ; preds = %1
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @M9206_CORE, align 4
  %19 = load i32, i32* @M9206_RC_STATE, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @m920x_read(i32 %17, i32 %18, i32 0, i32 %19, i32* %21, i32 1)
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %77

25:                                               ; preds = %14
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @M9206_CORE, align 4
  %30 = load i32, i32* @M9206_RC_KEY, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = call i32 @m920x_read(i32 %28, i32 %29, i32 0, i32 %30, i32* %32, i32 1)
  store i32 %33, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %77

36:                                               ; preds = %25
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @deb(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @m920x_parse_rc_state(%struct.dvb_usb_device* %44, i32 %47, i32* %6)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rc_keyup(i32 %55)
  br label %76

57:                                               ; preds = %36
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @rc_repeat(i32 %64)
  br label %75

66:                                               ; preds = %57
  %67 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rc_keydown(i32 %69, i32 %70, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %66, %61
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %35, %24
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @kfree(i32* %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @m920x_read(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @deb(i8*, i32, i32) #1

declare dso_local i32 @m920x_parse_rc_state(%struct.dvb_usb_device*, i32, i32*) #1

declare dso_local i32 @rc_keyup(i32) #1

declare dso_local i32 @rc_repeat(i32) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
