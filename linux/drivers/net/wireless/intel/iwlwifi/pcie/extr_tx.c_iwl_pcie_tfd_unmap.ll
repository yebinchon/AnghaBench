; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tfd_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tfd_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_cmd_meta = type { i32 }
%struct.iwl_txq = type { i32 }
%struct.iwl_trans_pcie = type { i32 }
%struct.iwl_tfh_tfd = type { i64 }
%struct.iwl_tfd = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"Too many chunks: %i\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_cmd_meta*, %struct.iwl_txq*, i32)* @iwl_pcie_tfd_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_tfd_unmap(%struct.iwl_trans* %0, %struct.iwl_cmd_meta* %1, %struct.iwl_txq* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_cmd_meta*, align 8
  %7 = alloca %struct.iwl_txq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_trans_pcie*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.iwl_tfh_tfd*, align 8
  %14 = alloca %struct.iwl_tfd*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.iwl_cmd_meta* %1, %struct.iwl_cmd_meta** %6, align 8
  store %struct.iwl_txq* %2, %struct.iwl_txq** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %16 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %15)
  store %struct.iwl_trans_pcie* %16, %struct.iwl_trans_pcie** %9, align 8
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %18 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @iwl_pcie_get_tfd(%struct.iwl_trans* %17, %struct.iwl_txq* %18, i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @iwl_pcie_tfd_get_num_tbs(%struct.iwl_trans* %21, i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %9, align 8
  %26 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @IWL_ERR(%struct.iwl_trans* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %97

33:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %75, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %34
  %39 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %6, align 8
  %40 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @iwl_pcie_tfd_tb_get_addr(%struct.iwl_trans* %50, i8* %51, i32 %52)
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @iwl_pcie_tfd_tb_get_len(%struct.iwl_trans* %54, i8* %55, i32 %56)
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_page(i32 %49, i32 %53, i32 %57, i32 %58)
  br label %74

60:                                               ; preds = %38
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @iwl_pcie_tfd_tb_get_addr(%struct.iwl_trans* %64, i8* %65, i32 %66)
  %68 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @iwl_pcie_tfd_tb_get_len(%struct.iwl_trans* %68, i8* %69, i32 %70)
  %72 = load i32, i32* @DMA_TO_DEVICE, align 4
  %73 = call i32 @dma_unmap_single(i32 %63, i32 %67, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %60, %46
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %34

78:                                               ; preds = %34
  %79 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %6, align 8
  %80 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %82 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load i8*, i8** %12, align 8
  %89 = bitcast i8* %88 to %struct.iwl_tfh_tfd*
  store %struct.iwl_tfh_tfd* %89, %struct.iwl_tfh_tfd** %13, align 8
  %90 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %13, align 8
  %91 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %97

92:                                               ; preds = %78
  %93 = load i8*, i8** %12, align 8
  %94 = bitcast i8* %93 to %struct.iwl_tfd*
  store %struct.iwl_tfd* %94, %struct.iwl_tfd** %14, align 8
  %95 = load %struct.iwl_tfd*, %struct.iwl_tfd** %14, align 8
  %96 = getelementptr inbounds %struct.iwl_tfd, %struct.iwl_tfd* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %29, %92, %87
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i8* @iwl_pcie_get_tfd(%struct.iwl_trans*, %struct.iwl_txq*, i32) #1

declare dso_local i32 @iwl_pcie_tfd_get_num_tbs(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @iwl_pcie_tfd_tb_get_addr(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_pcie_tfd_tb_get_len(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
