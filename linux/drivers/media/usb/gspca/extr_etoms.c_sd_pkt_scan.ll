; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"header packet found datalength %d !!\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"G %d R %d G %d B %d\00", align 1
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@DISCARD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 63
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 192
  %16 = shl i32 %15, 2
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 63
  br i1 %22, label %23, label %53

23:                                               ; preds = %3
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %25 = load i32, i32* @D_FRAM, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %24, i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %29 = load i32, i32* @D_FRAM, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %28, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35, i32 %38, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 30
  store i32* %44, i32** %5, align 8
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %46 = load i32, i32* @LAST_PACKET, align 4
  %47 = call i32 @gspca_frame_add(%struct.gspca_dev* %45, i32 %46, i32* null, i32 0)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = load i32, i32* @FIRST_PACKET, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @gspca_frame_add(%struct.gspca_dev* %48, i32 %49, i32* %50, i32 %51)
  br label %68

53:                                               ; preds = %3
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  store i32* %58, i32** %5, align 8
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %60 = load i32, i32* @INTER_PACKET, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @gspca_frame_add(%struct.gspca_dev* %59, i32 %60, i32* %61, i32 %62)
  br label %68

64:                                               ; preds = %53
  %65 = load i32, i32* @DISCARD_PACKET, align 4
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %67 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %23, %64, %56
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, ...) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
