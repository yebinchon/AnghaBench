; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, %struct.vxge_vpath*, i64 }
%struct.vxge_vpath = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@__const.vxge_enable_msix.tim_msix_id = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 0], align 16
@VXGE_HW_VPATH_MSIX_ACTIVE = common dso_local global i32 0, align 4
@VXGE_ALARM_MSIX_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*)* @vxge_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_enable_msix(%struct.vxgedev* %0) #0 {
  %2 = alloca %struct.vxgedev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca %struct.vxge_vpath*, align 8
  store %struct.vxgedev* %0, %struct.vxgedev** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i32]* @__const.vxge_enable_msix.tim_msix_id to i8*), i64 16, i1 false)
  %8 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %9 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %11 = call i32 @vxge_alloc_msix(%struct.vxgedev* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %51, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %18 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %15
  %22 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %23 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %22, i32 0, i32 1
  %24 = load %struct.vxge_vpath*, %struct.vxge_vpath** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %24, i64 %26
  store %struct.vxge_vpath* %27, %struct.vxge_vpath** %6, align 8
  %28 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %29 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 %32, 1
  %34 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %35 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %38 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %43 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %46 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %49 = load i32, i32* @VXGE_ALARM_MSIX_ID, align 4
  %50 = call i32 @vxge_hw_vpath_msix_set(i32 %47, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %21
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %15

54:                                               ; preds = %15
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vxge_alloc_msix(%struct.vxgedev*) #2

declare dso_local i32 @vxge_hw_vpath_msix_set(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
