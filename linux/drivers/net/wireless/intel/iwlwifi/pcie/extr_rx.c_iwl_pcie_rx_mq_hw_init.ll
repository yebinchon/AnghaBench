; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_mq_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_mq_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_trans_pcie = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@RFH_RXF_DMA_RB_SIZE_2K = common dso_local global i32 0, align 4
@RFH_RXF_DMA_RB_SIZE_4K = common dso_local global i32 0, align 4
@RFH_RXF_DMA_RB_SIZE_8K = common dso_local global i32 0, align 4
@RFH_RXF_DMA_RB_SIZE_12K = common dso_local global i32 0, align 4
@RFH_RXF_DMA_CFG = common dso_local global i32 0, align 4
@RFH_RXF_RXQ_ACTIVE = common dso_local global i32 0, align 4
@RFH_DMA_EN_ENABLE_VAL = common dso_local global i32 0, align 4
@RFH_RXF_DMA_MIN_RB_4_8 = common dso_local global i32 0, align 4
@RFH_RXF_DMA_DROP_TOO_LARGE_MASK = common dso_local global i32 0, align 4
@RFH_RXF_DMA_RBDCB_SIZE_512 = common dso_local global i32 0, align 4
@RFH_GEN_CFG = common dso_local global i32 0, align 4
@RFH_GEN_CFG_RFH_DMA_SNOOP = common dso_local global i32 0, align 4
@DEFAULT_RXQ_NUM = common dso_local global i32 0, align 4
@RFH_GEN_CFG_SERVICE_DMA_SNOOP = common dso_local global i32 0, align 4
@RB_CHUNK_SIZE = common dso_local global i32 0, align 4
@RFH_GEN_CFG_RB_CHUNK_SIZE_64 = common dso_local global i32 0, align 4
@RFH_GEN_CFG_RB_CHUNK_SIZE_128 = common dso_local global i32 0, align 4
@CSR_INT_COALESCING = common dso_local global i32 0, align 4
@IWL_HOST_INT_TIMEOUT_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_rx_mq_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_rx_mq_hw_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %21 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
    i32 131, label %19
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @RFH_RXF_DMA_RB_SIZE_2K, align 4
  store i32 %14, i32* %4, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @RFH_RXF_DMA_RB_SIZE_4K, align 4
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @RFH_RXF_DMA_RB_SIZE_8K, align 4
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @RFH_RXF_DMA_RB_SIZE_12K, align 4
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %1
  %22 = call i32 @WARN_ON(i32 1)
  %23 = load i32, i32* @RFH_RXF_DMA_RB_SIZE_4K, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %19, %17, %15, %13
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %26 = call i32 @iwl_trans_grab_nic_access(%struct.iwl_trans* %25, i64* %6)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %149

29:                                               ; preds = %24
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %31 = load i32, i32* @RFH_RXF_DMA_CFG, align 4
  %32 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %30, i32 %31, i32 0)
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %34 = load i32, i32* @RFH_RXF_RXQ_ACTIVE, align 4
  %35 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %33, i32 %34, i32 0)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %99, %29
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %36
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @RFH_Q_FRBDCB_BA_LSB(i32 %44)
  %46 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iwl_write_prph64_no_grab(%struct.iwl_trans* %43, i32 %45, i32 %53)
  %55 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @RFH_Q_URBDCB_BA_LSB(i32 %56)
  %58 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @iwl_write_prph64_no_grab(%struct.iwl_trans* %55, i32 %57, i32 %65)
  %67 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @RFH_Q_URBD_STTS_WPTR_LSB(i32 %68)
  %70 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @iwl_write_prph64_no_grab(%struct.iwl_trans* %67, i32 %69, i32 %77)
  %79 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @RFH_Q_FRBDCB_WIDX(i32 %80)
  %82 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %79, i32 %81, i32 0)
  %83 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @RFH_Q_FRBDCB_RIDX(i32 %84)
  %86 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %83, i32 %85, i32 0)
  %87 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @RFH_Q_URBDCB_WIDX(i32 %88)
  %90 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %87, i32 %89, i32 0)
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @BIT(i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 16
  %95 = call i32 @BIT(i32 %94)
  %96 = or i32 %92, %95
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %42
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %36

102:                                              ; preds = %36
  %103 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %104 = load i32, i32* @RFH_RXF_DMA_CFG, align 4
  %105 = load i32, i32* @RFH_DMA_EN_ENABLE_VAL, align 4
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @RFH_RXF_DMA_MIN_RB_4_8, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @RFH_RXF_DMA_DROP_TOO_LARGE_MASK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @RFH_RXF_DMA_RBDCB_SIZE_512, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %103, i32 %104, i32 %113)
  %115 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %116 = load i32, i32* @RFH_GEN_CFG, align 4
  %117 = load i32, i32* @RFH_GEN_CFG_RFH_DMA_SNOOP, align 4
  %118 = load i32, i32* @DEFAULT_RXQ_NUM, align 4
  %119 = call i32 @RFH_GEN_CFG_VAL(i32 %118, i32 0)
  %120 = or i32 %117, %119
  %121 = load i32, i32* @RFH_GEN_CFG_SERVICE_DMA_SNOOP, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @RB_CHUNK_SIZE, align 4
  %124 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %125 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %102
  %131 = load i32, i32* @RFH_GEN_CFG_RB_CHUNK_SIZE_64, align 4
  br label %134

132:                                              ; preds = %102
  %133 = load i32, i32* @RFH_GEN_CFG_RB_CHUNK_SIZE_128, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = call i32 @RFH_GEN_CFG_VAL(i32 %123, i32 %135)
  %137 = or i32 %122, %136
  %138 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %115, i32 %116, i32 %137)
  %139 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %140 = load i32, i32* @RFH_RXF_RXQ_ACTIVE, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @iwl_write_prph_no_grab(%struct.iwl_trans* %139, i32 %140, i32 %141)
  %143 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %144 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %143, i64* %6)
  %145 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %146 = load i32, i32* @CSR_INT_COALESCING, align 4
  %147 = load i32, i32* @IWL_HOST_INT_TIMEOUT_DEF, align 4
  %148 = call i32 @iwl_write8(%struct.iwl_trans* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %134, %28
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @iwl_write_prph_no_grab(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_prph64_no_grab(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @RFH_Q_FRBDCB_BA_LSB(i32) #1

declare dso_local i32 @RFH_Q_URBDCB_BA_LSB(i32) #1

declare dso_local i32 @RFH_Q_URBD_STTS_WPTR_LSB(i32) #1

declare dso_local i32 @RFH_Q_FRBDCB_WIDX(i32) #1

declare dso_local i32 @RFH_Q_FRBDCB_RIDX(i32) #1

declare dso_local i32 @RFH_Q_URBDCB_WIDX(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RFH_GEN_CFG_VAL(i32, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @iwl_write8(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
