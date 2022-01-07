; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.gspca_dev = type { i64, i64 }
%struct.sd = type { i32* }

@w9968cf_vga_mode = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@JPEG_HDR_SZ = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @w9968cf_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %7, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @w9968cf_vga_mode, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 216
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %34 = load i32, i32* @LAST_PACKET, align 4
  %35 = call i32 @gspca_frame_add(%struct.gspca_dev* %33, i32 %34, i32* null, i32 0)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %37 = load i32, i32* @FIRST_PACKET, align 4
  %38 = load %struct.sd*, %struct.sd** %7, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @JPEG_HDR_SZ, align 4
  %42 = call i32 @gspca_frame_add(%struct.gspca_dev* %36, i32 %37, i32* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %6, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32* %46, i32** %5, align 8
  br label %47

47:                                               ; preds = %32, %27, %22, %19
  br label %63

48:                                               ; preds = %3
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %55 = load i32, i32* @LAST_PACKET, align 4
  %56 = call i32 @gspca_frame_add(%struct.gspca_dev* %54, i32 %55, i32* null, i32 0)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %58 = load i32, i32* @FIRST_PACKET, align 4
  %59 = call i32 @gspca_frame_add(%struct.gspca_dev* %57, i32 %58, i32* null, i32 0)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %53, %48
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %65 = load i32, i32* @INTER_PACKET, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @gspca_frame_add(%struct.gspca_dev* %64, i32 %65, i32* %66, i32 %67)
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
