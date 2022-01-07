; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i32, %struct.cx231xx* }
%struct.cx231xx = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"enter vidioc_streamon()\0A\00", align 1
@INDEX_TS1 = common dso_local global i32 0, align 4
@CX231XX_DIGITAL_MODE = common dso_local global i32 0, align 4
@CX231XX_NUM_PACKETS = common dso_local global i32 0, align 4
@CX231XX_NUM_BUFS = common dso_local global i32 0, align 4
@cx231xx_isoc_copy = common dso_local global i32 0, align 4
@cx231xx_bulk_copy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"exit vidioc_streamon()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %10, align 8
  store %struct.cx231xx_fh* %11, %struct.cx231xx_fh** %7, align 8
  %12 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %13 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %12, i32 0, i32 1
  %14 = load %struct.cx231xx*, %struct.cx231xx** %13, align 8
  store %struct.cx231xx* %14, %struct.cx231xx** %8, align 8
  %15 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %17 = load i32, i32* @INDEX_TS1, align 4
  %18 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %16, i32 %17, i32 0)
  %19 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %20 = load i32, i32* @CX231XX_DIGITAL_MODE, align 4
  %21 = call i32 @cx231xx_set_mode(%struct.cx231xx* %19, i32 %20)
  %22 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %23 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %28 = load i32, i32* @CX231XX_NUM_PACKETS, align 4
  %29 = load i32, i32* @CX231XX_NUM_BUFS, align 4
  %30 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @cx231xx_isoc_copy, align 4
  %35 = call i32 @cx231xx_init_isoc(%struct.cx231xx* %27, i32 %28, i32 %29, i32 %33, i32 %34)
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %38 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %39 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @cx231xx_bulk_copy, align 4
  %43 = call i32 @cx231xx_init_bulk(%struct.cx231xx* %37, i32 320, i32 5, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %26
  %45 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %47 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %46, i32 0, i32 0
  %48 = call i32 @videobuf_streamon(i32* %47)
  ret i32 %48
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_set_mode(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_init_isoc(%struct.cx231xx*, i32, i32, i32, i32) #1

declare dso_local i32 @cx231xx_init_bulk(%struct.cx231xx*, i32, i32, i32, i32) #1

declare dso_local i32 @videobuf_streamon(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
