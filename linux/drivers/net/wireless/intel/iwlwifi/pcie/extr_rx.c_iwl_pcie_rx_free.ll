; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_trans_pcie = type { %struct.iwl_rxq*, i64, i32*, %struct.iwl_rb_allocator }
%struct.iwl_rxq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_rb_allocator = type { i32 }

@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Free NULL rx context\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_rx_free(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca %struct.iwl_rb_allocator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwl_rxq*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %3, align 8
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 3
  store %struct.iwl_rb_allocator* %11, %struct.iwl_rb_allocator** %4, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %18 = icmp sge i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i64 4, i64 4
  store i64 %20, i64* %6, align 8
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %21, i32 0, i32 0
  %23 = load %struct.iwl_rxq*, %struct.iwl_rxq** %22, align 8
  %24 = icmp ne %struct.iwl_rxq* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %27 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %94

28:                                               ; preds = %1
  %29 = load %struct.iwl_rb_allocator*, %struct.iwl_rb_allocator** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_rb_allocator, %struct.iwl_rb_allocator* %29, i32 0, i32 0
  %31 = call i32 @cancel_work_sync(i32* %30)
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %33 = call i32 @iwl_pcie_free_rbs_pool(%struct.iwl_trans* %32)
  %34 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %28
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %40 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %44 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %42, %45
  %47 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dma_free_coherent(i32 %41, i64 %46, i32* %49, i64 %52)
  %54 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %38, %28
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %63 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %59
  %67 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %68 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %67, i32 0, i32 0
  %69 = load %struct.iwl_rxq*, %struct.iwl_rxq** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %69, i64 %71
  store %struct.iwl_rxq* %72, %struct.iwl_rxq** %7, align 8
  %73 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %74 = load %struct.iwl_rxq*, %struct.iwl_rxq** %7, align 8
  %75 = call i32 @iwl_pcie_free_rxq_dma(%struct.iwl_trans* %73, %struct.iwl_rxq* %74)
  %76 = load %struct.iwl_rxq*, %struct.iwl_rxq** %7, align 8
  %77 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %66
  %82 = load %struct.iwl_rxq*, %struct.iwl_rxq** %7, align 8
  %83 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %82, i32 0, i32 0
  %84 = call i32 @netif_napi_del(%struct.TYPE_4__* %83)
  br label %85

85:                                               ; preds = %81, %66
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %59

89:                                               ; preds = %59
  %90 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %91 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %90, i32 0, i32 0
  %92 = load %struct.iwl_rxq*, %struct.iwl_rxq** %91, align 8
  %93 = call i32 @kfree(%struct.iwl_rxq* %92)
  br label %94

94:                                               ; preds = %89, %25
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @iwl_pcie_free_rbs_pool(%struct.iwl_trans*) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i64) #1

declare dso_local i32 @iwl_pcie_free_rxq_dma(%struct.iwl_trans*, %struct.iwl_rxq*) #1

declare dso_local i32 @netif_napi_del(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.iwl_rxq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
