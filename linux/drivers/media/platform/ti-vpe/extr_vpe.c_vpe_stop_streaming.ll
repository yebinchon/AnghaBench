; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vpe_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @vpe_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpe_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.vpe_ctx*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.vpe_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.vpe_ctx* %5, %struct.vpe_ctx** %3, align 8
  %6 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @vpe_dump_regs(%struct.TYPE_2__* %8)
  %10 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vpdma_dump_regs(i32 %14)
  %16 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %18 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %19 = call i32 @vpe_return_all_buffers(%struct.vpe_ctx* %16, %struct.vb2_queue* %17, i32 %18)
  ret void
}

declare dso_local %struct.vpe_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @vpe_dump_regs(%struct.TYPE_2__*) #1

declare dso_local i32 @vpdma_dump_regs(i32) #1

declare dso_local i32 @vpe_return_all_buffers(%struct.vpe_ctx*, %struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
