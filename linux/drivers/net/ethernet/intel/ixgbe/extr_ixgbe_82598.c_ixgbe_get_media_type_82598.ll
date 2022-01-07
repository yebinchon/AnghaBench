; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_get_media_type_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_get_media_type_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ixgbe_media_type_copper = common dso_local global i32 0, align 4
@ixgbe_media_type_backplane = common dso_local global i32 0, align 4
@ixgbe_media_type_fiber = common dso_local global i32 0, align 4
@ixgbe_media_type_cx4 = common dso_local global i32 0, align 4
@ixgbe_media_type_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_get_media_type_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_media_type_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %10 [
    i32 129, label %8
    i32 128, label %8
  ]

8:                                                ; preds = %1, %1
  %9 = load i32, i32* @ixgbe_media_type_copper, align 4
  store i32 %9, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 141, label %15
    i32 133, label %15
    i32 140, label %17
    i32 139, label %17
    i32 131, label %17
    i32 130, label %17
    i32 134, label %17
    i32 135, label %17
    i32 136, label %19
    i32 132, label %19
    i32 138, label %21
    i32 137, label %21
  ]

15:                                               ; preds = %11, %11
  %16 = load i32, i32* @ixgbe_media_type_backplane, align 4
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %11, %11, %11, %11, %11, %11
  %18 = load i32, i32* @ixgbe_media_type_fiber, align 4
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %11, %11
  %20 = load i32, i32* @ixgbe_media_type_cx4, align 4
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %11, %11
  %22 = load i32, i32* @ixgbe_media_type_copper, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %11
  %24 = load i32, i32* @ixgbe_media_type_unknown, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %21, %19, %17, %15, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
