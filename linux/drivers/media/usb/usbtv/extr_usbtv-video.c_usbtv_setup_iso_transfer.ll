; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_setup_iso_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_setup_iso_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.usbtv*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usbtv = type { i32, i32 }

@USBTV_ISOC_PACKETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USBTV_VIDEO_ENDP = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@usbtv_iso_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.usbtv*)* @usbtv_setup_iso_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @usbtv_setup_iso_transfer(%struct.usbtv* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usbtv*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbtv* %0, %struct.usbtv** %3, align 8
  %7 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %8 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @USBTV_ISOC_PACKETS, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.urb* @usb_alloc_urb(i32 %10, i32 %11)
  store %struct.urb* %12, %struct.urb** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = icmp eq %struct.urb* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.urb* null, %struct.urb** %2, align 8
  br label %90

16:                                               ; preds = %1
  %17 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %18 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.urb*, %struct.urb** %4, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 8
  %22 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %23 = load %struct.urb*, %struct.urb** %4, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 8
  store %struct.usbtv* %22, %struct.usbtv** %24, align 8
  %25 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %26 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @USBTV_VIDEO_ENDP, align 4
  %29 = call i32 @usb_rcvisocpipe(i32 %27, i32 %28)
  %30 = load %struct.urb*, %struct.urb** %4, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @URB_ISO_ASAP, align 4
  %35 = load %struct.urb*, %struct.urb** %4, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @USBTV_ISOC_PACKETS, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @kcalloc(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.urb*, %struct.urb** %4, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %16
  %48 = load %struct.urb*, %struct.urb** %4, align 8
  %49 = call i32 @usb_free_urb(%struct.urb* %48)
  store %struct.urb* null, %struct.urb** %2, align 8
  br label %90

50:                                               ; preds = %16
  %51 = load i32, i32* @usbtv_iso_cb, align 4
  %52 = load %struct.urb*, %struct.urb** %4, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @USBTV_ISOC_PACKETS, align 4
  %55 = load %struct.urb*, %struct.urb** %4, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @USBTV_ISOC_PACKETS, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load %struct.urb*, %struct.urb** %4, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %85, %50
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @USBTV_ISOC_PACKETS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load %struct.urb*, %struct.urb** %4, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.urb*, %struct.urb** %4, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %77, i32* %84, align 4
  br label %85

85:                                               ; preds = %66
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %62

88:                                               ; preds = %62
  %89 = load %struct.urb*, %struct.urb** %4, align 8
  store %struct.urb* %89, %struct.urb** %2, align 8
  br label %90

90:                                               ; preds = %88, %47, %15
  %91 = load %struct.urb*, %struct.urb** %2, align 8
  ret %struct.urb* %91
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
