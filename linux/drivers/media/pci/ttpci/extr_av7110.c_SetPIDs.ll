; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_SetPIDs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_SetPIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@DMX_PES_VIDEO = common dso_local global i64 0, align 8
@DMX_PES_AUDIO = common dso_local global i64 0, align 8
@DMX_PES_TELETEXT = common dso_local global i64 0, align 8
@DMX_PES_PCR = common dso_local global i64 0, align 8
@COMTYPE_PIDFILTER = common dso_local global i32 0, align 4
@MultiPID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.av7110*, i32, i32, i32, i32, i32)* @SetPIDs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetPIDs(%struct.av7110* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.av7110*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.av7110*, %struct.av7110** %7, align 8
  %15 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 8191
  br i1 %17, label %30, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 8191
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 8191
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 8191
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 8191
  br i1 %29, label %30, label %51

30:                                               ; preds = %27, %24, %21, %18, %6
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %31 = load %struct.av7110*, %struct.av7110** %7, align 8
  %32 = getelementptr inbounds %struct.av7110, %struct.av7110* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @DMX_PES_VIDEO, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.av7110*, %struct.av7110** %7, align 8
  %37 = getelementptr inbounds %struct.av7110, %struct.av7110* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @DMX_PES_AUDIO, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 0, i64* %40, align 8
  %41 = load %struct.av7110*, %struct.av7110** %7, align 8
  %42 = getelementptr inbounds %struct.av7110, %struct.av7110* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @DMX_PES_TELETEXT, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 0, i64* %45, align 8
  %46 = load %struct.av7110*, %struct.av7110** %7, align 8
  %47 = getelementptr inbounds %struct.av7110, %struct.av7110* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @DMX_PES_PCR, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %30, %27
  %52 = load %struct.av7110*, %struct.av7110** %7, align 8
  %53 = getelementptr inbounds %struct.av7110, %struct.av7110* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, 32768
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.av7110*, %struct.av7110** %7, align 8
  %62 = load i32, i32* @COMTYPE_PIDFILTER, align 4
  %63 = load i32, i32* @MultiPID, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @av7110_fw_cmd(%struct.av7110* %61, i32 %62, i32 %63, i32 6, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  ret i32 %70
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
