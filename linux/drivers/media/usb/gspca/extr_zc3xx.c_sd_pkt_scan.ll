; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@JPEG_HDR_SZ = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
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
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 3
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 217
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %30 = load i32, i32* @LAST_PACKET, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @gspca_frame_add(%struct.gspca_dev* %29, i32 %30, i32* %31, i32 %33)
  br label %63

35:                                               ; preds = %20, %12, %3
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 216
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %47 = load i32, i32* @FIRST_PACKET, align 4
  %48 = load %struct.sd*, %struct.sd** %7, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @JPEG_HDR_SZ, align 4
  %52 = call i32 @gspca_frame_add(%struct.gspca_dev* %46, i32 %47, i32* %50, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 18
  store i32* %54, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 18
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %45, %40, %35
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %59 = load i32, i32* @INTER_PACKET, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @gspca_frame_add(%struct.gspca_dev* %58, i32 %59, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %28
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
