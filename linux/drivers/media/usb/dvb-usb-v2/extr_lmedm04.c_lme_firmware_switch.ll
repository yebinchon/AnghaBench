; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme_firmware_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme_firmware_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_device*, %struct.lme2510_state* }
%struct.usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lme2510_state = type { i32 }
%struct.firmware = type { i32 }

@fw_s0194 = common dso_local global i8* null, align 8
@fw_lg = common dso_local global i8* null, align 8
@TUNER_DEFAULT = common dso_local global i8* null, align 8
@fw_c_s7395 = common dso_local global i8* null, align 8
@fw_c_lg = common dso_local global i8* null, align 8
@fw_c_s0194 = common dso_local global i8* null, align 8
@fw_c_rs2000 = common dso_local global i8* null, align 8
@TUNER_RS2000 = common dso_local global i32 0, align 4
@dvb_usb_lme2510_firmware = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"FRM Changing to %s firmware\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dvb_usb_device*, i32)* @lme_firmware_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lme_firmware_switch(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lme2510_state*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 1
  %13 = load %struct.lme2510_state*, %struct.lme2510_state** %12, align 8
  store %struct.lme2510_state* %13, %struct.lme2510_state** %6, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %7, align 8
  store %struct.firmware* null, %struct.firmware** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 1
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  store i32 %24, i32* %5, align 4
  %25 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  switch i32 %29, label %115 [
    i32 4386, label %30
    i32 4384, label %64
    i32 8944, label %110
  ]

30:                                               ; preds = %23
  %31 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %32 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %34 [
    i32 129, label %35
    i32 130, label %47
  ]

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %30, %34
  %36 = load i8*, i8** @fw_s0194, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 0
  %40 = call i32 @request_firmware(%struct.firmware** %8, i8* %37, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %45 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %44, i32 0, i32 0
  store i32 129, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %63

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %30, %46
  %48 = load i8*, i8** @fw_lg, align 8
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 0
  %52 = call i32 @request_firmware(%struct.firmware** %8, i8* %49, i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %57 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %56, i32 0, i32 0
  store i32 130, i32* %57, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load i8*, i8** @TUNER_DEFAULT, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %62 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %55, %43
  br label %117

64:                                               ; preds = %23
  %65 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %66 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %68 [
    i32 128, label %69
    i32 130, label %81
    i32 129, label %93
  ]

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %64, %68
  %70 = load i8*, i8** @fw_c_s7395, align 8
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %73 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %72, i32 0, i32 0
  %74 = call i32 @request_firmware(%struct.firmware** %8, i8* %71, i32* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %79 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %78, i32 0, i32 0
  store i32 128, i32* %79, align 4
  store i32 0, i32* %5, align 4
  br label %109

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %64, %80
  %82 = load i8*, i8** @fw_c_lg, align 8
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 0
  %86 = call i32 @request_firmware(%struct.firmware** %8, i8* %83, i32* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %91 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %90, i32 0, i32 0
  store i32 130, i32* %91, align 4
  br label %109

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %64, %92
  %94 = load i8*, i8** @fw_c_s0194, align 8
  store i8* %94, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %97 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %96, i32 0, i32 0
  %98 = call i32 @request_firmware(%struct.firmware** %8, i8* %95, i32* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %103 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %102, i32 0, i32 0
  store i32 129, i32* %103, align 4
  br label %109

104:                                              ; preds = %93
  %105 = load i8*, i8** @TUNER_DEFAULT, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %108 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %101, %89, %77
  br label %117

110:                                              ; preds = %23
  %111 = load i8*, i8** @fw_c_rs2000, align 8
  store i8* %111, i8** %9, align 8
  %112 = load i32, i32* @TUNER_RS2000, align 4
  %113 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %114 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %117

115:                                              ; preds = %23
  %116 = load i8*, i8** @fw_c_s7395, align 8
  store i8* %116, i8** %9, align 8
  br label %117

117:                                              ; preds = %115, %110, %109, %63
  %118 = load %struct.firmware*, %struct.firmware** %8, align 8
  %119 = call i32 @release_firmware(%struct.firmware* %118)
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %124 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* @dvb_usb_lme2510_firmware, align 4
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %126)
  %128 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %129 = call i32 @lme_coldreset(%struct.dvb_usb_device* %128)
  store i8* null, i8** %3, align 8
  br label %132

130:                                              ; preds = %117
  %131 = load i8*, i8** %9, align 8
  store i8* %131, i8** %3, align 8
  br label %132

132:                                              ; preds = %130, %122
  %133 = load i8*, i8** %3, align 8
  ret i8* %133
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @lme_coldreset(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
