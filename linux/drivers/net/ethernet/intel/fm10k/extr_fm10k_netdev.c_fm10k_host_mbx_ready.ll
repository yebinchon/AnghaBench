; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_host_mbx_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_host_mbx_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i64, %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@fm10k_mac_vf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*)* @fm10k_host_mbx_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_host_mbx_ready(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.fm10k_hw*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %4 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %5 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %4, i32 0, i32 1
  store %struct.fm10k_hw* %5, %struct.fm10k_hw** %3, align 8
  %6 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %7 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @fm10k_mac_vf, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
