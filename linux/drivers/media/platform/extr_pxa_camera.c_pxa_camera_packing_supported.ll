; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_packing_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_packing_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_mbus_pixelfmt = type { i64, i32 }

@PXA_MBUS_PACKING_NONE = common dso_local global i64 0, align 8
@PXA_MBUS_PACKING_2X8_PADHI = common dso_local global i64 0, align 8
@PXA_MBUS_PACKING_EXTEND16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_mbus_pixelfmt*)* @pxa_camera_packing_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_packing_supported(%struct.pxa_mbus_pixelfmt* %0) #0 {
  %2 = alloca %struct.pxa_mbus_pixelfmt*, align 8
  store %struct.pxa_mbus_pixelfmt* %0, %struct.pxa_mbus_pixelfmt** %2, align 8
  %3 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %2, align 8
  %4 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PXA_MBUS_PACKING_NONE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %2, align 8
  %10 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %2, align 8
  %15 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PXA_MBUS_PACKING_2X8_PADHI, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %32, label %19

19:                                               ; preds = %13, %8
  %20 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %2, align 8
  %21 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 8
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %2, align 8
  %26 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PXA_MBUS_PACKING_EXTEND16, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ false, %19 ], [ %29, %24 ]
  br label %32

32:                                               ; preds = %30, %13, %1
  %33 = phi i1 [ true, %13 ], [ true, %1 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
