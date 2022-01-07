; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_csi2_ppi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_csi2_ppi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, i32 }

@CAL_GEN_DISABLE = common dso_local global i32 0, align 4
@CAL_CSI2_PPI_CTRL_IF_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_ctx*)* @csi2_ppi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_ppi_disable(%struct.cal_ctx* %0) #0 {
  %2 = alloca %struct.cal_ctx*, align 8
  store %struct.cal_ctx* %0, %struct.cal_ctx** %2, align 8
  %3 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @CAL_CSI2_PPI_CTRL(i32 %8)
  %10 = load i32, i32* @CAL_GEN_DISABLE, align 4
  %11 = load i32, i32* @CAL_CSI2_PPI_CTRL_IF_EN_MASK, align 4
  %12 = call i32 @reg_write_field(i32 %5, i32 %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @reg_write_field(i32, i32, i32, i32) #1

declare dso_local i32 @CAL_CSI2_PPI_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
