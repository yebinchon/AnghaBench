; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_free_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_free_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.sge_txq = type { i32, i64, i32, %struct.tx_sw_desc* }
%struct.tx_sw_desc = type { i32*, i64 }

@FW_TUNNEL_SGEEC_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_txq*, i32)* @free_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tx_desc(%struct.adapter* %0, %struct.sge_txq* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sge_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_sw_desc*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %8, align 8
  %14 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %15 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = call i64 (...) @need_skb_unmap()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %21 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FW_TUNNEL_SGEEC_START, align 8
  %24 = icmp sge i64 %22, %23
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %29 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %28, i32 0, i32 3
  %30 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %30, i64 %32
  store %struct.tx_sw_desc* %33, %struct.tx_sw_desc** %7, align 8
  br label %34

34:                                               ; preds = %80, %25
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %34
  %39 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %40 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %48 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %53 = call i32 @unmap_skb(i32* %49, %struct.sge_txq* %50, i32 %51, %struct.pci_dev* %52)
  br label %54

54:                                               ; preds = %46, %43
  %55 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %56 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %61 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @dev_consume_skb_any(i32* %62)
  %64 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %65 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %59, %54
  br label %67

67:                                               ; preds = %66, %38
  %68 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %7, align 8
  %69 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %68, i32 1
  store %struct.tx_sw_desc* %69, %struct.tx_sw_desc** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %73 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  %77 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %78 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %77, i32 0, i32 3
  %79 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %78, align 8
  store %struct.tx_sw_desc* %79, %struct.tx_sw_desc** %7, align 8
  br label %80

80:                                               ; preds = %76, %67
  br label %34

81:                                               ; preds = %34
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %84 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  ret void
}

declare dso_local i64 @need_skb_unmap(...) #1

declare dso_local i32 @unmap_skb(i32*, %struct.sge_txq*, i32, %struct.pci_dev*) #1

declare dso_local i32 @dev_consume_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
