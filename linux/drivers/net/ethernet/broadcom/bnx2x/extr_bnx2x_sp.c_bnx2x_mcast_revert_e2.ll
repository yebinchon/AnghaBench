; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_revert_e2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_revert_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i64, %struct.bnx2x_mcast_obj* }
%struct.bnx2x_mcast_obj = type { i64, i32, i32 (%struct.bnx2x_mcast_obj*, i32)* }

@BNX2X_MCAST_CMD_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32, i32)* @bnx2x_mcast_revert_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_mcast_revert_e2(%struct.bnx2x* %0, %struct.bnx2x_mcast_ramrod_params* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_mcast_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_mcast_ramrod_params* %1, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %10, i32 0, i32 1
  %12 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %11, align 8
  store %struct.bnx2x_mcast_obj* %12, %struct.bnx2x_mcast_obj** %9, align 8
  %13 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %14 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %13, i32 0, i32 2
  %15 = load i32 (%struct.bnx2x_mcast_obj*, i32)*, i32 (%struct.bnx2x_mcast_obj*, i32)** %14, align 8
  %16 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 %15(%struct.bnx2x_mcast_obj* %16, i32 %17)
  %19 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %20 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %23 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BNX2X_MCAST_CMD_SET, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %33 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %36 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  br label %41

41:                                               ; preds = %31, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
