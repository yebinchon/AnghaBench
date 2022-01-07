; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_mbus_xlate_by_fourcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_mbus_xlate_by_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_format_xlate = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxa_camera_format_xlate* (%struct.pxa_camera_format_xlate*, i32)* @pxa_mbus_xlate_by_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxa_camera_format_xlate* @pxa_mbus_xlate_by_fourcc(%struct.pxa_camera_format_xlate* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa_camera_format_xlate*, align 8
  %4 = alloca %struct.pxa_camera_format_xlate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pxa_camera_format_xlate* %0, %struct.pxa_camera_format_xlate** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %8, i64 %10
  %12 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %7
  %16 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %16, i64 %18
  %20 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %27, i64 %29
  store %struct.pxa_camera_format_xlate* %30, %struct.pxa_camera_format_xlate** %3, align 8
  br label %36

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  store %struct.pxa_camera_format_xlate* null, %struct.pxa_camera_format_xlate** %3, align 8
  br label %36

36:                                               ; preds = %35, %26
  %37 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %3, align 8
  ret %struct.pxa_camera_format_xlate* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
