; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_hdl_restore_e1h.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_hdl_restore_e1h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_obj = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"About to set bin %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_ramrod_params*, i32*)* @bnx2x_mcast_hdl_restore_e1h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_mcast_hdl_restore_e1h(%struct.bnx2x* %0, %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_ramrod_params* %2, i32* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_mcast_obj*, align 8
  %7 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_obj** %6, align 8
  store %struct.bnx2x_mcast_ramrod_params* %2, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %11 = call i32 @bnx2x_mcast_get_next_bin(%struct.bnx2x_mcast_obj* %10, i32 0)
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %22, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @BNX2X_57711_SET_MC_FILTER(i32* %16, i32 %17)
  %19 = load i32, i32* @BNX2X_MSG_SP, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @DP(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @bnx2x_mcast_get_next_bin(%struct.bnx2x_mcast_obj* %23, i32 %25)
  store i32 %26, i32* %9, align 4
  br label %12

27:                                               ; preds = %12
  ret void
}

declare dso_local i32 @bnx2x_mcast_get_next_bin(%struct.bnx2x_mcast_obj*, i32) #1

declare dso_local i32 @BNX2X_57711_SET_MC_FILTER(i32*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
