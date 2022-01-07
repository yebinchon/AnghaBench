; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_fwchunk_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_fwchunk_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.usb_device*, %struct.s2255_fw* }
%struct.usb_device = type { i32 }
%struct.s2255_fw = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"URB failed with status %d\0A\00", align 1
@S2255_FW_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"disconnected\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"failed submit URB\0A\00", align 1
@S2255_FW_LOADED_DSPWAIT = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @s2255_fwchunk_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2255_fwchunk_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.s2255_fw*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load %struct.s2255_fw*, %struct.s2255_fw** %7, align 8
  store %struct.s2255_fw* %8, %struct.s2255_fw** %3, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 1
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %4, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %24 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %23, i32 0, i32 2
  %25 = load i32, i32* @S2255_FW_FAILED, align 4
  %26 = call i32 @atomic_set(i32* %24, i32 %25)
  %27 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %28 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %27, i32 0, i32 3
  %29 = call i32 @wake_up(i32* %28)
  br label %135

30:                                               ; preds = %1
  %31 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %32 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = call i32 @s2255_dev_err(i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %40 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %39, i32 0, i32 2
  %41 = load i32, i32* @S2255_FW_FAILED, align 4
  %42 = call i32 @atomic_set(i32* %40, i32 %41)
  %43 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %44 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %43, i32 0, i32 3
  %45 = call i32 @wake_up(i32* %44)
  br label %135

46:                                               ; preds = %30
  %47 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %48 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %51 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %129

54:                                               ; preds = %46
  %55 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %56 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 512
  %59 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %60 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %65 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %66, 512
  br label %69

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %63
  %70 = phi i32 [ %67, %63 ], [ 512, %68 ]
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 512
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %75 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memset(i32 %76, i32 0, i32 512)
  br label %78

78:                                               ; preds = %73, %69
  %79 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %80 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %83 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %82, i32 0, i32 6
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %89 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @memcpy(i32 %81, i8* %92, i32 %93)
  %95 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %96 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %99 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %100 = call i32 @usb_sndbulkpipe(%struct.usb_device* %99, i32 2)
  %101 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %102 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %105 = call i32 @usb_fill_bulk_urb(i32* %97, %struct.usb_device* %98, i32 %100, i32 %103, i32 512, void (%struct.urb*)* @s2255_fwchunk_complete, %struct.s2255_fw* %104)
  %106 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %107 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @GFP_ATOMIC, align 4
  %110 = call i64 @usb_submit_urb(i32* %108, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %78
  %113 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %114 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %113, i32 0, i32 0
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %116 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %117 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %116, i32 0, i32 2
  %118 = load i32, i32* @S2255_FW_FAILED, align 4
  %119 = call i32 @atomic_set(i32* %117, i32 %118)
  %120 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %121 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %120, i32 0, i32 3
  %122 = call i32 @wake_up(i32* %121)
  br label %135

123:                                              ; preds = %78
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %126 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %134

129:                                              ; preds = %46
  %130 = load %struct.s2255_fw*, %struct.s2255_fw** %3, align 8
  %131 = getelementptr inbounds %struct.s2255_fw, %struct.s2255_fw* %130, i32 0, i32 2
  %132 = load i32, i32* @S2255_FW_LOADED_DSPWAIT, align 4
  %133 = call i32 @atomic_set(i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %123
  br label %135

135:                                              ; preds = %134, %112, %35, %16
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @s2255_dev_err(i32*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, %struct.usb_device*, i32, i32, i32, void (%struct.urb*)*, %struct.s2255_fw*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_submit_urb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
