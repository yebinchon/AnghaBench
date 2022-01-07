; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_vpath_mac_addr_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_vpath_mac_addr_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_vpath_handle = type { i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_ERR_INVALID_HANDLE = common dso_local global i32 0, align 4
@VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_DELETE_ENTRY = common dso_local global i32 0, align 4
@VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_vpath_mac_addr_delete(%struct.__vxge_hw_vpath_handle* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.__vxge_hw_vpath_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.__vxge_hw_vpath_handle* %0, %struct.__vxge_hw_vpath_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i64, i64* @ETH_ALEN, align 8
  %12 = load i64, i64* @ETH_ALEN, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %4, align 8
  %15 = icmp eq %struct.__vxge_hw_vpath_handle* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @VXGE_HW_ERR_INVALID_HANDLE, align 4
  store i32 %17, i32* %10, align 4
  br label %52

18:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @ETH_ALEN, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 8
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %32, 8
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %23
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %19

43:                                               ; preds = %19
  %44 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %4, align 8
  %45 = load i32, i32* @VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_DELETE_ENTRY, align 4
  %46 = load i32, i32* @VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_DA_MAC_ADDR(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA1_DA_MAC_ADDR_MASK(i32 %49)
  %51 = call i32 @__vxge_hw_vpath_rts_table_set(%struct.__vxge_hw_vpath_handle* %44, i32 %45, i32 %46, i32 0, i32 %48, i32 %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %43, %16
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local i32 @__vxge_hw_vpath_rts_table_set(%struct.__vxge_hw_vpath_handle*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_DA_MAC_ADDR(i32) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA1_DA_MAC_ADDR_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
