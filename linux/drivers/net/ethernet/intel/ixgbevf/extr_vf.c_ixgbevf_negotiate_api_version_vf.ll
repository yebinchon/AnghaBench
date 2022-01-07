; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_negotiate_api_version_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_negotiate_api_version_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_VF_API_NEGOTIATE = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32)* @ixgbevf_negotiate_api_version_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_negotiate_api_version_vf(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @IXGBE_VF_API_NEGOTIATE, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %12, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = call i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %13, i32* %14, i32* %15, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %23 = xor i32 %22, -1
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IXGBE_VF_API_NEGOTIATE, align 4
  %30 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %41

37:                                               ; preds = %21
  %38 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %2
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw*, i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
