; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_add_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_add_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { %struct.vxge_vpath* }
%struct.vxge_vpath = type { i32, i32 }
%struct.macInfo = type { i64, i32, i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_MAC_ADDR_ADD_DUPLICATE = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_MAC_ADDR_REPLACE_DUPLICATE = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DA config add entry failed for vpath:%d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*, %struct.macInfo*)* @vxge_add_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_add_mac_addr(%struct.vxgedev* %0, %struct.macInfo* %1) #0 {
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca %struct.macInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxge_vpath*, align 8
  %7 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store %struct.macInfo* %1, %struct.macInfo** %4, align 8
  %8 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %10 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @is_multicast_ether_addr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @VXGE_HW_VPATH_MAC_ADDR_ADD_DUPLICATE, align 4
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @VXGE_HW_VPATH_MAC_ADDR_REPLACE_DUPLICATE, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %20 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %19, i32 0, i32 0
  %21 = load %struct.vxge_vpath*, %struct.vxge_vpath** %20, align 8
  %22 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %23 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %21, i64 %24
  store %struct.vxge_vpath* %25, %struct.vxge_vpath** %6, align 8
  %26 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %27 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %30 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %33 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @vxge_hw_vpath_mac_addr_add(i32 %28, i32 %31, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @VXGE_HW_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %18
  %41 = load i32, i32* @VXGE_ERR, align 4
  %42 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %43 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vxge_debug_init(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %56

46:                                               ; preds = %18
  %47 = load i64, i64* @FALSE, align 8
  %48 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %49 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %50 = call i64 @vxge_mac_list_add(%struct.vxge_vpath* %48, %struct.macInfo* %49)
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @vxge_hw_vpath_mac_addr_add(i32, i32, i32, i32) #1

declare dso_local i32 @vxge_debug_init(i32, i8*, i32) #1

declare dso_local i64 @vxge_mac_list_add(%struct.vxge_vpath*, %struct.macInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
