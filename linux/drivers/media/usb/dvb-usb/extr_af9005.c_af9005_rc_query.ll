; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_rc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.af9005_device_state* }
%struct.af9005_device_state = type { i32*, i32 }

@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rc query failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"rc query bad header.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"rc query bad sequence.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"rc query invalid length\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"rc data (%d) \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"rc_decode failed\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"rc_decode state %x event %x\0A\00", align 1
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @af9005_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.af9005_device_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 2
  %13 = load %struct.af9005_device_state*, %struct.af9005_device_state** %12, align 8
  store %struct.af9005_device_state* %13, %struct.af9005_device_state** %7, align 8
  %14 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %20 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 3, i32* %22, align 4
  %23 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %24 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %28 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 64, i32* %30, align 4
  %31 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %32 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 1, i32* %34, align 4
  %35 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %36 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %39 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %40 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32 %37, i32* %42, align 4
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %44 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %45 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %48 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %43, i32* %46, i32 5, i32* %49, i32 256, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %3
  %54 = call i32 @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %134

55:                                               ; preds = %3
  %56 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %57 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 65
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %134

66:                                               ; preds = %55
  %67 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %68 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %134

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %81 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 246
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %134

91:                                               ; preds = %79
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %133

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i8*, i32, ...) @deb_rc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %98 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @debug_dump(i32* %100, i32 %101, i32 (i8*, i32, i32)* bitcast (i32 (i8*, i32, ...)* @deb_rc to i32 (i8*, i32, i32)*))
  %103 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %104 = load %struct.af9005_device_state*, %struct.af9005_device_state** %7, align 8
  %105 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  %108 = load i32, i32* %9, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @rc_decode(%struct.dvb_usb_device* %103, i32* %107, i32 %108, i32* %109, i32* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %94
  %115 = call i32 @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %134

116:                                              ; preds = %94
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, i32, ...) @deb_rc(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %118, i32 %120)
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %128 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %5, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %116
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %91
  br label %134

134:                                              ; preds = %133, %114, %87, %74, %62, %53
  %135 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %136 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %135, i32 0, i32 0
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @deb_rc(i8*, i32, ...) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32, i32)*) #1

declare dso_local i32 @rc_decode(%struct.dvb_usb_device*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
