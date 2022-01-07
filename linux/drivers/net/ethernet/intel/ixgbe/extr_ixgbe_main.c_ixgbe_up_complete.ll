; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_up_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.1 = type opaque

@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"link_config FAILED %d\0A\00", align 1
@IXGBE_EICR = common dso_local global i32 0, align 4
@IXGBE_FLAG_FAN_FAIL_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP1 = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Fan has stopped, replace the adapter\0A\00", align 1
@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT_PFRSTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_up_complete(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 4
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %3, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = call i32 @ixgbe_get_hw_control(%struct.ixgbe_adapter* %9)
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = call i32 @ixgbe_setup_gpie(%struct.ixgbe_adapter* %11)
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = call i32 @ixgbe_configure_msix(%struct.ixgbe_adapter* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %24 = call i32 @ixgbe_configure_msi_and_legacy(%struct.ixgbe_adapter* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %29, align 8
  %31 = icmp ne i32 (%struct.ixgbe_hw.1*)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %36, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = bitcast %struct.ixgbe_hw* %38 to %struct.ixgbe_hw.1*
  %40 = call i32 %37(%struct.ixgbe_hw.1* %39)
  br label %41

41:                                               ; preds = %32, %25
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.ixgbe_hw.0*, i32)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %52, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = bitcast %struct.ixgbe_hw* %54 to %struct.ixgbe_hw.0*
  %56 = call i32 %53(%struct.ixgbe_hw.0* %55, i32 1)
  br label %57

57:                                               ; preds = %48, %41
  %58 = call i32 (...) @smp_mb__before_atomic()
  %59 = load i32, i32* @__IXGBE_DOWN, align 4
  %60 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %60, i32 0, i32 3
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %64 = call i32 @ixgbe_napi_enable_all(%struct.ixgbe_adapter* %63)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = call i64 @ixgbe_is_sfp(%struct.ixgbe_hw* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %70 = call i32 @ixgbe_sfp_link_config(%struct.ixgbe_adapter* %69)
  br label %81

71:                                               ; preds = %57
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = call i32 @ixgbe_non_sfp_link_config(%struct.ixgbe_hw* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @probe, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @e_err(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %71
  br label %81

81:                                               ; preds = %80, %68
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %83 = load i32, i32* @IXGBE_EICR, align 4
  %84 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %82, i32 %83)
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %86 = call i32 @ixgbe_irq_enable(%struct.ixgbe_adapter* %85, i32 1, i32 1)
  %87 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IXGBE_FLAG_FAN_FAIL_CAPABLE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %81
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = load i32, i32* @IXGBE_ESDP, align 4
  %96 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %94, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @IXGBE_ESDP_SDP1, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* @drv, align 4
  %103 = call i32 @e_crit(i32 %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %93
  br label %105

105:                                              ; preds = %104, %81
  %106 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %107 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @jiffies, align 4
  %112 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %113 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %114, i32 0, i32 1
  %116 = load i32, i32* @jiffies, align 4
  %117 = call i32 @mod_timer(i32* %115, i32 %116)
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %119 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %120 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @IXGBE_CTRL_EXT_PFRSTD, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %125 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %124, i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @ixgbe_get_hw_control(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_setup_gpie(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_msix(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_msi_and_legacy(%struct.ixgbe_adapter*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_napi_enable_all(%struct.ixgbe_adapter*) #1

declare dso_local i64 @ixgbe_is_sfp(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_sfp_link_config(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_non_sfp_link_config(%struct.ixgbe_hw*) #1

declare dso_local i32 @e_err(i32, i8*, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_irq_enable(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local i32 @e_crit(i32, i8*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
