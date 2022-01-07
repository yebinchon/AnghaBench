; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_hdl_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_hdl_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i32, i32*, i32)* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_mcast_ramrod_params = type { i32 }

@BNX2X_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Deleting MAC. %d left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_ramrod_params*, i32*)* @bnx2x_mcast_hdl_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_mcast_hdl_del(%struct.bnx2x* %0, %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_ramrod_params* %2, i32* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_mcast_obj*, align 8
  %7 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_obj** %6, align 8
  store %struct.bnx2x_mcast_ramrod_params* %2, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %39, %4
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %21 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %20, i32 0, i32 0
  %22 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i32, i32*, i32)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i32, i32*, i32)** %21, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %24 = bitcast %struct.bnx2x* %23 to %struct.bnx2x.0*
  %25 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @BNX2X_MCAST_CMD_DEL, align 4
  %28 = call i32 %22(%struct.bnx2x.0* %24, %struct.bnx2x_mcast_obj* %25, i32 %26, i32* null, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @BNX2X_MSG_SP, align 4
  %32 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  %33 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @DP(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %19
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %13

42:                                               ; preds = %13
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
