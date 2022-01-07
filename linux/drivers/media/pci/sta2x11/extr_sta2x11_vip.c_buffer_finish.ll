; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_buffer_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_buffer_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.sta2x11_vip = type { i32 }
%struct.vip_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @buffer_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_finish(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.sta2x11_vip*, align 8
  %5 = alloca %struct.vip_buffer*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %7 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %6)
  store %struct.vb2_v4l2_buffer* %7, %struct.vb2_v4l2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sta2x11_vip* @vb2_get_drv_priv(i32 %10)
  store %struct.sta2x11_vip* %11, %struct.sta2x11_vip** %4, align 8
  %12 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %13 = call %struct.vip_buffer* @to_vip_buffer(%struct.vb2_v4l2_buffer* %12)
  store %struct.vip_buffer* %13, %struct.vip_buffer** %5, align 8
  %14 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %4, align 8
  %15 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.vip_buffer*, %struct.vip_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.vip_buffer, %struct.vip_buffer* %17, i32 0, i32 0
  %19 = call i32 @list_del_init(i32* %18)
  %20 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %4, align 8
  %21 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @vb2_is_streaming(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %4, align 8
  %30 = call i32 @vip_active_buf_next(%struct.sta2x11_vip* %29)
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.sta2x11_vip* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.vip_buffer* @to_vip_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @vb2_is_streaming(i32) #1

declare dso_local i32 @vip_active_buf_next(%struct.sta2x11_vip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
