; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_cleanup_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_cleanup_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_bc_trans*)* @qlcnic_sriov_cleanup_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans* %0) #0 {
  %2 = alloca %struct.qlcnic_bc_trans*, align 8
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %2, align 8
  %3 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %2, align 8
  %4 = icmp ne %struct.qlcnic_bc_trans* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %7, i32 0, i32 1
  %9 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %10 = call i32 @kfree(%struct.qlcnic_bc_trans* %9)
  %11 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %2, align 8
  %12 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %11, i32 0, i32 0
  %13 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %12, align 8
  %14 = call i32 @kfree(%struct.qlcnic_bc_trans* %13)
  %15 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %2, align 8
  %16 = call i32 @kfree(%struct.qlcnic_bc_trans* %15)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @kfree(%struct.qlcnic_bc_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
