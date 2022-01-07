; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32* }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Got %d bytes out of %d for Block 0\0A\00", align 1
@JEILINJ_MAX_TRANSFER = common dso_local global i32 0, align 4
@D_PACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"bad length\0A\00", align 1
@FRAME_START = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"blocks_left = 0x%x\0A\00", align 1
@FIRST_PACKET = common dso_local global i32 0, align 4
@JPEG_HDR_SZ = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@FRAME_HEADER_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%d blocks remaining for frame\0A\00", align 1
@LAST_PACKET = common dso_local global i32 0, align 4
@DISCARD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %7, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = load i32, i32* @D_STREAM, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @JEILINJ_MAX_TRANSFER, align 4
  %16 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %12, i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @JEILINJ_MAX_TRANSFER, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = load i32, i32* @D_PACK, align 4
  %23 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %21, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %95

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = bitcast i32* %25 to i64*
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @FRAME_START, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 10
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.sd*, %struct.sd** %7, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = load i32, i32* @D_STREAM, align 4
  %41 = load %struct.sd*, %struct.sd** %7, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %39, i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %46 = load i32, i32* @FIRST_PACKET, align 4
  %47 = load %struct.sd*, %struct.sd** %7, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @JPEG_HDR_SZ, align 4
  %51 = call i32 @gspca_frame_add(%struct.gspca_dev* %45, i32 %46, i32* %49, i32 %50)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = load i32, i32* @INTER_PACKET, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @FRAME_HEADER_LEN, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* @JEILINJ_MAX_TRANSFER, align 4
  %59 = load i32, i32* @FRAME_HEADER_LEN, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @gspca_frame_add(%struct.gspca_dev* %52, i32 %53, i32* %57, i32 %60)
  br label %94

62:                                               ; preds = %24
  %63 = load %struct.sd*, %struct.sd** %7, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %62
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %69 = load i32, i32* @D_STREAM, align 4
  %70 = load %struct.sd*, %struct.sd** %7, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %68, i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.sd*, %struct.sd** %7, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.sd*, %struct.sd** %7, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = load i32, i32* @LAST_PACKET, align 4
  store i32 %83, i32* %8, align 4
  br label %86

84:                                               ; preds = %67
  %85 = load i32, i32* @INTER_PACKET, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @JEILINJ_MAX_TRANSFER, align 4
  %91 = call i32 @gspca_frame_add(%struct.gspca_dev* %87, i32 %88, i32* %89, i32 %90)
  br label %93

92:                                               ; preds = %62
  br label %95

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %32
  br label %99

95:                                               ; preds = %92, %20
  %96 = load i32, i32* @DISCARD_PACKET, align 4
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %98 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %94
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
