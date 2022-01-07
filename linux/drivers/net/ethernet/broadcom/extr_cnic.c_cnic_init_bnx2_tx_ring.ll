; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_init_bnx2_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_init_bnx2_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32*, i32, %struct.TYPE_2__, %struct.cnic_uio_dev*, %struct.cnic_eth_dev* }
%struct.TYPE_2__ = type { %struct.status_block_msix*, %struct.status_block* }
%struct.status_block_msix = type { i32 }
%struct.status_block = type { i32 }
%struct.cnic_uio_dev = type { i64, %struct.bnx2_tx_bd*, i64 }
%struct.bnx2_tx_bd = type { i32, i32 }
%struct.cnic_eth_dev = type { i32 }

@CNIC_DRV_STATE_USING_MSIX = common dso_local global i32 0, align 4
@TX_TSS_CID = common dso_local global i32 0, align 4
@BNX2_TSCH_TSS_CFG = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@PHY_CTX_SIZE = common dso_local global i32 0, align 4
@BNX2_L2CTX_TYPE_XI = common dso_local global i32 0, align 4
@BNX2_L2CTX_CMD_TYPE_XI = common dso_local global i32 0, align 4
@BNX2_L2CTX_TBDR_BHADDR_HI_XI = common dso_local global i32 0, align 4
@BNX2_L2CTX_TBDR_BHADDR_LO_XI = common dso_local global i32 0, align 4
@BNX2_L2CTX_TYPE = common dso_local global i32 0, align 4
@BNX2_L2CTX_CMD_TYPE = common dso_local global i32 0, align 4
@BNX2_L2CTX_TBDR_BHADDR_HI = common dso_local global i32 0, align 4
@BNX2_L2CTX_TBDR_BHADDR_LO = common dso_local global i32 0, align 4
@BNX2_L2CTX_TYPE_TYPE_L2 = common dso_local global i32 0, align 4
@BNX2_L2CTX_TYPE_SIZE_L2 = common dso_local global i32 0, align 4
@BNX2_L2CTX_CMD_TYPE_TYPE_L2 = common dso_local global i32 0, align 4
@BNX2_MAX_TX_DESC_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_init_bnx2_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_init_bnx2_tx_ring(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca %struct.cnic_eth_dev*, align 8
  %5 = alloca %struct.cnic_uio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bnx2_tx_bd*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.status_block*, align 8
  %19 = alloca %struct.status_block_msix*, align 8
  %20 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %21 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %22 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %21, i32 0, i32 0
  %23 = load %struct.cnic_local*, %struct.cnic_local** %22, align 8
  store %struct.cnic_local* %23, %struct.cnic_local** %3, align 8
  %24 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %25 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %24, i32 0, i32 5
  %26 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %25, align 8
  store %struct.cnic_eth_dev* %26, %struct.cnic_eth_dev** %4, align 8
  %27 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %28 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %27, i32 0, i32 4
  %29 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %28, align 8
  store %struct.cnic_uio_dev* %29, %struct.cnic_uio_dev** %5, align 8
  %30 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %5, align 8
  %31 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %17, align 8
  %33 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %34 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.status_block*, %struct.status_block** %35, align 8
  store %struct.status_block* %36, %struct.status_block** %18, align 8
  %37 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %38 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  store i32 20, i32* %7, align 4
  %40 = load %struct.status_block*, %struct.status_block** %18, align 8
  %41 = getelementptr inbounds %struct.status_block, %struct.status_block* %40, i32 0, i32 0
  %42 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %43 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %4, align 8
  %45 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CNIC_DRV_STATE_USING_MSIX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %1
  %51 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %52 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.status_block_msix*, %struct.status_block_msix** %53, align 8
  store %struct.status_block_msix* %54, %struct.status_block_msix** %19, align 8
  %55 = load i32, i32* @TX_TSS_CID, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %60 = load i32, i32* @BNX2_TSCH_TSS_CFG, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 24
  %63 = load i32, i32* @TX_TSS_CID, align 4
  %64 = shl i32 %63, 7
  %65 = or i32 %62, %64
  %66 = call i32 @CNIC_WR(%struct.cnic_dev* %59, i32 %60, i32 %65)
  %67 = load %struct.status_block_msix*, %struct.status_block_msix** %19, align 8
  %68 = getelementptr inbounds %struct.status_block_msix, %struct.status_block_msix* %67, i32 0, i32 0
  %69 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %70 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %50, %1
  %72 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %73 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %77 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @GET_CID_ADDR(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %81 = call i64 @BNX2_CHIP(%struct.cnic_local* %80)
  %82 = load i64, i64* @BNX2_CHIP_5709, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %71
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 4
  %87 = call i32 @GET_CID_ADDR(i32 %86)
  %88 = add nsw i32 %87, 64
  store i32 %88, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %98, %84
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @PHY_CTX_SIZE, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @cnic_ctx_wr(%struct.cnic_dev* %94, i32 %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 4
  store i32 %100, i32* %14, align 4
  br label %89

101:                                              ; preds = %89
  %102 = load i32, i32* @BNX2_L2CTX_TYPE_XI, align 4
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @BNX2_L2CTX_CMD_TYPE_XI, align 4
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* @BNX2_L2CTX_TBDR_BHADDR_HI_XI, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* @BNX2_L2CTX_TBDR_BHADDR_LO_XI, align 4
  store i32 %105, i32* %13, align 4
  br label %118

106:                                              ; preds = %71
  %107 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @cnic_init_context(%struct.cnic_dev* %107, i32 %108)
  %110 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i32 @cnic_init_context(%struct.cnic_dev* %110, i32 %112)
  %114 = load i32, i32* @BNX2_L2CTX_TYPE, align 4
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @BNX2_L2CTX_CMD_TYPE, align 4
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* @BNX2_L2CTX_TBDR_BHADDR_HI, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* @BNX2_L2CTX_TBDR_BHADDR_LO, align 4
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %106, %101
  %119 = load i32, i32* @BNX2_L2CTX_TYPE_TYPE_L2, align 4
  %120 = load i32, i32* @BNX2_L2CTX_TYPE_SIZE_L2, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %9, align 4
  %122 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @cnic_ctx_wr(%struct.cnic_dev* %122, i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* @BNX2_L2CTX_CMD_TYPE_TYPE_L2, align 4
  %128 = or i32 %127, 524288
  store i32 %128, i32* %9, align 4
  %129 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @cnic_ctx_wr(%struct.cnic_dev* %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %5, align 8
  %135 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %134, i32 0, i32 1
  %136 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %135, align 8
  store %struct.bnx2_tx_bd* %136, %struct.bnx2_tx_bd** %15, align 8
  %137 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %5, align 8
  %138 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %16, align 8
  store i32 0, i32* %14, align 4
  br label %140

140:                                              ; preds = %154, %118
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @BNX2_MAX_TX_DESC_CNT, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %140
  %145 = load i64, i64* %16, align 8
  %146 = trunc i64 %145 to i32
  %147 = ashr i32 %146, 32
  %148 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %15, align 8
  %149 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load i64, i64* %16, align 8
  %151 = trunc i64 %150 to i32
  %152 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %15, align 8
  %153 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %144
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  %157 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %15, align 8
  %158 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %157, i32 1
  store %struct.bnx2_tx_bd* %158, %struct.bnx2_tx_bd** %15, align 8
  br label %140

159:                                              ; preds = %140
  %160 = load i64, i64* %17, align 8
  %161 = trunc i64 %160 to i32
  %162 = ashr i32 %161, 32
  store i32 %162, i32* %9, align 4
  %163 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @cnic_ctx_wr(%struct.cnic_dev* %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %15, align 8
  %170 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = load i64, i64* %17, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %9, align 4
  %173 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @cnic_ctx_wr(%struct.cnic_dev* %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %15, align 8
  %180 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  ret void
}

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i32, i32) #1

declare dso_local i32 @GET_CID_ADDR(i32) #1

declare dso_local i64 @BNX2_CHIP(%struct.cnic_local*) #1

declare dso_local i32 @cnic_ctx_wr(%struct.cnic_dev*, i32, i32, i32) #1

declare dso_local i32 @cnic_init_context(%struct.cnic_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
