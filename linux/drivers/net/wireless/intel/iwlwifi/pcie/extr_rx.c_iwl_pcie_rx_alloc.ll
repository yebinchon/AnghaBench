; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_trans_pcie = type { %struct.iwl_rxq*, i64, i32*, %struct.iwl_rb_allocator }
%struct.iwl_rxq = type { i32 }
%struct.iwl_rb_allocator = type { i32 }

@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_rx_alloc(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca %struct.iwl_rb_allocator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.iwl_rxq*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %4, align 8
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 3
  store %struct.iwl_rb_allocator* %13, %struct.iwl_rb_allocator** %5, align 8
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %20 = icmp sge i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i64 4, i64 4
  store i64 %22, i64* %8, align 8
  %23 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %23, i32 0, i32 0
  %25 = load %struct.iwl_rxq*, %struct.iwl_rxq** %24, align 8
  %26 = call i64 @WARN_ON(%struct.iwl_rxq* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %131

31:                                               ; preds = %1
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.iwl_rxq* @kcalloc(i64 %34, i32 4, i32 %35)
  %37 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %37, i32 0, i32 0
  store %struct.iwl_rxq* %36, %struct.iwl_rxq** %38, align 8
  %39 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %39, i32 0, i32 0
  %41 = load %struct.iwl_rxq*, %struct.iwl_rxq** %40, align 8
  %42 = icmp ne %struct.iwl_rxq* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %131

46:                                               ; preds = %31
  %47 = load %struct.iwl_rb_allocator*, %struct.iwl_rb_allocator** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_rb_allocator, %struct.iwl_rb_allocator* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %53, %56
  %58 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %59 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %58, i32 0, i32 1
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @dma_alloc_coherent(i32 %52, i64 %57, i64* %59, i32 %60)
  %62 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %65 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %46
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %100

71:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %96, %71
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %76 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %72
  %80 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %81 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %80, i32 0, i32 0
  %82 = load %struct.iwl_rxq*, %struct.iwl_rxq** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %82, i64 %84
  store %struct.iwl_rxq* %85, %struct.iwl_rxq** %9, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.iwl_rxq*, %struct.iwl_rxq** %9, align 8
  %88 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %90 = load %struct.iwl_rxq*, %struct.iwl_rxq** %9, align 8
  %91 = call i32 @iwl_pcie_alloc_rxq_dma(%struct.iwl_trans* %89, %struct.iwl_rxq* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  br label %100

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %72

99:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %131

100:                                              ; preds = %94, %68
  %101 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %102 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %107 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %111 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = mul i64 %109, %112
  %114 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %115 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %118 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @dma_free_coherent(i32 %108, i64 %113, i32* %116, i64 %119)
  %121 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %122 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  %123 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %124 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %105, %100
  %126 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %127 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %126, i32 0, i32 0
  %128 = load %struct.iwl_rxq*, %struct.iwl_rxq** %127, align 8
  %129 = call i32 @kfree(%struct.iwl_rxq* %128)
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %125, %99, %43, %28
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(%struct.iwl_rxq*) #1

declare dso_local %struct.iwl_rxq* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @dma_alloc_coherent(i32, i64, i64*, i32) #1

declare dso_local i32 @iwl_pcie_alloc_rxq_dma(%struct.iwl_trans*, %struct.iwl_rxq*) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i64) #1

declare dso_local i32 @kfree(%struct.iwl_rxq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
