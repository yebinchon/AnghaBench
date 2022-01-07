; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ets_bw_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ets_bw_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ETS enabled BW limit configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Total BW can't be zero\0A\00", align 1
@ETS_BW_LIMIT_CREDIT_WEIGHT = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1 = common dso_local global i32 0, align 4
@PBF_REG_COS0_WEIGHT = common dso_local global i32 0, align 4
@PBF_REG_COS1_WEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_ets_bw_limit(%struct.link_params* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.link_params*, %struct.link_params** %4, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @NETIF_MSG_LINK, align 4
  %18 = call i32 @DP(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21, %3
  %28 = load i32, i32* @NETIF_MSG_LINK, align 4
  %29 = call i32 @DP(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %59

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ETS_BW_LIMIT_CREDIT_WEIGHT, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ETS_BW_LIMIT_CREDIT_WEIGHT, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.link_params*, %struct.link_params** %4, align 8
  %42 = call i32 @bnx2x_ets_bw_limit_common(%struct.link_params* %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %44 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @REG_WR(%struct.bnx2x* %43, i32 %44, i32 %45)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %48 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @REG_WR(%struct.bnx2x* %47, i32 %48, i32 %49)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %52 = load i32, i32* @PBF_REG_COS0_WEIGHT, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @REG_WR(%struct.bnx2x* %51, i32 %52, i32 %53)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %56 = load i32, i32* @PBF_REG_COS1_WEIGHT, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @REG_WR(%struct.bnx2x* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_ets_bw_limit_common(%struct.link_params*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
