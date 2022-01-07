; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_camera = type { i32, i32, i32, i32* }
%struct.via_buffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sg_table = type { i32, i32 }

@VCR_INTCTRL = common dso_local global i32 0, align 4
@VCR_IC_ACTBUF = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @viacam_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viacam_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.via_camera*, align 8
  %6 = alloca %struct.via_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sg_table*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.via_camera*
  store %struct.via_camera* %10, %struct.via_camera** %5, align 8
  %11 = load %struct.via_camera*, %struct.via_camera** %5, align 8
  %12 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.via_camera*, %struct.via_camera** %5, align 8
  %15 = call %struct.via_buffer* @viacam_next_buffer(%struct.via_camera* %14)
  store %struct.via_buffer* %15, %struct.via_buffer** %6, align 8
  %16 = load %struct.via_buffer*, %struct.via_buffer** %6, align 8
  %17 = icmp eq %struct.via_buffer* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.via_camera*, %struct.via_camera** %5, align 8
  %21 = load i32, i32* @VCR_INTCTRL, align 4
  %22 = call i32 @viacam_read_reg(%struct.via_camera* %20, i32 %21)
  %23 = load i32, i32* @VCR_IC_ACTBUF, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 3
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.via_camera*, %struct.via_camera** %5, align 8
  %32 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %19
  %36 = load %struct.via_buffer*, %struct.via_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.via_buffer, %struct.via_buffer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.TYPE_5__* %38, i32 0)
  store %struct.sg_table* %39, %struct.sg_table** %8, align 8
  %40 = call i32 (...) @ktime_get_ns()
  %41 = load %struct.via_buffer*, %struct.via_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.via_buffer, %struct.via_buffer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.via_camera*, %struct.via_camera** %5, align 8
  %46 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %53 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %56 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @viafb_dma_copy_out_sg(i32 %51, i32 %54, i32 %57)
  %59 = load %struct.via_camera*, %struct.via_camera** %5, align 8
  %60 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = load %struct.via_buffer*, %struct.via_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.via_buffer, %struct.via_buffer* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i64 %63, i64* %66, align 8
  %67 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %68 = load %struct.via_buffer*, %struct.via_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.via_buffer, %struct.via_buffer* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.via_buffer*, %struct.via_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.via_buffer, %struct.via_buffer* %71, i32 0, i32 1
  %73 = call i32 @list_del(i32* %72)
  %74 = load %struct.via_buffer*, %struct.via_buffer** %6, align 8
  %75 = getelementptr inbounds %struct.via_buffer, %struct.via_buffer* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %78 = call i32 @vb2_buffer_done(%struct.TYPE_5__* %76, i32 %77)
  br label %79

79:                                               ; preds = %35, %18
  %80 = load %struct.via_camera*, %struct.via_camera** %5, align 8
  %81 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.via_buffer* @viacam_next_buffer(%struct.via_camera*) #1

declare dso_local i32 @viacam_read_reg(%struct.via_camera*, i32) #1

declare dso_local %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @viafb_dma_copy_out_sg(i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
