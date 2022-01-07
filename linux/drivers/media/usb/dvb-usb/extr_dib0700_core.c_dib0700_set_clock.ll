; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"could not acquire lock\00", align 1
@EINTR = common dso_local global i32 0, align 4
@REQUEST_SET_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32, i32, i32, i32, i32, i32)* @dib0700_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_set_clock(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.dvb_usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dib0700_state*, align 8
  %21 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 1
  %24 = load %struct.dib0700_state*, %struct.dib0700_state** %23, align 8
  store %struct.dib0700_state* %24, %struct.dib0700_state** %20, align 8
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 0
  %27 = call i64 @mutex_lock_interruptible(i32* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %9
  %30 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %115

33:                                               ; preds = %9
  %34 = load i32, i32* @REQUEST_SET_CLOCK, align 4
  %35 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %36 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = shl i32 %39, 7
  %41 = load i32, i32* %13, align 4
  %42 = shl i32 %41, 6
  %43 = or i32 %40, %42
  %44 = load i32, i32* %14, align 4
  %45 = shl i32 %44, 5
  %46 = or i32 %43, %45
  %47 = load i32, i32* %15, align 4
  %48 = shl i32 %47, 4
  %49 = or i32 %46, %48
  %50 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %51 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %16, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %58 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %16, align 4
  %62 = and i32 %61, 255
  %63 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %64 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %17, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %71 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %17, align 4
  %75 = and i32 %74, 255
  %76 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %77 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %18, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 255
  %83 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %84 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %18, align 4
  %88 = and i32 %87, 255
  %89 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %90 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 7
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %19, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 255
  %96 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %97 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* %19, align 4
  %101 = and i32 %100, 255
  %102 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %103 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 9
  store i32 %101, i32* %105, align 4
  %106 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  %107 = load %struct.dib0700_state*, %struct.dib0700_state** %20, align 8
  %108 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @dib0700_ctrl_wr(%struct.dvb_usb_device* %106, i32* %109, i32 10)
  store i32 %110, i32* %21, align 4
  %111 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %21, align 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %33, %29
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @dib0700_ctrl_wr(%struct.dvb_usb_device*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
