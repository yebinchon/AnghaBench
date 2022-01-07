; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32 }
%struct.vpfe_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"vpfe_querycap\0A\00", align 1
@VPFE_MODULE_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"TI AM437x VPFE\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vpfe_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.vpfe_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.vpfe_device* @video_drvdata(%struct.file* %8)
  store %struct.vpfe_device* %9, %struct.vpfe_device** %7, align 8
  %10 = load %struct.vpfe_device*, %struct.vpfe_device** %7, align 8
  %11 = call i32 @vpfe_dbg(i32 2, %struct.vpfe_device* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** @VPFE_MODULE_NAME, align 8
  %16 = call i32 @strscpy(i32 %14, i8* %15, i32 4)
  %17 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strscpy(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %21 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vpfe_device*, %struct.vpfe_device** %7, align 8
  %25 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  ret i32 0
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vpfe_dbg(i32, %struct.vpfe_device*, i8*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
