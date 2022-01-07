; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_del_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_del_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { %struct.vxge_vpath* }
%struct.vxge_vpath = type { i32, i32 }
%struct.macInfo = type { i64, i32, i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DA config delete entry failed for vpath:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*, %struct.macInfo*)* @vxge_del_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_del_mac_addr(%struct.vxgedev* %0, %struct.macInfo* %1) #0 {
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca %struct.macInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxge_vpath*, align 8
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store %struct.macInfo* %1, %struct.macInfo** %4, align 8
  %7 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %9 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %8, i32 0, i32 0
  %10 = load %struct.vxge_vpath*, %struct.vxge_vpath** %9, align 8
  %11 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %12 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %10, i64 %13
  store %struct.vxge_vpath* %14, %struct.vxge_vpath** %6, align 8
  %15 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %16 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %19 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %22 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @vxge_hw_vpath_mac_addr_delete(i32 %17, i32 %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @VXGE_HW_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* @VXGE_ERR, align 4
  %30 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %31 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vxge_debug_init(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %36 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %37 = call i32 @vxge_mac_list_del(%struct.vxge_vpath* %35, %struct.macInfo* %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @vxge_hw_vpath_mac_addr_delete(i32, i32, i32) #1

declare dso_local i32 @vxge_debug_init(i32, i8*, i32) #1

declare dso_local i32 @vxge_mac_list_del(%struct.vxge_vpath*, %struct.macInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
