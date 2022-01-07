; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_querymenu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_querymenu = type { i64*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_querymenu*)* @pvr2_querymenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_querymenu(%struct.file* %0, i8* %1, %struct.v4l2_querymenu* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_querymenu*, align 8
  %7 = alloca %struct.pvr2_v4l2_fh*, align 8
  %8 = alloca %struct.pvr2_hdw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_querymenu* %2, %struct.v4l2_querymenu** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %12, align 8
  store %struct.pvr2_v4l2_fh* %13, %struct.pvr2_v4l2_fh** %7, align 8
  %14 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %7, align 8
  %15 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %18, align 8
  store %struct.pvr2_hdw* %19, %struct.pvr2_hdw** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %21 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pvr2_hdw_get_ctrl_v4l(%struct.pvr2_hdw* %20, i32 %23)
  %25 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = call i32 @pvr2_ctrl_get_valname(i32 %24, i32 %27, i64* %30, i32 7, i32* %9)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %10, align 4
  ret i32 %38
}

declare dso_local i32 @pvr2_ctrl_get_valname(i32, i32, i64*, i32, i32*) #1

declare dso_local i32 @pvr2_hdw_get_ctrl_v4l(%struct.pvr2_hdw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
