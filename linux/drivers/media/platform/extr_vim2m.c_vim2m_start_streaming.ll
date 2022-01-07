; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vim2m_ctx = type { i32 }
%struct.vim2m_q_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @vim2m_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vim2m_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vim2m_ctx*, align 8
  %7 = alloca %struct.vim2m_q_data*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = call %struct.vim2m_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.vim2m_ctx* %9, %struct.vim2m_ctx** %6, align 8
  %10 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %6, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vim2m_q_data* @get_q_data(%struct.vim2m_ctx* %10, i32 %13)
  store %struct.vim2m_q_data* %14, %struct.vim2m_q_data** %7, align 8
  %15 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %16 = icmp ne %struct.vim2m_q_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %22 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.vim2m_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.vim2m_q_data* @get_q_data(%struct.vim2m_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
