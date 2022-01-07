; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_init_flex_flds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_init_flex_flds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

@ICE_RX_MDID_HASH_LOW = common dso_local global i32 0, align 4
@ICE_RX_MDID_HASH_HIGH = common dso_local global i32 0, align 4
@ICE_RX_MDID_FLOW_ID_LOWER = common dso_local global i32 0, align 4
@ICE_RX_MDID_SRC_VSI = common dso_local global i32 0, align 4
@ICE_RX_MDID_FLOW_ID_HIGH = common dso_local global i32 0, align 4
@ICE_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Field init for profile ID %d not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, i32)* @ice_init_flex_flds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_init_flex_flds(%struct.ice_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %35 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ICE_RX_MDID_HASH_LOW, align 4
  %11 = call i32 @ICE_PROG_FLEX_ENTRY(%struct.ice_hw* %8, i32 %9, i32 %10, i32 0)
  %12 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ICE_RX_MDID_HASH_HIGH, align 4
  %15 = call i32 @ICE_PROG_FLEX_ENTRY(%struct.ice_hw* %12, i32 %13, i32 %14, i32 1)
  %16 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ICE_RX_MDID_FLOW_ID_LOWER, align 4
  %19 = call i32 @ICE_PROG_FLEX_ENTRY(%struct.ice_hw* %16, i32 %17, i32 %18, i32 2)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @ICE_RX_MDID_SRC_VSI, align 4
  br label %26

24:                                               ; preds = %7
  %25 = load i32, i32* @ICE_RX_MDID_FLOW_ID_HIGH, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ICE_PROG_FLEX_ENTRY(%struct.ice_hw* %28, i32 %29, i32 %30, i32 3)
  %32 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ice_init_flex_flags(%struct.ice_hw* %32, i32 %33)
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %37 = load i32, i32* @ICE_DBG_INIT, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ice_debug(%struct.ice_hw* %36, i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %26
  ret void
}

declare dso_local i32 @ICE_PROG_FLEX_ENTRY(%struct.ice_hw*, i32, i32, i32) #1

declare dso_local i32 @ice_init_flex_flags(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
