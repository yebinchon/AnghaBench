; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_FW2X_MPI_CONTROL2_ADDR = common dso_local global i32 0, align 4
@CAPS_HI_STATISTICS = common dso_local global i32 0, align 4
@aq_fw2x_state2_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @aq_fw2x_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_fw2x_update_stats(%struct.aq_hw_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %9 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %10 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CAPS_HI_STATISTICS, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %11, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CAPS_HI_STATISTICS, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = xor i32 %15, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %20 = load i32, i32* @HW_ATL_FW2X_MPI_CONTROL2_ADDR, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @aq_fw2x_state2_get, align 4
  %24 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CAPS_HI_STATISTICS, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %26, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @readx_poll_timeout_atomic(i32 %23, %struct.aq_hw_s* %24, i32 %25, i32 %32, i32 1, i32 10000)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %40 = call i32 @hw_atl_utils_update_stats(%struct.aq_hw_s* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %36
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i32, i32, i32, i32) #1

declare dso_local i32 @hw_atl_utils_update_stats(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
