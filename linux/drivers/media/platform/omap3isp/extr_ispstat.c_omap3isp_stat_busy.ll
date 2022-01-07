; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32, i64 }

@ISPSTAT_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_stat_busy(%struct.ispstat* %0) #0 {
  %2 = alloca %struct.ispstat*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %2, align 8
  %3 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %4 = call i32 @omap3isp_stat_pcr_busy(%struct.ispstat* %3)
  %5 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %6 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = or i32 %4, %7
  %9 = load %struct.ispstat*, %struct.ispstat** %2, align 8
  %10 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ISPSTAT_DISABLED, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = or i32 %8, %14
  ret i32 %15
}

declare dso_local i32 @omap3isp_stat_pcr_busy(%struct.ispstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
