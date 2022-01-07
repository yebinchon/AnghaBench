; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_update_pfc_bmac1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_update_pfc_bmac1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i64, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i32 0, align 4
@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_RX_CONTROL = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_TX_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*)* @bnx2x_update_pfc_bmac1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_update_pfc_bmac1(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  %9 = load %struct.link_params*, %struct.link_params** %3, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 2
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %6, align 8
  %12 = load %struct.link_params*, %struct.link_params** %3, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @NIG_REG_INGRESS_BMAC1_MEM, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @NIG_REG_INGRESS_BMAC0_MEM, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  store i32 20, i32* %8, align 4
  %22 = load %struct.link_params*, %struct.link_params** %3, align 8
  %23 = getelementptr inbounds %struct.link_params, %struct.link_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %20
  %29 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %30 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, 32
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %28, %20
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @BIGMAC_REGISTER_RX_CONTROL, align 4
  %45 = add nsw i32 %43, %44
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %47 = call i32 @REG_WR_DMAE(%struct.bnx2x* %42, i32 %45, i32* %46, i32 2)
  store i32 192, i32* %8, align 4
  %48 = load %struct.link_params*, %struct.link_params** %3, align 8
  %49 = getelementptr inbounds %struct.link_params, %struct.link_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %38
  %55 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %56 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, 8388608
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %54, %38
  %65 = load i32, i32* %8, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @BIGMAC_REGISTER_TX_CONTROL, align 4
  %71 = add nsw i32 %69, %70
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %73 = call i32 @REG_WR_DMAE(%struct.bnx2x* %68, i32 %71, i32* %72, i32 2)
  ret void
}

declare dso_local i32 @REG_WR_DMAE(%struct.bnx2x*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
