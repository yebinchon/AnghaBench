; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32 }
%struct.bdisp_ctx = type { %struct.bdisp_dev* }
%struct.bdisp_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"platform:%s%d\00", align 1
@BDISP_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @bdisp_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.bdisp_ctx*, align 8
  %8 = alloca %struct.bdisp_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.bdisp_ctx* @fh_to_ctx(i8* %9)
  store %struct.bdisp_ctx* %10, %struct.bdisp_ctx** %7, align 8
  %11 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %11, i32 0, i32 0
  %13 = load %struct.bdisp_dev*, %struct.bdisp_dev** %12, align 8
  store %struct.bdisp_dev* %13, %struct.bdisp_dev** %8, align 8
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bdisp_dev*, %struct.bdisp_dev** %8, align 8
  %18 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strscpy(i32 %16, i32 %21, i32 4)
  %23 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bdisp_dev*, %struct.bdisp_dev** %8, align 8
  %27 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strscpy(i32 %25, i32 %30, i32 4)
  %32 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** @BDISP_NAME, align 8
  %36 = load %struct.bdisp_dev*, %struct.bdisp_dev** %8, align 8
  %37 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %38)
  ret i32 0
}

declare dso_local %struct.bdisp_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
