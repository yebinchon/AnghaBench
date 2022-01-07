; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_enable_txq_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_enable_txq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i32, i64, i64, i32 }

@SGE_PF_KDOORBELL_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_txq*)* @enable_txq_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_txq_db(%struct.adapter* %0, %struct.sge_txq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_txq*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %4, align 8
  %5 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %6 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %9 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = call i32 (...) @wmb()
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = load i32, i32* @SGE_PF_KDOORBELL_A, align 4
  %16 = call i32 @MYPF_REG(i32 %15)
  %17 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %18 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @QID_V(i32 %19)
  %21 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %22 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @PIDX_V(i64 %23)
  %25 = or i32 %20, %24
  %26 = call i32 @t4_write_reg(%struct.adapter* %14, i32 %16, i32 %25)
  %27 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %28 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %12, %2
  %30 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %31 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %33 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @QID_V(i32) #1

declare dso_local i32 @PIDX_V(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
