; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_set_vfta_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_set_vfta_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_VF_SET_VLAN = common dso_local global i32 0, align 4
@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i32)* @ixgbevf_set_vfta_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbevf_set_vfta_vf(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @IXGBE_VF_SET_VLAN, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IXGBE_VT_MSGINFO_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = call i64 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %21, i32* %22, i32* %23, i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %51

30:                                               ; preds = %4
  %31 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %32 = xor i32 %31, -1
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @IXGBE_VT_MSGINFO_SHIFT, align 4
  %37 = shl i32 255, %36
  %38 = xor i32 %37, -1
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IXGBE_VF_SET_VLAN, align 4
  %45 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %46 = or i32 %44, %45
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %48, %30
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i64, i64* %10, align 8
  ret i64 %52
}

declare dso_local i64 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw*, i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
