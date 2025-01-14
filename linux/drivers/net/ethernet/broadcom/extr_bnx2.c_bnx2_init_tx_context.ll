; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_tx_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_tx_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }
%struct.bnx2_tx_ring_info = type { i64 }

@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, i32, %struct.bnx2_tx_ring_info*)* @bnx2_init_tx_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_init_tx_context(%struct.bnx2* %0, i32 %1, %struct.bnx2_tx_ring_info* %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2_tx_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bnx2_tx_ring_info* %2, %struct.bnx2_tx_ring_info** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GET_CID_ADDR(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %16 = call i64 @BNX2_CHIP(%struct.bnx2* %15)
  %17 = load i64, i64* @BNX2_CHIP_5709, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @BNX2_L2CTX_TYPE_XI, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @BNX2_L2CTX_CMD_TYPE_XI, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @BNX2_L2CTX_TBDR_BHADDR_HI_XI, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @BNX2_L2CTX_TBDR_BHADDR_LO_XI, align 4
  store i32 %23, i32* %11, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @BNX2_L2CTX_TYPE, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @BNX2_L2CTX_CMD_TYPE, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @BNX2_L2CTX_TBDR_BHADDR_HI, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @BNX2_L2CTX_TBDR_BHADDR_LO, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @BNX2_L2CTX_TYPE_TYPE_L2, align 4
  %31 = load i32, i32* @BNX2_L2CTX_TYPE_SIZE_L2, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bnx2_ctx_wr(%struct.bnx2* %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @BNX2_L2CTX_CMD_TYPE_TYPE_L2, align 4
  %39 = or i32 %38, 524288
  store i32 %39, i32* %7, align 4
  %40 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @bnx2_ctx_wr(%struct.bnx2* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %6, align 8
  %46 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = ashr i32 %48, 32
  store i32 %49, i32* %7, align 4
  %50 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @bnx2_ctx_wr(%struct.bnx2* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %6, align 8
  %56 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @bnx2_ctx_wr(%struct.bnx2* %59, i32 %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @GET_CID_ADDR(i32) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_ctx_wr(%struct.bnx2*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
