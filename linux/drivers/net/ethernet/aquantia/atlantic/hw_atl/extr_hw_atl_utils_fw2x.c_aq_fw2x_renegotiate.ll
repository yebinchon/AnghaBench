; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_renegotiate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_renegotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_FW2X_MPI_CONTROL2_ADDR = common dso_local global i32 0, align 4
@CTRL_FORCE_RECONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @aq_fw2x_renegotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_fw2x_renegotiate(%struct.aq_hw_s* %0) #0 {
  %2 = alloca %struct.aq_hw_s*, align 8
  %3 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %2, align 8
  %4 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %5 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %6 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @CTRL_FORCE_RECONNECT, align 4
  %8 = call i32 @BIT(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %12 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %11, i32 %12, i32 %13)
  ret i32 0
}

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
