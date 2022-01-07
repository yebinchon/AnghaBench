; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_mac_link_t_X550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_mac_link_t_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_x = common dso_local global i64 0, align 8
@IXGBE_NW_MNG_IF_SEL_INT_PHY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_setup_mac_link_t_X550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_mac_link_t_X550em(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  store i32 %15, i32* %9, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IXGBE_NW_MNG_IF_SEL_INT_PHY_MODE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %35 = call i64 @ixgbe_setup_ixfi_x550em(%struct.ixgbe_hw* %34, i32* %9)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %4, align 8
  br label %52

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %25, %18
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64 (%struct.ixgbe_hw.0*, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.0*
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 %46(%struct.ixgbe_hw.0* %48, i32 %49, i32 %50)
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %41, %38
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i64 @ixgbe_setup_ixfi_x550em(%struct.ixgbe_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
