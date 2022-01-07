; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_croph_max_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_croph_max_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.v4l2_cropcap }
%struct.v4l2_cropcap = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32*)* @ctrl_croph_max_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_croph_max_get(%struct.pvr2_ctrl* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_ctrl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.v4l2_cropcap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %11 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.v4l2_cropcap* %13, %struct.v4l2_cropcap** %6, align 8
  %14 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @pvr2_hdw_check_cropcap(%struct.TYPE_4__* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %26, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %41, %42
  br label %45

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ 0, %44 ]
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @pvr2_hdw_check_cropcap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
