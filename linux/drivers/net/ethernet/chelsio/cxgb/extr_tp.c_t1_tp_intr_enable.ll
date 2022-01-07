; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_t1_tp_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_t1_tp_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.petp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@A_PL_ENABLE = common dso_local global i64 0, align 8
@A_TP_INT_ENABLE = common dso_local global i64 0, align 8
@F_PL_INTR_TP = common dso_local global i32 0, align 4
@FPGA_PCIX_INTERRUPT_TP = common dso_local global i32 0, align 4
@FPGA_TP_ADDR_INTERRUPT_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t1_tp_intr_enable(%struct.petp* %0) #0 {
  %2 = alloca %struct.petp*, align 8
  %3 = alloca i32, align 4
  store %struct.petp* %0, %struct.petp** %2, align 8
  %4 = load %struct.petp*, %struct.petp** %2, align 8
  %5 = getelementptr inbounds %struct.petp, %struct.petp* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @A_PL_ENABLE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.petp*, %struct.petp** %2, align 8
  %13 = getelementptr inbounds %struct.petp, %struct.petp* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @A_TP_INT_ENABLE, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 0, i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @F_PL_INTR_TP, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.petp*, %struct.petp** %2, align 8
  %24 = getelementptr inbounds %struct.petp, %struct.petp* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @A_PL_ENABLE, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %22, i64 %29)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
