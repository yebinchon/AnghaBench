; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cx2341x_getv4lflags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cx2341x_getv4lflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32 }
%struct.pvr2_ctl_info = type { i32* }

@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@ctrl_cx2341x_set = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*)* @ctrl_cx2341x_getv4lflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_cx2341x_getv4lflags(%struct.pvr2_ctrl* %0) #0 {
  %2 = alloca %struct.pvr2_ctrl*, align 8
  %3 = alloca %struct.v4l2_queryctrl, align 4
  %4 = alloca %struct.pvr2_ctl_info*, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %2, align 8
  %5 = bitcast %struct.v4l2_queryctrl* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @cx2341x_ctrl_query(i32* %15, %struct.v4l2_queryctrl* %3)
  %17 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %2, align 8
  %18 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = bitcast %struct.TYPE_4__* %19 to %struct.pvr2_ctl_info*
  store %struct.pvr2_ctl_info* %20, %struct.pvr2_ctl_info** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.pvr2_ctl_info*, %struct.pvr2_ctl_info** %4, align 8
  %28 = getelementptr inbounds %struct.pvr2_ctl_info, %struct.pvr2_ctl_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.pvr2_ctl_info*, %struct.pvr2_ctl_info** %4, align 8
  %33 = getelementptr inbounds %struct.pvr2_ctl_info, %struct.pvr2_ctl_info* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  br label %45

35:                                               ; preds = %1
  %36 = load %struct.pvr2_ctl_info*, %struct.pvr2_ctl_info** %4, align 8
  %37 = getelementptr inbounds %struct.pvr2_ctl_info, %struct.pvr2_ctl_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** @ctrl_cx2341x_set, align 8
  %42 = load %struct.pvr2_ctl_info*, %struct.pvr2_ctl_info** %4, align 8
  %43 = getelementptr inbounds %struct.pvr2_ctl_info, %struct.pvr2_ctl_info* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cx2341x_ctrl_query(i32*, %struct.v4l2_queryctrl*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
