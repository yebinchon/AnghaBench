; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_rss_indir_tbl_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_rss_indir_tbl_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_rss_indir_tbl_entries(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %4 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ixgbe_mac_X550, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 128, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 64, i32* %2, align 4
  br label %21

20:                                               ; preds = %12
  store i32 512, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
