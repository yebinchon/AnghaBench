; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_vdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_vdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.pci_dev = type { i32 }
%struct.video_device = type { i32, i32*, i32, i32*, i32* }

@video_device_release_empty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s %s (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_vdev_init(%struct.cx88_core* %0, %struct.pci_dev* %1, %struct.video_device* %2, %struct.video_device* %3, i8* %4) #0 {
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca i8*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store %struct.video_device* %2, %struct.video_device** %8, align 8
  store %struct.video_device* %3, %struct.video_device** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.video_device*, %struct.video_device** %8, align 8
  %12 = load %struct.video_device*, %struct.video_device** %9, align 8
  %13 = bitcast %struct.video_device* %11 to i8*
  %14 = bitcast %struct.video_device* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 40, i1 false)
  %15 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %16 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %15, i32 0, i32 3
  %17 = load %struct.video_device*, %struct.video_device** %8, align 8
  %18 = getelementptr inbounds %struct.video_device, %struct.video_device* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load %struct.video_device*, %struct.video_device** %8, align 8
  %22 = getelementptr inbounds %struct.video_device, %struct.video_device* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @video_device_release_empty, align 4
  %24 = load %struct.video_device*, %struct.video_device** %8, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %27 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %26, i32 0, i32 2
  %28 = load %struct.video_device*, %struct.video_device** %8, align 8
  %29 = getelementptr inbounds %struct.video_device, %struct.video_device* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.video_device*, %struct.video_device** %8, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %34 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %38 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i8* %40)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
