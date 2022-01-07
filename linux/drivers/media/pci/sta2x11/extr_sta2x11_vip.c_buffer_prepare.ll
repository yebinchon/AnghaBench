; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.sta2x11_vip = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vip_buffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"buffer too small (%lu < %lu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.sta2x11_vip*, align 8
  %6 = alloca %struct.vip_buffer*, align 8
  %7 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %9 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %8)
  store %struct.vb2_v4l2_buffer* %9, %struct.vb2_v4l2_buffer** %4, align 8
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sta2x11_vip* @vb2_get_drv_priv(i32 %12)
  store %struct.sta2x11_vip* %13, %struct.sta2x11_vip** %5, align 8
  %14 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %15 = call %struct.vip_buffer* @to_vip_buffer(%struct.vb2_v4l2_buffer* %14)
  store %struct.vip_buffer* %15, %struct.vip_buffer** %6, align 8
  %16 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %17 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %21 = call i64 @vb2_plane_size(%struct.vb2_buffer* %20, i32 0)
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %26 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %25, i32 0, i32 0
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %28 = call i64 @vb2_plane_size(%struct.vb2_buffer* %27, i32 0)
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @v4l2_err(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %1
  %34 = load %struct.vip_buffer*, %struct.vip_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.vip_buffer, %struct.vip_buffer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @vb2_set_plane_payload(i32* %36, i32 0, i64 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %24
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.sta2x11_vip* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.vip_buffer* @to_vip_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
