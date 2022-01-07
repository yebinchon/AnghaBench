; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_set_rar_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_set_rar_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_VF_SET_MAC_ADDR = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@IXGBE_ERR_MBX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32*, i32)* @ixgbevf_set_rar_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_set_rar_vf(%struct.ixgbe_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32* %13, i32** %11, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 12)
  %16 = load i32, i32* @IXGBE_VF_SET_MAC_ADDR, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @ether_addr_copy(i32* %18, i32* %19)
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = call i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %21, i32* %22, i32* %23, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IXGBE_VF_SET_MAC_ADDR, align 4
  %38 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ixgbevf_get_mac_addr_vf(%struct.ixgbe_hw* %42, i32 %46)
  %48 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %48, i32* %5, align 4
  br label %51

49:                                               ; preds = %34, %4
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %41
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw*, i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ixgbevf_get_mac_addr_vf(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
