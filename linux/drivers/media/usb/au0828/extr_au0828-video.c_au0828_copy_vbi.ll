; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_copy_vbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_copy_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32 }
%struct.au0828_dmaqueue = type { i64 }
%struct.au0828_buffer = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"dev is null\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dma_q is null\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"p is null\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"outp is null\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*, i8*, i8*, i64)* @au0828_copy_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au0828_copy_vbi(%struct.au0828_dev* %0, %struct.au0828_dmaqueue* %1, %struct.au0828_buffer* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.au0828_dev*, align 8
  %8 = alloca %struct.au0828_dmaqueue*, align 8
  %9 = alloca %struct.au0828_buffer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %7, align 8
  store %struct.au0828_dmaqueue* %1, %struct.au0828_dmaqueue** %8, align 8
  store %struct.au0828_buffer* %2, %struct.au0828_buffer** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %19 = icmp eq %struct.au0828_dev* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %110

22:                                               ; preds = %6
  %23 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %24 = icmp eq %struct.au0828_dmaqueue* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %110

27:                                               ; preds = %22
  %28 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %29 = icmp eq %struct.au0828_buffer* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %110

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %110

36:                                               ; preds = %31
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %110

41:                                               ; preds = %36
  %42 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %43 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  %45 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %46 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %51 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %41
  %55 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %56 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %59 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %57, %60
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %54, %41
  %63 = load i8*, i8** %10, align 8
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %66 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = udiv i64 %67, 2
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  store i8* %69, i8** %13, align 8
  %70 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %71 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %62
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %77 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load i8*, i8** %13, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %13, align 8
  br label %83

83:                                               ; preds = %74, %62
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %12, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** %13, align 8
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %17, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  store i8 %95, i8* %100, align 1
  br label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %16, align 4
  br label %84

104:                                              ; preds = %84
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %107 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %105
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %104, %39, %34, %30, %25, %20
  ret void
}

declare dso_local i32 @au0828_isocdbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
