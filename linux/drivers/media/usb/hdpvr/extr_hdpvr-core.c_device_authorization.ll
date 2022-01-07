; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-core.c_device_authorization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-core.c_device_authorization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"unexpected answer of status request, len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"firmware version 0x%x dated %s\0A\00", align 1
@HDPVR_FLAG_AC3_CAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"untested firmware, the driver might not work.\0A\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"magic request returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_device*)* @device_authorization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_authorization(%struct.hdpvr_device* %0) #0 {
  %2 = alloca %struct.hdpvr_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %2, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  store i8 56, i8* %5, align 1
  store i8 -127, i8* %6, align 1
  %10 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %11 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %14 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %17 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_rcvctrlpipe(i32 %18, i32 0)
  %20 = load i8, i8* %6, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = or i32 128, %23
  %25 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %26 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @usb_control_msg(i32 %15, i32 %19, i32 %21, i32 %24, i32 1024, i32 3, i8* %27, i32 46, i32 10000)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 46
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %33 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %32, i32 0, i32 3
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @v4l2_err(i32* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %147

36:                                               ; preds = %1
  %37 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %38 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %44 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 46
  store i8 0, i8* %48, align 1
  %49 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %50 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %49, i32 0, i32 3
  %51 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %52 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %55 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = call i32 (i32*, i8*, ...) @v4l2_info(i32* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* %57)
  %59 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %60 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 21
  br i1 %62, label %63, label %79

63:                                               ; preds = %36
  %64 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %65 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 128, i32* %66, align 4
  %67 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %68 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 64, i32* %69, align 4
  %70 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %71 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 15, i32* %72, align 4
  %73 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %74 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i32 64, i32* %75, align 4
  %76 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %77 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 128, i32* %78, align 4
  br label %79

79:                                               ; preds = %63, %36
  %80 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %81 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %96 [
    i32 132, label %83
    i32 128, label %90
    i32 131, label %90
    i32 130, label %90
    i32 129, label %90
  ]

83:                                               ; preds = %79
  %84 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %87 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %118

90:                                               ; preds = %79, %79, %79, %79
  %91 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %92 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %93 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %118

96:                                               ; preds = %79
  %97 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %98 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %97, i32 0, i32 3
  %99 = call i32 (i32*, i8*, ...) @v4l2_info(i32* %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %101 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %102, 128
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %106 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %107 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %117

110:                                              ; preds = %96
  %111 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %114 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %110, %104
  br label %118

118:                                              ; preds = %117, %90, %83
  %119 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %120 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 38
  store i8* %122, i8** %7, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @challenge(i8* %123)
  %125 = call i32 @msleep(i32 100)
  %126 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %127 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %130 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @usb_sndctrlpipe(i32 %131, i32 0)
  %133 = load i8, i8* %5, align 1
  %134 = sext i8 %133 to i32
  %135 = or i32 0, %134
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @usb_control_msg(i32 %128, i32 %132, i32 209, i32 %135, i32 0, i32 0, i8* %136, i32 8, i32 10000)
  store i32 %137, i32* %3, align 4
  %138 = load i32, i32* @MSG_INFO, align 4
  %139 = load i32, i32* @hdpvr_debug, align 4
  %140 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %141 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %140, i32 0, i32 3
  %142 = load i32, i32* %3, align 4
  %143 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %138, i32 %139, i32* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %3, align 4
  %145 = icmp ne i32 %144, 8
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %118, %31
  %148 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %149 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %148, i32 0, i32 2
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*, ...) #1

declare dso_local i32 @challenge(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
