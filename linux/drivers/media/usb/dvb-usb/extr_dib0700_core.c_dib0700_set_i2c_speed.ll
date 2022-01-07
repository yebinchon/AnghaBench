; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_set_i2c_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_set_i2c_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not acquire lock\00", align 1
@EINTR = common dso_local global i32 0, align 4
@REQUEST_SET_I2C_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"setting I2C speed: %04x %04x %04x (%d kHz).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_set_i2c_speed(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib0700_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 1
  %11 = load %struct.dib0700_state*, %struct.dib0700_state** %10, align 8
  store %struct.dib0700_state* %11, %struct.dib0700_state** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %143

17:                                               ; preds = %2
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = call i64 @mutex_lock_interruptible(i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINTR, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %143

26:                                               ; preds = %17
  %27 = load i32, i32* @REQUEST_SET_I2C_PARAM, align 4
  %28 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %29 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 30000, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %35 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %44 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 255
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %53 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sdiv i32 72000, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %64 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 255
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %73 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sdiv i32 72000, %76
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %84 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 255
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %93 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 7
  store i32 %91, i32* %95, align 4
  %96 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %97 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 8
  %102 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %103 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %101, %106
  %108 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %109 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %115 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 5
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %113, %118
  %120 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %121 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %127 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 7
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %125, %130
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @deb_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %119, i32 %131, i32 %132)
  %134 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %135 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %136 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @dib0700_ctrl_wr(%struct.dvb_usb_device* %134, i32* %137, i32 8)
  store i32 %138, i32* %8, align 4
  %139 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %140 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %139, i32 0, i32 0
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %26, %22, %14
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @deb_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dib0700_ctrl_wr(%struct.dvb_usb_device*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
