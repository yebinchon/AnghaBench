; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_find_oldest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_find_oldest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat_buffer = type { i32 }
%struct.ispstat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ispstat_buffer* (%struct.ispstat*)* @isp_stat_buf_find_oldest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ispstat_buffer* @isp_stat_buf_find_oldest(%struct.ispstat* %0) #0 {
  %2 = alloca %struct.ispstat*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %2, align 8
  %3 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %4 = call %struct.ispstat_buffer* @__isp_stat_buf_find(%struct.ispstat* %3, i32 0)
  ret %struct.ispstat_buffer* %4
}

declare dso_local %struct.ispstat_buffer* @__isp_stat_buf_find(%struct.ispstat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
