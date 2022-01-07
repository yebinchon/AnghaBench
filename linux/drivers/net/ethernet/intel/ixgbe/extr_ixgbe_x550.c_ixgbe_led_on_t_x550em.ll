; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_led_on_t_x550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_led_on_t_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i64, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_X557_MAX_LED_INDEX = common dso_local global i64 0, align 8
@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@IXGBE_X557_LED_PROVISIONING = common dso_local global i64 0, align 8
@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@IXGBE_X557_LED_MANUAL_SET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i64)* @ixgbe_led_on_t_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_led_on_t_x550em(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @IXGBE_X557_MAX_LED_INDEX, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %11, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32 (%struct.ixgbe_hw.1*, i64, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i64, i32, i32*)** %16, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %19 = bitcast %struct.ixgbe_hw* %18 to %struct.ixgbe_hw.1*
  %20 = load i64, i64* @IXGBE_X557_LED_PROVISIONING, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %24 = call i32 %17(%struct.ixgbe_hw.1* %19, i64 %22, i32 %23, i32* %6)
  %25 = load i32, i32* @IXGBE_X557_LED_MANUAL_SET_MASK, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ixgbe_hw.0*, i64, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i64, i32, i32)** %31, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %34 = bitcast %struct.ixgbe_hw* %33 to %struct.ixgbe_hw.0*
  %35 = load i64, i64* @IXGBE_X557_LED_PROVISIONING, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 %32(%struct.ixgbe_hw.0* %34, i64 %37, i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %12, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
