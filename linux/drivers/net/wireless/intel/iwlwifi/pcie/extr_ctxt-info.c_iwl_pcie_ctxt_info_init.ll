; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_ctxt-info.c_iwl_pcie_ctxt_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_ctxt-info.c_iwl_pcie_ctxt_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.fw_img = type { i32 }
%struct.iwl_trans_pcie = type { i32, i64, i32, %struct.iwl_context_info*, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.iwl_context_info = type { i32, %struct.TYPE_10__, %struct.iwl_context_info_rbd_cfg, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i8* }
%struct.iwl_context_info_rbd_cfg = type { i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSR_HW_REV = common dso_local global i32 0, align 4
@IWL_CTXT_INFO_RB_SIZE_2K = common dso_local global i32 0, align 4
@IWL_CTXT_INFO_RB_SIZE_4K = common dso_local global i32 0, align 4
@IWL_CTXT_INFO_RB_SIZE_8K = common dso_local global i32 0, align 4
@IWL_CTXT_INFO_RB_SIZE_12K = common dso_local global i32 0, align 4
@MQ_RX_TABLE_SIZE = common dso_local global i32 0, align 4
@IWL_CTXT_INFO_TFD_FORMAT_LONG = common dso_local global i32 0, align 4
@IWL_CTXT_INFO_RB_CB_SIZE_POS = common dso_local global i32 0, align 4
@IWL_CTXT_INFO_RB_SIZE_POS = common dso_local global i32 0, align 4
@IWL_CMD_QUEUE_SIZE = common dso_local global i32 0, align 4
@CSR_CTXT_INFO_BA = common dso_local global i32 0, align 4
@UREG_CPU_INIT_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_ctxt_info_init(%struct.iwl_trans* %0, %struct.fw_img* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.fw_img*, align 8
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  %7 = alloca %struct.iwl_context_info*, align 8
  %8 = alloca %struct.iwl_context_info_rbd_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.fw_img* %1, %struct.fw_img** %5, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %13 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %12)
  store %struct.iwl_trans_pcie* %13, %struct.iwl_trans_pcie** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %17, i32 0, i32 2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.iwl_context_info* @dma_alloc_coherent(i32 %16, i32 80, i32* %18, i32 %19)
  store %struct.iwl_context_info* %20, %struct.iwl_context_info** %7, align 8
  %21 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %22 = icmp ne %struct.iwl_context_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %161

26:                                               ; preds = %2
  %27 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_context_info, %struct.iwl_context_info* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %31 = load i32, i32* @CSR_HW_REV, align 4
  %32 = call i64 @iwl_read32(%struct.iwl_trans* %30, i32 %31)
  %33 = trunc i64 %32 to i32
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_context_info, %struct.iwl_context_info* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = call i8* @cpu_to_le16(i32 20)
  %39 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_context_info, %struct.iwl_context_info* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %43 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %53 [
    i32 130, label %45
    i32 129, label %47
    i32 128, label %49
    i32 131, label %51
  ]

45:                                               ; preds = %26
  %46 = load i32, i32* @IWL_CTXT_INFO_RB_SIZE_2K, align 4
  store i32 %46, i32* %10, align 4
  br label %56

47:                                               ; preds = %26
  %48 = load i32, i32* @IWL_CTXT_INFO_RB_SIZE_4K, align 4
  store i32 %48, i32* %10, align 4
  br label %56

49:                                               ; preds = %26
  %50 = load i32, i32* @IWL_CTXT_INFO_RB_SIZE_8K, align 4
  store i32 %50, i32* %10, align 4
  br label %56

51:                                               ; preds = %26
  %52 = load i32, i32* @IWL_CTXT_INFO_RB_SIZE_12K, align 4
  store i32 %52, i32* %10, align 4
  br label %56

53:                                               ; preds = %26
  %54 = call i32 @WARN_ON(i32 1)
  %55 = load i32, i32* @IWL_CTXT_INFO_RB_SIZE_4K, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %51, %49, %47, %45
  %57 = load i32, i32* @MQ_RX_TABLE_SIZE, align 4
  %58 = call i32 @RX_QUEUE_CB_SIZE(i32 %57)
  %59 = icmp sgt i32 %58, 15
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUILD_BUG_ON(i32 %60)
  %62 = load i32, i32* @IWL_CTXT_INFO_TFD_FORMAT_LONG, align 4
  %63 = load i32, i32* @MQ_RX_TABLE_SIZE, align 4
  %64 = call i32 @RX_QUEUE_CB_SIZE(i32 %63)
  %65 = load i32, i32* @IWL_CTXT_INFO_RB_CB_SIZE_POS, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %62, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @IWL_CTXT_INFO_RB_SIZE_POS, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %75 = getelementptr inbounds %struct.iwl_context_info, %struct.iwl_context_info* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %78 = getelementptr inbounds %struct.iwl_context_info, %struct.iwl_context_info* %77, i32 0, i32 2
  store %struct.iwl_context_info_rbd_cfg* %78, %struct.iwl_context_info_rbd_cfg** %8, align 8
  %79 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %80 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %79, i32 0, i32 5
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_le64(i32 %83)
  %85 = load %struct.iwl_context_info_rbd_cfg*, %struct.iwl_context_info_rbd_cfg** %8, align 8
  %86 = getelementptr inbounds %struct.iwl_context_info_rbd_cfg, %struct.iwl_context_info_rbd_cfg* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %88 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %87, i32 0, i32 5
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_le64(i32 %91)
  %93 = load %struct.iwl_context_info_rbd_cfg*, %struct.iwl_context_info_rbd_cfg** %8, align 8
  %94 = getelementptr inbounds %struct.iwl_context_info_rbd_cfg, %struct.iwl_context_info_rbd_cfg* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %96 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %95, i32 0, i32 5
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_le64(i32 %99)
  %101 = load %struct.iwl_context_info_rbd_cfg*, %struct.iwl_context_info_rbd_cfg** %8, align 8
  %102 = getelementptr inbounds %struct.iwl_context_info_rbd_cfg, %struct.iwl_context_info_rbd_cfg* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %104 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %103, i32 0, i32 4
  %105 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %104, align 8
  %106 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %107 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %105, i64 %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @cpu_to_le64(i32 %112)
  %114 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %115 = getelementptr inbounds %struct.iwl_context_info, %struct.iwl_context_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load i32, i32* @IWL_CMD_QUEUE_SIZE, align 4
  %118 = call i32 @TFD_QUEUE_CB_SIZE(i32 %117)
  %119 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %120 = getelementptr inbounds %struct.iwl_context_info, %struct.iwl_context_info* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %123 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %124 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %125 = getelementptr inbounds %struct.iwl_context_info, %struct.iwl_context_info* %124, i32 0, i32 0
  %126 = call i32 @iwl_pcie_init_fw_sec(%struct.iwl_trans* %122, %struct.fw_img* %123, i32* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %56
  %130 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %131 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %134 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %135 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @dma_free_coherent(i32 %132, i32 80, %struct.iwl_context_info* %133, i32 %136)
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %3, align 4
  br label %161

139:                                              ; preds = %56
  %140 = load %struct.iwl_context_info*, %struct.iwl_context_info** %7, align 8
  %141 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %142 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %141, i32 0, i32 3
  store %struct.iwl_context_info* %140, %struct.iwl_context_info** %142, align 8
  %143 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %144 = call i32 @iwl_enable_fw_load_int_ctx_info(%struct.iwl_trans* %143)
  %145 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %146 = call i64 @iwl_pcie_dbg_on(%struct.iwl_trans* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %150 = call i32 @iwl_pcie_apply_destination(%struct.iwl_trans* %149)
  br label %151

151:                                              ; preds = %148, %139
  %152 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %153 = load i32, i32* @CSR_CTXT_INFO_BA, align 4
  %154 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %155 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @iwl_write64(%struct.iwl_trans* %152, i32 %153, i32 %156)
  %158 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %159 = load i32, i32* @UREG_CPU_INIT_RUN, align 4
  %160 = call i32 @iwl_write_prph(%struct.iwl_trans* %158, i32 %159, i32 1)
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %151, %129, %23
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local %struct.iwl_context_info* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @RX_QUEUE_CB_SIZE(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @TFD_QUEUE_CB_SIZE(i32) #1

declare dso_local i32 @iwl_pcie_init_fw_sec(%struct.iwl_trans*, %struct.fw_img*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.iwl_context_info*, i32) #1

declare dso_local i32 @iwl_enable_fw_load_int_ctx_info(%struct.iwl_trans*) #1

declare dso_local i64 @iwl_pcie_dbg_on(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_apply_destination(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write64(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
