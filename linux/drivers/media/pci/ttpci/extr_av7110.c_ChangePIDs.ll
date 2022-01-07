; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_ChangePIDs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_ChangePIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32*, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@DMX_PES_VIDEO = common dso_local global i64 0, align 8
@DMX_PES_AUDIO = common dso_local global i64 0, align 8
@DMX_PES_TELETEXT = common dso_local global i64 0, align 8
@DMX_PES_PCR = common dso_local global i64 0, align 8
@DMX_PES_SUBTITLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ChangePIDs(%struct.av7110* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.av7110*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.av7110*, %struct.av7110** %8, align 8
  %16 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %15)
  %17 = load %struct.av7110*, %struct.av7110** %8, align 8
  %18 = getelementptr inbounds %struct.av7110, %struct.av7110* %17, i32 0, i32 1
  %19 = call i64 @mutex_lock_interruptible(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %97

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 32768
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.av7110*, %struct.av7110** %8, align 8
  %31 = getelementptr inbounds %struct.av7110, %struct.av7110* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @DMX_PES_VIDEO, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %29, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 32768
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.av7110*, %struct.av7110** %8, align 8
  %42 = getelementptr inbounds %struct.av7110, %struct.av7110* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @DMX_PES_AUDIO, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %40, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 32768
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.av7110*, %struct.av7110** %8, align 8
  %53 = getelementptr inbounds %struct.av7110, %struct.av7110* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @DMX_PES_TELETEXT, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %46
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 32768
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.av7110*, %struct.av7110** %8, align 8
  %64 = getelementptr inbounds %struct.av7110, %struct.av7110* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @DMX_PES_PCR, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %62, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %57
  %69 = load %struct.av7110*, %struct.av7110** %8, align 8
  %70 = getelementptr inbounds %struct.av7110, %struct.av7110* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @DMX_PES_SUBTITLE, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load %struct.av7110*, %struct.av7110** %8, align 8
  %75 = getelementptr inbounds %struct.av7110, %struct.av7110* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %68
  %79 = load %struct.av7110*, %struct.av7110** %8, align 8
  %80 = getelementptr inbounds %struct.av7110, %struct.av7110* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @DMX_PES_PCR, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load %struct.av7110*, %struct.av7110** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @SetPIDs(%struct.av7110* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %78, %68
  %93 = load %struct.av7110*, %struct.av7110** %8, align 8
  %94 = getelementptr inbounds %struct.av7110, %struct.av7110* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %92, %21
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @SetPIDs(%struct.av7110*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
