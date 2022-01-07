; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.sun4i_csi = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"buffer too small (%lu < %lu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @sun4i_csi_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_csi_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.sun4i_csi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sun4i_csi* @vb2_get_drv_priv(i32 %9)
  store %struct.sun4i_csi* %10, %struct.sun4i_csi** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %14 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %11
  %19 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %20 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @vb2_plane_size(%struct.vb2_buffer* %28, i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %18
  %34 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %35 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @vb2_plane_size(%struct.vb2_buffer* %37, i32 %38)
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %18
  %45 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %45, i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %11

52:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.sun4i_csi* @vb2_get_drv_priv(i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
