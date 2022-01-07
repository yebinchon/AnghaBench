; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_sfp_link_config_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_sfp_link_config_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_FLAG_NEED_LINK_CONFIG = common dso_local global i32 0, align 4
@__IXGBE_IN_SFP_INIT = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_sfp_link_config_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_sfp_link_config_subtask(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 3
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IXGBE_FLAG_NEED_LINK_CONFIG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %83

16:                                               ; preds = %1
  %17 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 1
  %20 = call i64 @test_and_set_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %83

23:                                               ; preds = %16
  %24 = load i32, i32* @IXGBE_FLAG_NEED_LINK_CONFIG, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32 (%struct.ixgbe_hw.1*, i32*, i32*)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.1*
  %37 = call i32 %34(%struct.ixgbe_hw.1* %36, i32* %4, i32* %6)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  store i32 %46, i32* %5, align 4
  br label %53

47:                                               ; preds = %40, %23
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %50 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %45
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %57, align 8
  %59 = icmp ne i32 (%struct.ixgbe_hw.0*, i32, i32)* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %64, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %67 = bitcast %struct.ixgbe_hw* %66 to %struct.ixgbe_hw.0*
  %68 = load i32, i32* %5, align 4
  %69 = call i32 %65(%struct.ixgbe_hw.0* %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %60, %53
  %71 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %72 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @jiffies, align 4
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %80, i32 0, i32 1
  %82 = call i32 @clear_bit(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %70, %22, %15
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
