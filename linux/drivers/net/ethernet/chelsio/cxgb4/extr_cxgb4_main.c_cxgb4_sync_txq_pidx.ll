; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_sync_txq_pidx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_sync_txq_pidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SGE_PF_KDOORBELL_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_sync_txq_pidx(%struct.net_device* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.adapter* @netdev2adap(%struct.net_device* %15)
  store %struct.adapter* %16, %struct.adapter** %9, align 8
  %17 = load %struct.adapter*, %struct.adapter** %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @read_eq_indices(%struct.adapter* %17, i64 %18, i64* %10, i64* %11)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %65

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %13, align 8
  br label %41

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = load %struct.adapter*, %struct.adapter** %9, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @is_t4(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @PIDX_V(i64 %49)
  store i32 %50, i32* %14, align 4
  br label %54

51:                                               ; preds = %41
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @PIDX_T5_V(i64 %52)
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = call i32 (...) @wmb()
  %56 = load %struct.adapter*, %struct.adapter** %9, align 8
  %57 = load i32, i32* @SGE_PF_KDOORBELL_A, align 4
  %58 = call i32 @MYPF_REG(i32 %57)
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @QID_V(i64 %59)
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @t4_write_reg(%struct.adapter* %56, i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %54, %23
  br label %65

65:                                               ; preds = %64, %22
  %66 = load i32, i32* %12, align 4
  ret i32 %66
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @read_eq_indices(%struct.adapter*, i64, i64*, i64*) #1

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @PIDX_V(i64) #1

declare dso_local i32 @PIDX_T5_V(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @QID_V(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
