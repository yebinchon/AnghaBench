; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_q_prep_general.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_q_prep_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_fastpath = type { i32 }
%struct.bnx2x_general_setup_params = type { i32, i32, i32, i32, i32 }

@BNX2X_FCOE_MINI_JUMBO_MTU = common dso_local global i32 0, align 4
@ETH_FP_HSI_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.bnx2x_general_setup_params*, i32)* @bnx2x_pf_q_prep_general to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pf_q_prep_general(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, %struct.bnx2x_general_setup_params* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_fastpath*, align 8
  %7 = alloca %struct.bnx2x_general_setup_params*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %6, align 8
  store %struct.bnx2x_general_setup_params* %2, %struct.bnx2x_general_setup_params** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %10 = call i32 @bnx2x_stats_id(%struct.bnx2x_fastpath* %9)
  %11 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %7, align 8
  %12 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %14 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %7, align 8
  %17 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %19 = call i64 @IS_FCOE_FP(%struct.bnx2x_fastpath* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @BNX2X_FCOE_MINI_JUMBO_MTU, align 4
  %23 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %7, align 8
  %24 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  br label %33

25:                                               ; preds = %4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %7, align 8
  %32 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %21
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %7, align 8
  %36 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ETH_FP_HSI_VERSION, align 4
  %38 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %7, align 8
  %39 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i32 @bnx2x_stats_id(%struct.bnx2x_fastpath*) #1

declare dso_local i64 @IS_FCOE_FP(%struct.bnx2x_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
