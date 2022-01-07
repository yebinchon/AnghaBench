; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib0700_rc_query_old_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib0700_rc_query_old_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.TYPE_6__, %struct.dib0700_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dib0700_state = type { i32, i64* }

@REQUEST_POLL_RC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"RC Query Failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@RC_PROTO_NEC = common dso_local global i32 0, align 4
@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @dib0700_rc_query_old_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_rc_query_old_firmware(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dib0700_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 2
  %11 = load %struct.dib0700_state*, %struct.dib0700_state** %10, align 8
  store %struct.dib0700_state* %11, %struct.dib0700_state** %8, align 8
  %12 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %13 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 66048
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %149

17:                                               ; preds = %1
  %18 = load i64, i64* @REQUEST_POLL_RC, align 8
  %19 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %20 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %18, i64* %22, align 8
  %23 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %24 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %28 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %29 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %32 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 @dib0700_ctrl_rd(%struct.dvb_usb_device* %27, i64* %30, i32 2, i64* %33, i32 4)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %17
  %38 = call i32 @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %149

41:                                               ; preds = %17
  %42 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %43 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %41
  %49 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %50 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %57 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %64 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %149

70:                                               ; preds = %62, %55, %48, %41
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %72 = call i32 @dib0700_rc_setup(%struct.dvb_usb_device* %71, i32* null)
  %73 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %74 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %120 [
    i32 128, label %79
  ]

79:                                               ; preds = %70
  %80 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %81 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %79
  %87 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %88 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %95 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 255
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @rc_repeat(i32 %103)
  store i32 0, i32* %2, align 4
  br label %149

105:                                              ; preds = %93, %86, %79
  %106 = load i32, i32* @RC_PROTO_NEC, align 4
  store i32 %106, i32* %4, align 4
  %107 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %108 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %114 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @RC_SCANCODE_NEC(i32 %112, i32 %118)
  store i32 %119, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %141

120:                                              ; preds = %70
  %121 = load i32, i32* @RC_PROTO_RC5, align 4
  store i32 %121, i32* %4, align 4
  %122 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %123 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %129 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @RC_SCANCODE_RC5(i32 %127, i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %136 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 2
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %120, %105
  %142 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %143 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @rc_keydown(i32 %144, i32 %145, i32 %146, i32 %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %141, %100, %69, %37, %16
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @dib0700_ctrl_rd(%struct.dvb_usb_device*, i64*, i32, i64*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @dib0700_rc_setup(%struct.dvb_usb_device*, i32*) #1

declare dso_local i32 @rc_repeat(i32) #1

declare dso_local i32 @RC_SCANCODE_NEC(i32, i32) #1

declare dso_local i32 @RC_SCANCODE_RC5(i32, i32) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
