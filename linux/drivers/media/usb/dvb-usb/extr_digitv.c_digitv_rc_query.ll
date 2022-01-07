; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_rc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@USB_READ_REMOTE = common dso_local global i32 0, align 4
@USB_WRITE_REMOTE = common dso_local global i32 0, align 4
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"key: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @digitv_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i64], align 16
  %10 = alloca [4 x i64], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = bitcast [4 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %16 = load i32, i32* @USB_READ_REMOTE, align 4
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  %18 = call i32 @digitv_ctrl_msg(%struct.dvb_usb_device* %15, i32 %16, i32 0, i64* null, i32 0, i64* %17, i32 4)
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %20 = load i32, i32* @USB_WRITE_REMOTE, align 4
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %22 = call i32 @digitv_ctrl_msg(%struct.dvb_usb_device* %19, i32 %20, i32 0, i64* %21, i32 4, i64* null, i32 0)
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %84

26:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %80, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %28, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %27
  %37 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = call i64 @rc5_custom(%struct.TYPE_9__* %45)
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %36
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %58
  %60 = call i64 @rc5_data(%struct.TYPE_9__* %59)
  %61 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 2
  %62 = load i64, i64* %61, align 16
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %50
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %92

79:                                               ; preds = %50, %36
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %27

83:                                               ; preds = %27
  br label %84

84:                                               ; preds = %83, %3
  %85 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0
  %86 = load i64, i64* %85, align 16
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0
  %90 = call i32 @deb_rc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 5, i64* %89)
  br label %91

91:                                               ; preds = %88, %84
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %64
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @digitv_ctrl_msg(%struct.dvb_usb_device*, i32, i32, i64*, i32, i64*, i32) #2

declare dso_local i64 @rc5_custom(%struct.TYPE_9__*) #2

declare dso_local i64 @rc5_data(%struct.TYPE_9__*) #2

declare dso_local i32 @deb_rc(i8*, i32, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
