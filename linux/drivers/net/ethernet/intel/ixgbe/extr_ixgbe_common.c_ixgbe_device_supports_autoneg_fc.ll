; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_device_supports_autoneg_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_device_supports_autoneg_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_XFI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Device %x does not support flow control autoneg\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %51 [
    i32 128, label %10
    i32 130, label %35
    i32 129, label %44
  ]

10:                                               ; preds = %1
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %15 [
    i32 135, label %14
    i32 134, label %14
  ]

14:                                               ; preds = %10, %10
  store i32 0, i32* %3, align 4
  br label %34

15:                                               ; preds = %10
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %19, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %22 = bitcast %struct.ixgbe_hw* %21 to %struct.ixgbe_hw.0*
  %23 = call i32 %20(%struct.ixgbe_hw.0* %22, i32* %4, i32* %5, i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26
  br label %34

34:                                               ; preds = %33, %14
  br label %52

35:                                               ; preds = %1
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IXGBE_DEV_ID_X550EM_X_XFI, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %52

44:                                               ; preds = %1
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %49 [
    i32 141, label %48
    i32 140, label %48
    i32 139, label %48
    i32 132, label %48
    i32 131, label %48
    i32 133, label %48
    i32 138, label %48
    i32 137, label %48
    i32 136, label %48
  ]

48:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44
  store i32 1, i32* %3, align 4
  br label %50

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %1, %50
  br label %52

52:                                               ; preds = %51, %43, %34
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @hw_dbg(%struct.ixgbe_hw* %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
