; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_reset_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_REG_LLH0_BRB1_DRV_MASK = common dso_local global i64 0, align 8
@NIG_REG_LLH1_BRB1_NOT_MCP = common dso_local global i64 0, align 8
@NIG_REG_LLH0_BRB1_NOT_MCP = common dso_local global i64 0, align 8
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i64 0, align 8
@BRB1_REG_PORT_NUM_OCC_BLOCKS_0 = common dso_local global i64 0, align 8
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"BRB1 is not empty  %d blocks are occupied\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_reset_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_reset_port(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = call i32 @BP_PORT(%struct.bnx2x* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i32 @bnx2x__link_reset(%struct.bnx2x* %7)
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %11 = load i32, i32* %3, align 4
  %12 = mul nsw i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = call i32 @REG_WR(%struct.bnx2x* %9, i64 %14, i32 0)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = load i64, i64* @NIG_REG_LLH0_BRB1_DRV_MASK, align 8
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i32 @REG_WR(%struct.bnx2x* %16, i64 %21, i32 0)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* @NIG_REG_LLH1_BRB1_NOT_MCP, align 8
  br label %30

28:                                               ; preds = %1
  %29 = load i64, i64* @NIG_REG_LLH0_BRB1_NOT_MCP, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @REG_WR(%struct.bnx2x* %23, i64 %31, i32 0)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = load i64, i64* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 8
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @REG_WR(%struct.bnx2x* %33, i64 %38, i32 0)
  %40 = call i32 @msleep(i32 100)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = load i64, i64* @BRB1_REG_PORT_NUM_OCC_BLOCKS_0, align 8
  %43 = load i32, i32* %3, align 4
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = call i64 @REG_RD(%struct.bnx2x* %41, i64 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @DP(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %50, %30
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x__link_reset(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @DP(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
