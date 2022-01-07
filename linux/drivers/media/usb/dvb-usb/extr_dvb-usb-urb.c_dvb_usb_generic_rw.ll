; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-urb.c_dvb_usb_generic_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-urb.c_dvb_usb_generic_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"endpoint for generic control not specified.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"bulk message failed: %d (%d/%d)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"recv bulk message failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"<<< \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %19 = icmp ne %struct.dvb_usb_device* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20, %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %137

29:                                               ; preds = %23
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %137

39:                                               ; preds = %29
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock_interruptible(i32* %41)
  store i32 %42, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %7, align 4
  br label %137

46:                                               ; preds = %39
  %47 = call i32 @deb_xfer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @debug_dump(i32* %48, i32 %49, i32 (i8*)* @deb_xfer)
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @usb_sndbulkpipe(i32 %56, i64 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @usb_bulk_msg(i32 %53, i32 %61, i32* %62, i32 %63, i32* %14, i32 2000)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %46
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  br label %78

72:                                               ; preds = %46
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %73, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 -1, i32 0
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %132, label %81

81:                                               ; preds = %78
  %82 = load i32*, i32** %11, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %132

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %132

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @msleep(i32 %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %93
  %106 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %107 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  br label %115

110:                                              ; preds = %93
  %111 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i64 [ %109, %105 ], [ %114, %110 ]
  %117 = call i32 @usb_rcvbulkpipe(i32 %99, i64 %116)
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @usb_bulk_msg(i32 %96, i32 %117, i32* %118, i32 %119, i32* %14, i32 2000)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32, i32* %15, align 4
  %125 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  br label %131

126:                                              ; preds = %115
  %127 = call i32 @deb_xfer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @debug_dump(i32* %128, i32 %129, i32 (i8*)* @deb_xfer)
  br label %131

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %131, %84, %81, %78
  %133 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %134 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %132, %44, %35, %26
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @deb_xfer(i8*) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
