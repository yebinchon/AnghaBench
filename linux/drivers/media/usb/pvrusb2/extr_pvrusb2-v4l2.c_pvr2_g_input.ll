; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.pvr2_ctrl = type { i32 }

@PVR2_CID_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @pvr2_g_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_g_input(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pvr2_v4l2_fh*, align 8
  %8 = alloca %struct.pvr2_hdw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pvr2_ctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %14, align 8
  store %struct.pvr2_v4l2_fh* %15, %struct.pvr2_v4l2_fh** %7, align 8
  %16 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %7, align 8
  %17 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %20, align 8
  store %struct.pvr2_hdw* %21, %struct.pvr2_hdw** %8, align 8
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %23 = load i32, i32* @PVR2_CID_INPUT, align 4
  %24 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %22, i32 %23)
  store %struct.pvr2_ctrl* %24, %struct.pvr2_ctrl** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %10, align 8
  %26 = call i32 @pvr2_ctrl_get_value(%struct.pvr2_ctrl* %25, i32* %11)
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %48, %3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %7, align 8
  %31 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %7, align 8
  %36 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  br label %51

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %28

51:                                               ; preds = %44, %28
  %52 = load i32, i32* %12, align 4
  ret i32 %52
}

declare dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_ctrl_get_value(%struct.pvr2_ctrl*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
