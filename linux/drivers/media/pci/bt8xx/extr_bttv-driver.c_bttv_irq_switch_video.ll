; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq_switch_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq_switch_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i64, i32, %struct.bttv_buffer_set, i32 }
%struct.bttv_buffer_set = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BT848_RISC_COUNT = common dso_local global i32 0, align 4
@debug_latency = common dso_local global i64 0, align 8
@UNSET = common dso_local global i64 0, align 8
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @bttv_irq_switch_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_irq_switch_video(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca %struct.bttv_buffer_set, align 8
  %4 = alloca %struct.bttv_buffer_set, align 8
  %5 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %6 = load %struct.bttv*, %struct.bttv** %2, align 8
  %7 = getelementptr inbounds %struct.bttv, %struct.bttv* %6, i32 0, i32 2
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.bttv*, %struct.bttv** %2, align 8
  %10 = call i32 @bttv_irq_next_video(%struct.bttv* %9, %struct.bttv_buffer_set* %3)
  %11 = load i32, i32* @BT848_RISC_COUNT, align 4
  %12 = call i32 @btread(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.bttv*, %struct.bttv** %2, align 8
  %14 = getelementptr inbounds %struct.bttv, %struct.bttv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.bttv*, %struct.bttv** %2, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @is_active(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.bttv*, %struct.bttv** %2, align 8
  %29 = getelementptr inbounds %struct.bttv, %struct.bttv* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load %struct.bttv*, %struct.bttv** %2, align 8
  %35 = getelementptr inbounds %struct.bttv, %struct.bttv* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @is_active(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %33, %18
  %43 = load %struct.bttv*, %struct.bttv** %2, align 8
  %44 = getelementptr inbounds %struct.bttv, %struct.bttv* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load i64, i64* @debug_latency, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.bttv*, %struct.bttv** %2, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @bttv_irq_debug_low_latency(%struct.bttv* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.bttv*, %struct.bttv** %2, align 8
  %55 = getelementptr inbounds %struct.bttv, %struct.bttv* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  br label %95

57:                                               ; preds = %33, %27
  %58 = load %struct.bttv*, %struct.bttv** %2, align 8
  %59 = getelementptr inbounds %struct.bttv, %struct.bttv* %58, i32 0, i32 3
  %60 = bitcast %struct.bttv_buffer_set* %4 to i8*
  %61 = bitcast %struct.bttv_buffer_set* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load %struct.bttv*, %struct.bttv** %2, align 8
  %63 = getelementptr inbounds %struct.bttv, %struct.bttv* %62, i32 0, i32 3
  %64 = bitcast %struct.bttv_buffer_set* %63 to i8*
  %65 = bitcast %struct.bttv_buffer_set* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 16, i1 false)
  %66 = load %struct.bttv*, %struct.bttv** %2, align 8
  %67 = getelementptr inbounds %struct.bttv, %struct.bttv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, -2
  store i32 %69, i32* %67, align 8
  %70 = load %struct.bttv*, %struct.bttv** %2, align 8
  %71 = call i32 @bttv_buffer_activate_video(%struct.bttv* %70, %struct.bttv_buffer_set* %3)
  %72 = load %struct.bttv*, %struct.bttv** %2, align 8
  %73 = call i32 @bttv_set_dma(%struct.bttv* %72, i32 0)
  %74 = load i64, i64* @UNSET, align 8
  %75 = load %struct.bttv*, %struct.bttv** %2, align 8
  %76 = getelementptr inbounds %struct.bttv, %struct.bttv* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %57
  %80 = load %struct.bttv*, %struct.bttv** %2, align 8
  %81 = load %struct.bttv*, %struct.bttv** %2, align 8
  %82 = getelementptr inbounds %struct.bttv, %struct.bttv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @video_mux(%struct.bttv* %80, i64 %83)
  %85 = load i64, i64* @UNSET, align 8
  %86 = load %struct.bttv*, %struct.bttv** %2, align 8
  %87 = getelementptr inbounds %struct.bttv, %struct.bttv* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %79, %57
  %89 = load %struct.bttv*, %struct.bttv** %2, align 8
  %90 = load i32, i32* @VIDEOBUF_DONE, align 4
  %91 = call i32 @bttv_irq_wakeup_video(%struct.bttv* %89, %struct.bttv_buffer_set* %4, %struct.bttv_buffer_set* %3, i32 %90)
  %92 = load %struct.bttv*, %struct.bttv** %2, align 8
  %93 = getelementptr inbounds %struct.bttv, %struct.bttv* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock(i32* %93)
  br label %95

95:                                               ; preds = %88, %53
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bttv_irq_next_video(%struct.bttv*, %struct.bttv_buffer_set*) #1

declare dso_local i32 @btread(i32) #1

declare dso_local i64 @is_active(i32*, i32) #1

declare dso_local i32 @bttv_irq_debug_low_latency(%struct.bttv*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bttv_buffer_activate_video(%struct.bttv*, %struct.bttv_buffer_set*) #1

declare dso_local i32 @bttv_set_dma(%struct.bttv*, i32) #1

declare dso_local i32 @video_mux(%struct.bttv*, i64) #1

declare dso_local i32 @bttv_irq_wakeup_video(%struct.bttv*, %struct.bttv_buffer_set*, %struct.bttv_buffer_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
