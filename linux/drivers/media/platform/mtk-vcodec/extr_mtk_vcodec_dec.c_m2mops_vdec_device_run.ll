; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_m2mops_vdec_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_m2mops_vdec_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { i32, %struct.mtk_vcodec_dev* }
%struct.mtk_vcodec_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @m2mops_vdec_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m2mops_vdec_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca %struct.mtk_vcodec_dev*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mtk_vcodec_ctx*
  store %struct.mtk_vcodec_ctx* %6, %struct.mtk_vcodec_ctx** %3, align 8
  %7 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %7, i32 0, i32 1
  %9 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %8, align 8
  store %struct.mtk_vcodec_dev* %9, %struct.mtk_vcodec_dev** %4, align 8
  %10 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %13, i32 0, i32 0
  %15 = call i32 @queue_work(i32 %12, i32* %14)
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
