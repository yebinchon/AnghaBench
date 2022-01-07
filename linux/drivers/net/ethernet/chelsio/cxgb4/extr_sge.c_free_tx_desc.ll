; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_free_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_free_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.device* }
%struct.device = type { i32 }
%struct.sge_txq = type { i32, i32, %struct.tx_sw_desc* }
%struct.tx_sw_desc = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_tx_desc(%struct.adapter* %0, %struct.sge_txq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tx_sw_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %13 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %11, align 8
  %18 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %19 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %18, i32 0, i32 2
  %20 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %20, i64 %22
  store %struct.tx_sw_desc* %23, %struct.tx_sw_desc** %9, align 8
  br label %24

24:                                               ; preds = %66, %4
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %30 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.device*, %struct.device** %11, align 8
  %38 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %39 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %42 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %45 = call i32 @unmap_sgl(%struct.device* %37, i32* %40, i32 %43, %struct.sge_txq* %44)
  br label %46

46:                                               ; preds = %36, %33
  %47 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %48 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dev_consume_skb_any(i32* %49)
  %51 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %52 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %28
  %54 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %55 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %54, i32 1
  store %struct.tx_sw_desc* %55, %struct.tx_sw_desc** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %59 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  %63 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %64 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %63, i32 0, i32 2
  %65 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %64, align 8
  store %struct.tx_sw_desc* %65, %struct.tx_sw_desc** %9, align 8
  br label %66

66:                                               ; preds = %62, %53
  br label %24

67:                                               ; preds = %24
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %70 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  ret void
}

declare dso_local i32 @unmap_sgl(%struct.device*, i32*, i32, %struct.sge_txq*) #1

declare dso_local i32 @dev_consume_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
