; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_get_image_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_get_image_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32 }
%struct.TYPE_4__ = type { %struct.v4l2_rect }

@ccdc_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_rect*)* @ccdc_get_image_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_get_image_window(%struct.v4l2_rect* %0) #0 {
  %2 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_rect* %0, %struct.v4l2_rect** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %4 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %8 = bitcast %struct.v4l2_rect* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.v4l2_rect* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 2, i32 0) to i8*), i64 4, i1 false)
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %11 = bitcast %struct.v4l2_rect* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 8 bitcast (%struct.v4l2_rect* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 1, i32 0) to i8*), i64 4, i1 false)
  br label %12

12:                                               ; preds = %9, %6
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
