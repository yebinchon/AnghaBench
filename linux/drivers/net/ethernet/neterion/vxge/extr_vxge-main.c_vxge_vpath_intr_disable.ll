; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_vpath_intr_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_vpath_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { %struct.TYPE_7__, i32, %struct.vxge_vpath* }
%struct.TYPE_7__ = type { i64 }
%struct.vxge_vpath = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.__vxge_hw_device = type { i32 }

@INTA = common dso_local global i64 0, align 8
@VXGE_HW_VPATH_MSIX_ACTIVE = common dso_local global i32 0, align 4
@VXGE_ALARM_MSIX_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxgedev*, i32)* @vxge_vpath_intr_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_vpath_intr_disable(%struct.vxgedev* %0, i32 %1) #0 {
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxge_vpath*, align 8
  %6 = alloca %struct.__vxge_hw_device*, align 8
  %7 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %9 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %8, i32 0, i32 2
  %10 = load %struct.vxge_vpath*, %struct.vxge_vpath** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %10, i64 %12
  store %struct.vxge_vpath* %13, %struct.vxge_vpath** %5, align 8
  %14 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %15 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.__vxge_hw_device* @pci_get_drvdata(i32 %16)
  store %struct.__vxge_hw_device* %17, %struct.__vxge_hw_device** %6, align 8
  %18 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %6, align 8
  %19 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %20 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vxge_hw_vpath_wait_receive_idle(%struct.__vxge_hw_device* %18, i32 %21)
  %23 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %24 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = call i32 @vxge_hw_vpath_intr_disable(%struct.TYPE_10__* %25)
  %27 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %28 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INTA, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %35 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = call i32 @vxge_hw_vpath_inta_mask_tx_rx(%struct.TYPE_10__* %36)
  br label %73

38:                                               ; preds = %2
  %39 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %40 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %45 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @vxge_hw_vpath_msix_mask(%struct.TYPE_10__* %46, i32 %47)
  %49 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %50 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @vxge_hw_vpath_msix_mask(%struct.TYPE_10__* %51, i32 %53)
  %55 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %56 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* @VXGE_ALARM_MSIX_ID, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %69 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @vxge_hw_vpath_msix_mask(%struct.TYPE_10__* %70, i32 %71)
  br label %73

73:                                               ; preds = %38, %33
  ret void
}

declare dso_local %struct.__vxge_hw_device* @pci_get_drvdata(i32) #1

declare dso_local i32 @vxge_hw_vpath_wait_receive_idle(%struct.__vxge_hw_device*, i32) #1

declare dso_local i32 @vxge_hw_vpath_intr_disable(%struct.TYPE_10__*) #1

declare dso_local i32 @vxge_hw_vpath_inta_mask_tx_rx(%struct.TYPE_10__*) #1

declare dso_local i32 @vxge_hw_vpath_msix_mask(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
