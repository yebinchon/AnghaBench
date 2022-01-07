; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_fmt_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_fmt_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rga_fmt = type { i64 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NUM_FORMATS = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.rga_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rga_fmt* (%struct.v4l2_format*)* @rga_fmt_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rga_fmt* @rga_fmt_find(%struct.v4l2_format* %0) #0 {
  %2 = alloca %struct.rga_fmt*, align 8
  %3 = alloca %struct.v4l2_format*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NUM_FORMATS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load %struct.rga_fmt*, %struct.rga_fmt** @formats, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %10, i64 %12
  %14 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %15, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %9
  %23 = load %struct.rga_fmt*, %struct.rga_fmt** @formats, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %23, i64 %25
  store %struct.rga_fmt* %26, %struct.rga_fmt** %2, align 8
  br label %32

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %5
  store %struct.rga_fmt* null, %struct.rga_fmt** %2, align 8
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.rga_fmt*, %struct.rga_fmt** %2, align 8
  ret %struct.rga_fmt* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
