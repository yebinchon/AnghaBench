; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mbx.c_igb_check_for_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mbx.c_igb_check_for_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32)* }
%struct.e1000_hw.0 = type opaque

@E1000_ERR_MBX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_check_for_rst(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_mbx_info*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_mbx_info* %8, %struct.e1000_mbx_info** %5, align 8
  %9 = load i32, i32* @E1000_ERR_MBX, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.e1000_hw.0*, i32)*, i32 (%struct.e1000_hw.0*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.e1000_hw.0*, i32)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %18 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.e1000_hw.0*, i32)*, i32 (%struct.e1000_hw.0*, i32)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.0*
  %23 = load i32, i32* %4, align 4
  %24 = call i32 %20(%struct.e1000_hw.0* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %16, %2
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
