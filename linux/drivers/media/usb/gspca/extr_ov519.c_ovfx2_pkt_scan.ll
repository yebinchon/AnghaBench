; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ovfx2_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ovfx2_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sd = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@INTER_PACKET = common dso_local global i32 0, align 4
@DISCARD_PACKET = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @ovfx2_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovfx2_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
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
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = load i32, i32* @INTER_PACKET, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @gspca_frame_add(%struct.gspca_dev* %10, i32 %11, i32* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %3
  %22 = load %struct.sd*, %struct.sd** %7, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load %struct.sd*, %struct.sd** %7, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sd*, %struct.sd** %7, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sd*, %struct.sd** %7, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %38, %43
  %45 = icmp slt i32 %33, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %26
  %47 = load i32, i32* @DISCARD_PACKET, align 4
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %26
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = load i32, i32* @LAST_PACKET, align 4
  %54 = call i32 @gspca_frame_add(%struct.gspca_dev* %52, i32 %53, i32* null, i32 0)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %56 = load i32, i32* @FIRST_PACKET, align 4
  %57 = call i32 @gspca_frame_add(%struct.gspca_dev* %55, i32 %56, i32* null, i32 0)
  br label %58

58:                                               ; preds = %51, %3
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
