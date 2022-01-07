; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_set_uc_addr_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_set_uc_addr_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@IXGBE_VF_SET_MACVLAN = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32*)* @ixgbevf_set_uc_addr_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_set_uc_addr_vf(%struct.ixgbe_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32* %12, i32** %10, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 0, i32 12)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IXGBE_VT_MSGINFO_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @IXGBE_VF_SET_MACVLAN, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @ether_addr_copy(i32* %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %3
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = call i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %34, i32* %35, i32* %36, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %52 = or i32 %50, %51
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %60

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw*, i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
