; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_vpath_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_vpath_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { %struct.TYPE_8__, %struct.vxge_vpath* }
%struct.TYPE_8__ = type { i64 }
%struct.vxge_vpath = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@__const.vxge_vpath_intr_enable.tim_msix_id = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 0], align 16
@VXGE_ALARM_MSIX_ID = common dso_local global i32 0, align 4
@INTA = common dso_local global i64 0, align 8
@VXGE_HW_VPATH_MSIX_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxgedev*, i32)* @vxge_vpath_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_vpath_intr_enable(%struct.vxgedev* %0, i32 %1) #0 {
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxge_vpath*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %10 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %9, i32 0, i32 1
  %11 = load %struct.vxge_vpath*, %struct.vxge_vpath** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %11, i64 %13
  store %struct.vxge_vpath* %14, %struct.vxge_vpath** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i32]* @__const.vxge_vpath_intr_enable.tim_msix_id to i8*), i64 16, i1 false)
  %16 = load i32, i32* @VXGE_ALARM_MSIX_ID, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %18 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = call i32 @vxge_hw_vpath_intr_enable(%struct.TYPE_11__* %19)
  %21 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %22 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INTA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %29 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = call i32 @vxge_hw_vpath_inta_unmask_tx_rx(%struct.TYPE_11__* %30)
  br label %73

32:                                               ; preds = %2
  %33 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %34 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @vxge_hw_vpath_msix_set(%struct.TYPE_11__* %35, i32* %36, i32 %37)
  %39 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %40 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %45 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @vxge_hw_vpath_msix_unmask(%struct.TYPE_11__* %46, i32 %47)
  %49 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %50 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @vxge_hw_vpath_msix_unmask(%struct.TYPE_11__* %51, i32 %53)
  %55 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %56 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %6, align 4
  %68 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %69 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @vxge_hw_vpath_msix_unmask(%struct.TYPE_11__* %70, i32 %71)
  br label %73

73:                                               ; preds = %32, %27
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vxge_hw_vpath_intr_enable(%struct.TYPE_11__*) #2

declare dso_local i32 @vxge_hw_vpath_inta_unmask_tx_rx(%struct.TYPE_11__*) #2

declare dso_local i32 @vxge_hw_vpath_msix_set(%struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @vxge_hw_vpath_msix_unmask(%struct.TYPE_11__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
