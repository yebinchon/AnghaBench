; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_av7110_set_vidmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_av7110_set_vidmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"av7110:%p, \0A\00", align 1
@COMTYPE_ENCODER = common dso_local global i32 0, align 4
@LoadVidCode = common dso_local global i32 0, align 4
@DMX_PES_VIDEO = common dso_local global i64 0, align 8
@DMX_PES_AUDIO = common dso_local global i64 0, align 8
@DMX_PES_TELETEXT = common dso_local global i64 0, align 8
@DMX_PES_PCR = common dso_local global i64 0, align 8
@COMTYPE_PIDFILTER = common dso_local global i32 0, align 4
@Scan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_set_vidmode(%struct.av7110* %0, i32 %1) #0 {
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.av7110*, %struct.av7110** %3, align 8
  %7 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.av7110* %6)
  %8 = load %struct.av7110*, %struct.av7110** %3, align 8
  %9 = load i32, i32* @COMTYPE_ENCODER, align 4
  %10 = load i32, i32* @LoadVidCode, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (%struct.av7110*, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %8, i32 %9, i32 %10, i32 1, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %2
  %16 = load %struct.av7110*, %struct.av7110** %3, align 8
  %17 = getelementptr inbounds %struct.av7110, %struct.av7110* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = load %struct.av7110*, %struct.av7110** %3, align 8
  %22 = load %struct.av7110*, %struct.av7110** %3, align 8
  %23 = getelementptr inbounds %struct.av7110, %struct.av7110* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @DMX_PES_VIDEO, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.av7110*, %struct.av7110** %3, align 8
  %29 = getelementptr inbounds %struct.av7110, %struct.av7110* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @DMX_PES_AUDIO, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.av7110*, %struct.av7110** %3, align 8
  %35 = getelementptr inbounds %struct.av7110, %struct.av7110* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @DMX_PES_TELETEXT, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.av7110*, %struct.av7110** %3, align 8
  %41 = getelementptr inbounds %struct.av7110, %struct.av7110* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @DMX_PES_PCR, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ChangePIDs(%struct.av7110* %21, i32 %27, i32 %33, i32 %39, i32 0, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %20
  %50 = load %struct.av7110*, %struct.av7110** %3, align 8
  %51 = load i32, i32* @COMTYPE_PIDFILTER, align 4
  %52 = load i32, i32* @Scan, align 4
  %53 = call i32 (%struct.av7110*, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %50, i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %20
  br label %55

55:                                               ; preds = %54, %15, %2
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32, ...) #1

declare dso_local i32 @ChangePIDs(%struct.av7110*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
