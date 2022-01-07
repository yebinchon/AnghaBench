; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_disable_external_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_disable_external_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmDMA_QM_0_GLBL_CFG0 = common dso_local global i32 0, align 4
@mmDMA_QM_1_GLBL_CFG0 = common dso_local global i32 0, align 4
@mmDMA_QM_2_GLBL_CFG0 = common dso_local global i32 0, align 4
@mmDMA_QM_3_GLBL_CFG0 = common dso_local global i32 0, align 4
@mmDMA_QM_4_GLBL_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_disable_external_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_disable_external_queues(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %3 = load i32, i32* @mmDMA_QM_0_GLBL_CFG0, align 4
  %4 = call i32 @WREG32(i32 %3, i32 0)
  %5 = load i32, i32* @mmDMA_QM_1_GLBL_CFG0, align 4
  %6 = call i32 @WREG32(i32 %5, i32 0)
  %7 = load i32, i32* @mmDMA_QM_2_GLBL_CFG0, align 4
  %8 = call i32 @WREG32(i32 %7, i32 0)
  %9 = load i32, i32* @mmDMA_QM_3_GLBL_CFG0, align 4
  %10 = call i32 @WREG32(i32 %9, i32 0)
  %11 = load i32, i32* @mmDMA_QM_4_GLBL_CFG0, align 4
  %12 = call i32 @WREG32(i32 %11, i32 0)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
