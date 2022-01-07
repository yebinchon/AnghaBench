; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_sync_txq_pidx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_sync_txq_pidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sge_txq = type { i64, i64, i32, i64, i64, i64 }

@SGE_PF_KDOORBELL_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DB drop recovery failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_txq*)* @sync_txq_pidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_txq_pidx(%struct.adapter* %0, %struct.sge_txq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_txq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %4, align 8
  %10 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %11 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %15 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @read_eq_indices(%struct.adapter* %13, i64 %16, i64* %5, i64* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %75

21:                                               ; preds = %2
  %22 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %23 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %21
  %28 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %29 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %35 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %8, align 8
  br label %49

39:                                               ; preds = %27
  %40 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %41 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %46 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %39, %33
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @is_t4(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @PIDX_V(i64 %57)
  store i32 %58, i32* %9, align 4
  br label %62

59:                                               ; preds = %49
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @PIDX_T5_V(i64 %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @wmb()
  %64 = load %struct.adapter*, %struct.adapter** %3, align 8
  %65 = load i32, i32* @SGE_PF_KDOORBELL_A, align 4
  %66 = call i32 @MYPF_REG(i32 %65)
  %67 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %68 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @QID_V(i64 %69)
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @t4_write_reg(%struct.adapter* %64, i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %62, %21
  br label %75

75:                                               ; preds = %74, %20
  %76 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %77 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %79 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %81 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock_irq(i32* %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load %struct.adapter*, %struct.adapter** %3, align 8
  %87 = call i32 @CH_WARN(%struct.adapter* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %75
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @read_eq_indices(%struct.adapter*, i64, i64*, i64*) #1

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @PIDX_V(i64) #1

declare dso_local i32 @PIDX_T5_V(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @QID_V(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
