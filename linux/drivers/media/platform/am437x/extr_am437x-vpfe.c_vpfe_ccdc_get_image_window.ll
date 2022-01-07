; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_get_image_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_get_image_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32 }
%struct.TYPE_4__ = type { %struct.v4l2_rect }

@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_ccdc*, %struct.v4l2_rect*)* @vpfe_ccdc_get_image_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_ccdc_get_image_window(%struct.vpfe_ccdc* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.vpfe_ccdc*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %5 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %6 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %13 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %14 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = bitcast %struct.v4l2_rect* %12 to i8*
  %18 = bitcast %struct.v4l2_rect* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %21 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %22 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = bitcast %struct.v4l2_rect* %20 to i8*
  %26 = bitcast %struct.v4l2_rect* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 8 %26, i64 4, i1 false)
  br label %27

27:                                               ; preds = %19, %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
