; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_check_sfp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_check_sfp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw, i64, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_EICR_GPI_SDP0_X540 = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@IXGBE_FLAG2_SFP_NEEDS_RESET = common dso_local global i32 0, align 4
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@IXGBE_FLAG_NEED_LINK_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i32)* @ixgbe_check_sfp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_check_sfp_event(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 2
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %5, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %10 = call i32 @IXGBE_EICR_GPI_SDP2(%struct.ixgbe_hw* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %12 = call i32 @ixgbe_is_sfp(%struct.ixgbe_hw* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %84

15:                                               ; preds = %2
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ixgbe_mac_X540, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = load i32, i32* @IXGBE_EICR, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @__IXGBE_DOWN, align 4
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %35, i32 0, i32 1
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %48 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %47)
  br label %49

49:                                               ; preds = %39, %29
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %61 = call i32 @IXGBE_EICR_GPI_SDP1(%struct.ixgbe_hw* %60)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %66 = load i32, i32* @IXGBE_EICR, align 4
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %68 = call i32 @IXGBE_EICR_GPI_SDP1(%struct.ixgbe_hw* %67)
  %69 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %65, i32 %66, i32 %68)
  %70 = load i32, i32* @__IXGBE_DOWN, align 4
  %71 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %71, i32 0, i32 1
  %73 = call i32 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @IXGBE_FLAG_NEED_LINK_CONFIG, align 4
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %82 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %81)
  br label %83

83:                                               ; preds = %75, %64
  br label %84

84:                                               ; preds = %14, %83, %58, %50
  ret void
}

declare dso_local i32 @IXGBE_EICR_GPI_SDP2(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_is_sfp(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_EICR_GPI_SDP1(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
