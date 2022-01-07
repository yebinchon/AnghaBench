; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_get_vf_stats_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_get_vf_stats_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.octeon_mbox_cmd = type { i32 }
%struct.oct_vf_stats_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %struct.octeon_mbox_cmd*, i8*)* @cn23xx_get_vf_stats_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_get_vf_stats_callback(%struct.octeon_device* %0, %struct.octeon_mbox_cmd* %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.octeon_mbox_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.oct_vf_stats_ctx*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.octeon_mbox_cmd* %1, %struct.octeon_mbox_cmd** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.oct_vf_stats_ctx*
  store %struct.oct_vf_stats_ctx* %9, %struct.oct_vf_stats_ctx** %7, align 8
  %10 = load %struct.oct_vf_stats_ctx*, %struct.oct_vf_stats_ctx** %7, align 8
  %11 = getelementptr inbounds %struct.oct_vf_stats_ctx, %struct.oct_vf_stats_ctx* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memcpy(i32 %12, i32 %15, i32 4)
  %17 = load %struct.oct_vf_stats_ctx*, %struct.oct_vf_stats_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.oct_vf_stats_ctx, %struct.oct_vf_stats_ctx* %17, i32 0, i32 0
  %19 = call i32 @atomic_set(i32* %18, i32 1)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
