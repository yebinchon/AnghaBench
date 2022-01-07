; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_slot_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_slot_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rvin_video_format = type { i32 }

@HW_BUFFER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvin_dev*, i32, i32)* @rvin_set_slot_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvin_set_slot_addr(%struct.rvin_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rvin_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvin_video_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %12 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rvin_video_format* @rvin_format_from_pixel(%struct.rvin_dev* %11, i32 %15)
  store %struct.rvin_video_format* %16, %struct.rvin_video_format** %7, align 8
  %17 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %18 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rvin_video_format*, %struct.rvin_video_format** %7, align 8
  %22 = getelementptr inbounds %struct.rvin_video_format, %struct.rvin_video_format* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %26 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %30 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %28, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @HW_BUFFER_MASK, align 4
  %45 = and i32 %43, %44
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  br label %55

49:                                               ; preds = %3
  %50 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @VNMB_REG(i32 %52)
  %54 = call i32 @rvin_write(%struct.rvin_dev* %50, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %48
  ret void
}

declare dso_local %struct.rvin_video_format* @rvin_format_from_pixel(%struct.rvin_dev*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rvin_write(%struct.rvin_dev*, i32, i32) #1

declare dso_local i32 @VNMB_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
