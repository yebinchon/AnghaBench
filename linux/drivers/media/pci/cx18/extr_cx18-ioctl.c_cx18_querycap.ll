; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.cx18_open_id = type { %struct.cx18* }
%struct.cx18 = type { i32, i32, i32 }

@CX18_DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @cx18_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.cx18_open_id*, align 8
  %8 = alloca %struct.cx18*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.cx18_open_id* @fh2id(i8* %9)
  store %struct.cx18_open_id* %10, %struct.cx18_open_id** %7, align 8
  %11 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %12 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %11, i32 0, i32 0
  %13 = load %struct.cx18*, %struct.cx18** %12, align 8
  store %struct.cx18* %13, %struct.cx18** %8, align 8
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CX18_DRIVER_NAME, align 4
  %18 = call i32 @strscpy(i32 %16, i32 %17, i32 4)
  %19 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cx18*, %struct.cx18** %8, align 8
  %23 = getelementptr inbounds %struct.cx18, %struct.cx18* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strscpy(i32 %21, i32 %24, i32 4)
  %26 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cx18*, %struct.cx18** %8, align 8
  %30 = getelementptr inbounds %struct.cx18, %struct.cx18* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @pci_name(i32 %31)
  %33 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.cx18*, %struct.cx18** %8, align 8
  %35 = getelementptr inbounds %struct.cx18, %struct.cx18* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret i32 0
}

declare dso_local %struct.cx18_open_id* @fh2id(i8*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
