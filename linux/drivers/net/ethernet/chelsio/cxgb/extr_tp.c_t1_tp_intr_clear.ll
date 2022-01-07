; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_t1_tp_intr_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_t1_tp_intr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.petp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@A_TP_INT_CAUSE = common dso_local global i64 0, align 8
@F_PL_INTR_TP = common dso_local global i32 0, align 4
@A_PL_CAUSE = common dso_local global i64 0, align 8
@FPGA_PCIX_INTERRUPT_TP = common dso_local global i32 0, align 4
@FPGA_TP_ADDR_INTERRUPT_CAUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t1_tp_intr_clear(%struct.petp* %0) #0 {
  %2 = alloca %struct.petp*, align 8
  store %struct.petp* %0, %struct.petp** %2, align 8
  %3 = load %struct.petp*, %struct.petp** %2, align 8
  %4 = getelementptr inbounds %struct.petp, %struct.petp* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @A_TP_INT_CAUSE, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 -1, i64 %9)
  %11 = load i32, i32* @F_PL_INTR_TP, align 4
  %12 = load %struct.petp*, %struct.petp** %2, align 8
  %13 = getelementptr inbounds %struct.petp, %struct.petp* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @A_PL_CAUSE, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %11, i64 %18)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
