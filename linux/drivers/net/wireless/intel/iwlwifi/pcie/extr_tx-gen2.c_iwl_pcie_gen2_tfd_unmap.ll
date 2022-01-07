; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_tfd_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_tfd_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_cmd_meta = type { i32 }
%struct.iwl_tfh_tfd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_trans_pcie = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Too many chunks: %i\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_cmd_meta*, %struct.iwl_tfh_tfd*)* @iwl_pcie_gen2_tfd_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_gen2_tfd_unmap(%struct.iwl_trans* %0, %struct.iwl_cmd_meta* %1, %struct.iwl_tfh_tfd* %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_cmd_meta*, align 8
  %6 = alloca %struct.iwl_tfh_tfd*, align 8
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_cmd_meta* %1, %struct.iwl_cmd_meta** %5, align 8
  store %struct.iwl_tfh_tfd* %2, %struct.iwl_tfh_tfd** %6, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %7, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %13 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %6, align 8
  %14 = call i32 @iwl_pcie_gen2_get_num_tbs(%struct.iwl_trans* %12, %struct.iwl_tfh_tfd* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @IWL_ERR(%struct.iwl_trans* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %92

24:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %25

25:                                               ; preds = %86, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %25
  %30 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %29
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le64_to_cpu(i32 %48)
  %50 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @dma_unmap_page(i32 %40, i32 %49, i32 %58, i32 %59)
  br label %85

61:                                               ; preds = %29
  %62 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %6, align 8
  %66 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le64_to_cpu(i32 %72)
  %74 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %6, align 8
  %75 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = load i32, i32* @DMA_TO_DEVICE, align 4
  %84 = call i32 @dma_unmap_single(i32 %64, i32 %73, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %61, %37
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %25

89:                                               ; preds = %25
  %90 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %6, align 8
  %91 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %20
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_gen2_get_num_tbs(%struct.iwl_trans*, %struct.iwl_tfh_tfd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
