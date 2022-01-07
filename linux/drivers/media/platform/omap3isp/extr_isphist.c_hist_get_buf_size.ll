; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_get_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_get_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap3isp_hist_config = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap3isp_hist_config*)* @hist_get_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_get_buf_size(%struct.omap3isp_hist_config* %0) #0 {
  %2 = alloca %struct.omap3isp_hist_config*, align 8
  store %struct.omap3isp_hist_config* %0, %struct.omap3isp_hist_config** %2, align 8
  %3 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %2, align 8
  %4 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @OMAP3ISP_HIST_MEM_SIZE_BINS(i32 %5)
  %7 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %2, align 8
  %8 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %6, %9
  ret i32 %10
}

declare dso_local i32 @OMAP3ISP_HIST_MEM_SIZE_BINS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
