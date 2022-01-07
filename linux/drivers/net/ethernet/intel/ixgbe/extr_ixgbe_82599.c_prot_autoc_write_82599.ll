; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_prot_autoc_write_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_prot_autoc_write_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32)* @prot_autoc_write_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prot_autoc_write_82599(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %10 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %42

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %24, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = bitcast %struct.ixgbe_hw* %26 to %struct.ixgbe_hw.1*
  %28 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %29 = call i64 %25(%struct.ixgbe_hw.1* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %33, i64* %4, align 8
  br label %57

34:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %16, %13
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = load i32, i32* @IXGBE_AUTOC, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %36, i32 %37, i32 %38)
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %41 = call i64 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw* %40)
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %35, %12
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %49, align 8
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %52 = bitcast %struct.ixgbe_hw* %51 to %struct.ixgbe_hw.0*
  %53 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %54 = call i32 %50(%struct.ixgbe_hw.0* %52, i32 %53)
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %32
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i64 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
