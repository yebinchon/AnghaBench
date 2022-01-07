; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_mbx.c_ixgbe_write_posted_mbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_mbx.c_ixgbe_write_posted_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mbx_info }
%struct.ixgbe_mbx_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@IXGBE_ERR_MBX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i32, i32)* @ixgbe_write_posted_mbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_write_posted_mbx(%struct.ixgbe_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_mbx_info*, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  store %struct.ixgbe_mbx_info* %13, %struct.ixgbe_mbx_info** %10, align 8
  %14 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %10, align 8
  %15 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %10, align 8
  %20 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %4
  %24 = load i64, i64* @IXGBE_ERR_MBX, align 8
  store i64 %24, i64* %5, align 8
  br label %45

25:                                               ; preds = %18
  %26 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %10, align 8
  %27 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i64 (%struct.ixgbe_hw*, i32*, i32, i32)**
  %31 = load i64 (%struct.ixgbe_hw*, i32*, i32, i32)*, i64 (%struct.ixgbe_hw*, i32*, i32, i32)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 %31(%struct.ixgbe_hw* %32, i32* %33, i32 %34, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %5, align 8
  br label %45

41:                                               ; preds = %25
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @ixgbe_poll_for_ack(%struct.ixgbe_hw* %42, i32 %43)
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %41, %39, %23
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i64 @ixgbe_poll_for_ack(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
