; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_vpath_mcast_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_vpath_mcast_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_vpath_handle = type { %struct.__vxge_hw_virtualpath* }
%struct.__vxge_hw_virtualpath = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_ERR_INVALID_HANDLE = common dso_local global i32 0, align 4
@VXGE_HW_RXMAC_VCFG0_MCAST_ALL_ADDR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_vpath_mcast_enable(%struct.__vxge_hw_vpath_handle* %0) #0 {
  %2 = alloca %struct.__vxge_hw_vpath_handle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.__vxge_hw_virtualpath*, align 8
  %5 = alloca i32, align 4
  store %struct.__vxge_hw_vpath_handle* %0, %struct.__vxge_hw_vpath_handle** %2, align 8
  %6 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %2, align 8
  %8 = icmp eq %struct.__vxge_hw_vpath_handle* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %2, align 8
  %11 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, %struct.__vxge_hw_vpath_handle* %10, i32 0, i32 0
  %12 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %11, align 8
  %13 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9, %1
  %17 = load i32, i32* @VXGE_HW_ERR_INVALID_HANDLE, align 4
  store i32 %17, i32* %5, align 4
  br label %42

18:                                               ; preds = %9
  %19 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %2, align 8
  %20 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, %struct.__vxge_hw_vpath_handle* %19, i32 0, i32 0
  %21 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %20, align 8
  store %struct.__vxge_hw_virtualpath* %21, %struct.__vxge_hw_virtualpath** %4, align 8
  %22 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %4, align 8
  %23 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @readq(i32* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @VXGE_HW_RXMAC_VCFG0_MCAST_ALL_ADDR_EN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @VXGE_HW_RXMAC_VCFG0_MCAST_ALL_ADDR_EN, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %4, align 8
  %37 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @writeq(i32 %35, i32* %39)
  br label %41

41:                                               ; preds = %31, %18
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @writeq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
