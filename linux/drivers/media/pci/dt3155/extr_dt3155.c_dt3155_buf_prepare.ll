; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.dt3155_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @dt3155_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3155_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.dt3155_priv*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %4 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.dt3155_priv* @vb2_get_drv_priv(i32 %6)
  store %struct.dt3155_priv* %7, %struct.dt3155_priv** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %10 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %13 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %8, i32 0, i32 %15)
  ret i32 0
}

declare dso_local %struct.dt3155_priv* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
