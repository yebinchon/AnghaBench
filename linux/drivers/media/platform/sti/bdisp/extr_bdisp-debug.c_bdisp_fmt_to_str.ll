; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_fmt_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_fmt_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bdisp_frame = type { i32, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [8 x i8] c"YUV420P\00", align 1
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NV12 interlaced\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NV12\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"RGB16\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"RGB24\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"XRGB\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ARGB\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_2__*)* @bdisp_fmt_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bdisp_fmt_to_str(i32 %0, %struct.TYPE_2__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bdisp_frame, align 8
  %5 = bitcast %struct.bdisp_frame* %4 to { i32, %struct.TYPE_2__* }*
  %6 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %5, i32 0, i32 0
  store i32 %0, i32* %6, align 8
  %7 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %5, i32 0, i32 1
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %7, align 8
  %8 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %4, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %24 [
    i32 128, label %12
    i32 132, label %13
    i32 130, label %20
    i32 131, label %21
    i32 129, label %22
    i32 133, label %23
  ]

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %25

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %25

19:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %25

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %25

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %25

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %25

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %25

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %12
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
