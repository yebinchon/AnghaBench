; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.dt3155_priv = type { i32, %struct.vb2_v4l2_buffer*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @dt3155_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt3155_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.dt3155_priv*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %5 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %6 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %5)
  store %struct.vb2_v4l2_buffer* %6, %struct.vb2_v4l2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.dt3155_priv* @vb2_get_drv_priv(i32 %9)
  store %struct.dt3155_priv* %10, %struct.dt3155_priv** %4, align 8
  %11 = load %struct.dt3155_priv*, %struct.dt3155_priv** %4, align 8
  %12 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.dt3155_priv*, %struct.dt3155_priv** %4, align 8
  %15 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %14, i32 0, i32 1
  %16 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %15, align 8
  %17 = icmp ne %struct.vb2_v4l2_buffer* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %19, i32 0, i32 0
  %21 = load %struct.dt3155_priv*, %struct.dt3155_priv** %4, align 8
  %22 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %21, i32 0, i32 2
  %23 = call i32 @list_add_tail(i32* %20, i32* %22)
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %26 = load %struct.dt3155_priv*, %struct.dt3155_priv** %4, align 8
  %27 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %26, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* %25, %struct.vb2_v4l2_buffer** %27, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.dt3155_priv*, %struct.dt3155_priv** %4, align 8
  %30 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.dt3155_priv* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
