; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_vpath_mac_addr_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_vpath_mac_addr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_vpath_handle = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_ERR_INVALID_HANDLE = common dso_local global i32 0, align 4
@VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_LIST_FIRST_ENTRY = common dso_local global i32 0, align 4
@VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_vpath_mac_addr_get(%struct.__vxge_hw_vpath_handle* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.__vxge_hw_vpath_handle*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.__vxge_hw_vpath_handle* %0, %struct.__vxge_hw_vpath_handle** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = zext i32 %13 to i64
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %4, align 8
  %17 = icmp eq %struct.__vxge_hw_vpath_handle* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @VXGE_HW_ERR_INVALID_HANDLE, align 4
  store i32 %19, i32* %10, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %4, align 8
  %22 = load i32, i32* @VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_LIST_FIRST_ENTRY, align 4
  %23 = load i32, i32* @VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA, align 4
  %24 = call i32 @__vxge_hw_vpath_rts_table_get(%struct.__vxge_hw_vpath_handle* %21, i32 %22, i32 %23, i32 0, i32* %8, i32* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @VXGE_HW_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %63

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_DA_MAC_ADDR(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA1_GET_DA_MAC_ADDR_MASK(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @ETH_ALEN, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %59, %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 255
  %41 = sext i32 %40 to i64
  %42 = load i64*, i64** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  store i64 %41, i64* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 8
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 255
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  store i64 %51, i64* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 8
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %38
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %7, align 4
  br label %35

62:                                               ; preds = %35
  br label %63

63:                                               ; preds = %62, %28, %18
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @__vxge_hw_vpath_rts_table_get(%struct.__vxge_hw_vpath_handle*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_DA_MAC_ADDR(i32) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA1_GET_DA_MAC_ADDR_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
