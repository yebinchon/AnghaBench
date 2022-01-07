; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-audio.c_usbtv_audio_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-audio.c_usbtv_audio_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.usbtv = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32* }

@usbtv_audio_start.setup = internal constant [18 x [2 x %struct.TYPE_8__]] [[2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 136, i32 1 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 592, i32 255 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 601, i32 2 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 602, i32 19 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 603, i32 18 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 617, i32 2 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 620, i32 108 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 788, i32 32 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 725, i32 207 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 726, i32 32 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 619, i32 48 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 765, i32 166 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 768, i32 17 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 769, i32 64 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 770, i32 17 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 771, i32 64 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 63633, i32 16 }, %struct.TYPE_8__ zeroinitializer], [2 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 772, i32 170 }, %struct.TYPE_8__ zeroinitializer]], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@USBTV_AUDIO_ENDP = common dso_local global i32 0, align 4
@USBTV_AUDIO_URBSIZE = common dso_local global i32 0, align 4
@usbtv_audio_urb_received = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtv*)* @usbtv_audio_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtv_audio_start(%struct.usbtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtv*, align 8
  %4 = alloca i32, align 4
  store %struct.usbtv* %0, %struct.usbtv** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_9__* @usb_alloc_urb(i32 0, i32 %5)
  %7 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %8 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %7, i32 0, i32 0
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %8, align 8
  %9 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %10 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %16 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @USBTV_AUDIO_ENDP, align 4
  %19 = call i32 @usb_rcvbulkpipe(i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @USBTV_AUDIO_URBSIZE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kzalloc(i32 %20, i32 %21)
  %23 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %24 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32* %22, i32** %26, align 8
  %27 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %28 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %14
  br label %64

34:                                               ; preds = %14
  %35 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %36 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %39 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %43 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @USBTV_AUDIO_URBSIZE, align 4
  %48 = load i32, i32* @usbtv_audio_urb_received, align 4
  %49 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %50 = call i32 @usb_fill_bulk_urb(%struct.TYPE_9__* %37, i32 %40, i32 %41, i32* %46, i32 %47, i32 %48, %struct.usbtv* %49)
  %51 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.TYPE_8__** bitcast ([18 x [2 x %struct.TYPE_8__]]* @usbtv_audio_start.setup to %struct.TYPE_8__**))
  %53 = call i32 @usbtv_set_regs(%struct.usbtv* %51, %struct.TYPE_8__** bitcast ([18 x [2 x %struct.TYPE_8__]]* @usbtv_audio_start.setup to %struct.TYPE_8__**), i32 %52)
  %54 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %55 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @usb_clear_halt(i32 %56, i32 %57)
  %59 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %60 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call i32 @usb_submit_urb(%struct.TYPE_9__* %61, i32 %62)
  store i32 0, i32* %2, align 4
  br label %74

64:                                               ; preds = %33
  %65 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %66 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i32 @usb_free_urb(%struct.TYPE_9__* %67)
  %69 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %70 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %69, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %70, align 8
  br label %71

71:                                               ; preds = %64, %13
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %34
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_9__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_9__*, i32, i32, i32*, i32, i32, %struct.usbtv*) #1

declare dso_local i32 @usbtv_set_regs(%struct.usbtv*, %struct.TYPE_8__**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__**) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
