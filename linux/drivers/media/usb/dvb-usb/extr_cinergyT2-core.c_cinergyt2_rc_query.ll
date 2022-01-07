; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-core.c_cinergyt2_rc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-core.c_cinergyt2_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i64, i32, %struct.cinergyt2_state* }
%struct.cinergyt2_state = type { i32*, i64 }

@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@CINERGYT2_EP1_GET_RC_EVENTS = common dso_local global i32 0, align 4
@RC_REPEAT_DELAY = common dso_local global i64 0, align 8
@repeatable_keys = common dso_local global i64* null, align 8
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"repeat key, event %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"repeated key (non repeatable)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"key: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i64*, i32*)* @cinergyt2_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cinergyt2_rc_query(%struct.dvb_usb_device* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cinergyt2_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 2
  %12 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %11, align 8
  store %struct.cinergyt2_state* %12, %struct.cinergyt2_state** %7, align 8
  %13 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @CINERGYT2_EP1_GET_RC_EVENTS, align 4
  %19 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %20 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %24 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %25 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %28 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %23, i32* %26, i32 1, i32* %29, i32 5, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %124

34:                                               ; preds = %3
  %35 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %36 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %84

41:                                               ; preds = %34
  %42 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %43 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %47 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RC_REPEAT_DELAY, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %78, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i64*, i64** @repeatable_keys, align 8
  %55 = call i32 @ARRAY_SIZE(i64* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %52
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** @repeatable_keys, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %60, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %5, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, ...) @deb_rc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %75)
  br label %124

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %52

81:                                               ; preds = %52
  %82 = call i32 (i8*, ...) @deb_rc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %41
  br label %124

84:                                               ; preds = %34
  %85 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %86 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %92 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %90, i32* %94, align 4
  %95 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %96 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %97 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64*, i64** %5, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device* %95, i32* %98, i64* %99, i32* %100)
  %102 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %103 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %84
  %109 = load i64*, i64** %5, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %117 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %115, %108
  %119 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %7, align 8
  %120 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 (i8*, ...) @deb_rc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 5, i32* %121)
  br label %123

123:                                              ; preds = %118, %84
  br label %124

124:                                              ; preds = %123, %83, %67, %33
  %125 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %126 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %125, i32 0, i32 1
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @deb_rc(i8*, ...) #1

declare dso_local i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device*, i32*, i64*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
