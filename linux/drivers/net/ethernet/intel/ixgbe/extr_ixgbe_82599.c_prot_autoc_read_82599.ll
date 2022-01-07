; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_prot_autoc_read_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_prot_autoc_read_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i32*)* @prot_autoc_read_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prot_autoc_read_82599(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %11 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.0*
  %21 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %22 = call i64 %18(%struct.ixgbe_hw.0* %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %26, i64* %4, align 8
  br label %34

27:                                               ; preds = %13
  %28 = load i32*, i32** %6, align 8
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %3
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = load i32, i32* @IXGBE_AUTOC, align 4
  %32 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %30, i32 %31)
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
