; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_disable_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_disable_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VPE_INT0_ENABLE0_CLR = common dso_local global i32 0, align 4
@VPE_INT0_ENABLE1_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*)* @disable_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_irqs(%struct.vpe_ctx* %0) #0 {
  %2 = alloca %struct.vpe_ctx*, align 8
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %2, align 8
  %3 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load i32, i32* @VPE_INT0_ENABLE0_CLR, align 4
  %7 = call i32 @write_reg(%struct.TYPE_2__* %5, i32 %6, i32 -1)
  %8 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* @VPE_INT0_ENABLE1_CLR, align 4
  %12 = call i32 @write_reg(%struct.TYPE_2__* %10, i32 %11, i32 -1)
  %13 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vpdma_enable_list_complete_irq(i32 %17, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @write_reg(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @vpdma_enable_list_complete_irq(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
