; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32 }
%struct.tw5864_input = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"tw5864\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"TW5864 Encoder %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @tw5864_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.tw5864_input*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.tw5864_input* @video_drvdata(%struct.file* %8)
  store %struct.tw5864_input* %9, %struct.tw5864_input** %7, align 8
  %10 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strscpy(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %18 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snprintf(i32 %16, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %25 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @pci_name(i32 %28)
  %30 = call i32 @sprintf(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  ret i32 0
}

declare dso_local %struct.tw5864_input* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
