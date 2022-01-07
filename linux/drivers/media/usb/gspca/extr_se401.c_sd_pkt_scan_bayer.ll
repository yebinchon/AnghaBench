; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_pkt_scan_bayer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_pkt_scan_bayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.cam }
%struct.cam = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan_bayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan_bayer(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 2
  store %struct.cam* %10, %struct.cam** %7, align 8
  %11 = load %struct.cam*, %struct.cam** %7, align 8
  %12 = getelementptr inbounds %struct.cam, %struct.cam* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %26 = load i32, i32* @FIRST_PACKET, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @gspca_frame_add(%struct.gspca_dev* %25, i32 %26, i32* %27, i32 %28)
  br label %49

30:                                               ; preds = %3
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @sd_complete_frame(%struct.gspca_dev* %39, i32* %40, i32 %41)
  br label %49

43:                                               ; preds = %30
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %45 = load i32, i32* @INTER_PACKET, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @gspca_frame_add(%struct.gspca_dev* %44, i32 %45, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %38, %24
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @sd_complete_frame(%struct.gspca_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
