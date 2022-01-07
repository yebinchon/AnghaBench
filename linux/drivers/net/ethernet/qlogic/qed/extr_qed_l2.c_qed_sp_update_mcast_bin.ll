; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_update_mcast_bin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_update_mcast_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.vport_update_ramrod_data = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.qed_sp_vport_update_params = type { i32*, i32 }

@ETH_MULTICAST_MAC_BINS_IN_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.vport_update_ramrod_data*, %struct.qed_sp_vport_update_params*)* @qed_sp_update_mcast_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_sp_update_mcast_bin(%struct.qed_hwfn* %0, %struct.vport_update_ramrod_data* %1, %struct.qed_sp_vport_update_params* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.vport_update_ramrod_data*, align 8
  %6 = alloca %struct.qed_sp_vport_update_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.vport_update_ramrod_data* %1, %struct.vport_update_ramrod_data** %5, align 8
  store %struct.qed_sp_vport_update_params* %2, %struct.qed_sp_vport_update_params** %6, align 8
  %9 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %10 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @memset(i32** %11, i32 0, i32 8)
  %13 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %6, align 8
  %14 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %46

18:                                               ; preds = %3
  %19 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %20 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %43, %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ETH_MULTICAST_MAC_BINS_IN_REGS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %6, align 8
  %28 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %37 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %35, i32* %42, align 4
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %22

46:                                               ; preds = %17, %22
  ret void
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
