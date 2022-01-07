; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_tpc_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_tpc_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmTPC0_CFG_TPC_STALL = common dso_local global i32 0, align 4
@TPC0_CFG_TPC_STALL_V_SHIFT = common dso_local global i32 0, align 4
@mmTPC1_CFG_TPC_STALL = common dso_local global i32 0, align 4
@TPC1_CFG_TPC_STALL_V_SHIFT = common dso_local global i32 0, align 4
@mmTPC2_CFG_TPC_STALL = common dso_local global i32 0, align 4
@TPC2_CFG_TPC_STALL_V_SHIFT = common dso_local global i32 0, align 4
@mmTPC3_CFG_TPC_STALL = common dso_local global i32 0, align 4
@TPC3_CFG_TPC_STALL_V_SHIFT = common dso_local global i32 0, align 4
@mmTPC4_CFG_TPC_STALL = common dso_local global i32 0, align 4
@TPC4_CFG_TPC_STALL_V_SHIFT = common dso_local global i32 0, align 4
@mmTPC5_CFG_TPC_STALL = common dso_local global i32 0, align 4
@TPC5_CFG_TPC_STALL_V_SHIFT = common dso_local global i32 0, align 4
@mmTPC6_CFG_TPC_STALL = common dso_local global i32 0, align 4
@TPC6_CFG_TPC_STALL_V_SHIFT = common dso_local global i32 0, align 4
@mmTPC7_CFG_TPC_STALL = common dso_local global i32 0, align 4
@TPC7_CFG_TPC_STALL_V_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_tpc_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_tpc_stall(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %3 = load i32, i32* @mmTPC0_CFG_TPC_STALL, align 4
  %4 = load i32, i32* @TPC0_CFG_TPC_STALL_V_SHIFT, align 4
  %5 = shl i32 1, %4
  %6 = call i32 @WREG32(i32 %3, i32 %5)
  %7 = load i32, i32* @mmTPC1_CFG_TPC_STALL, align 4
  %8 = load i32, i32* @TPC1_CFG_TPC_STALL_V_SHIFT, align 4
  %9 = shl i32 1, %8
  %10 = call i32 @WREG32(i32 %7, i32 %9)
  %11 = load i32, i32* @mmTPC2_CFG_TPC_STALL, align 4
  %12 = load i32, i32* @TPC2_CFG_TPC_STALL_V_SHIFT, align 4
  %13 = shl i32 1, %12
  %14 = call i32 @WREG32(i32 %11, i32 %13)
  %15 = load i32, i32* @mmTPC3_CFG_TPC_STALL, align 4
  %16 = load i32, i32* @TPC3_CFG_TPC_STALL_V_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = call i32 @WREG32(i32 %15, i32 %17)
  %19 = load i32, i32* @mmTPC4_CFG_TPC_STALL, align 4
  %20 = load i32, i32* @TPC4_CFG_TPC_STALL_V_SHIFT, align 4
  %21 = shl i32 1, %20
  %22 = call i32 @WREG32(i32 %19, i32 %21)
  %23 = load i32, i32* @mmTPC5_CFG_TPC_STALL, align 4
  %24 = load i32, i32* @TPC5_CFG_TPC_STALL_V_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = call i32 @WREG32(i32 %23, i32 %25)
  %27 = load i32, i32* @mmTPC6_CFG_TPC_STALL, align 4
  %28 = load i32, i32* @TPC6_CFG_TPC_STALL_V_SHIFT, align 4
  %29 = shl i32 1, %28
  %30 = call i32 @WREG32(i32 %27, i32 %29)
  %31 = load i32, i32* @mmTPC7_CFG_TPC_STALL, align 4
  %32 = load i32, i32* @TPC7_CFG_TPC_STALL_V_SHIFT, align 4
  %33 = shl i32 1, %32
  %34 = call i32 @WREG32(i32 %31, i32 %33)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
