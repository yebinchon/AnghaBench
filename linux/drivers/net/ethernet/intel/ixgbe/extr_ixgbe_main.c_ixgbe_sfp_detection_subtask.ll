; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_sfp_detection_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_sfp_detection_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_10__*, i32, i32, i64, %struct.ixgbe_hw }
%struct.TYPE_10__ = type { i64 }
%struct.ixgbe_hw = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.2 = type opaque

@IXGBE_FLAG2_SEARCH_FOR_SFP = common dso_local global i32 0, align 4
@IXGBE_FLAG2_SFP_NEEDS_RESET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@__IXGBE_IN_SFP_INIT = common dso_local global i32 0, align 4
@IXGBE_SFP_POLL_JIFFIES = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_FLAG_NEED_LINK_CONFIG = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"detected SFP+: %d\0A\00", align 1
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"failed to initialize because an unsupported SFP+ module type was detected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Reload the driver after installing a supported module.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_sfp_detection_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_sfp_detection_subtask(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 5
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IXGBE_FLAG2_SEARCH_FOR_SFP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %153

21:                                               ; preds = %13, %1
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @jiffies, align 8
  %31 = call i64 @time_after(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %153

34:                                               ; preds = %26, %21
  %35 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 2
  %38 = call i64 @test_and_set_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %153

41:                                               ; preds = %34
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* @IXGBE_SFP_POLL_JIFFIES, align 8
  %44 = add nsw i64 %42, %43
  %45 = sub nsw i64 %44, 1
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %51, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = bitcast %struct.ixgbe_hw* %53 to %struct.ixgbe_hw.0*
  %55 = call i64 %52(%struct.ixgbe_hw.0* %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  br label %130

60:                                               ; preds = %41
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %130

74:                                               ; preds = %70
  %75 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %130

82:                                               ; preds = %74
  %83 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %82
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %99, align 8
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %102 = bitcast %struct.ixgbe_hw* %101 to %struct.ixgbe_hw.1*
  %103 = call i64 %100(%struct.ixgbe_hw.1* %102)
  store i64 %103, i64* %4, align 8
  br label %113

104:                                              ; preds = %82
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64 (%struct.ixgbe_hw.2*)*, i64 (%struct.ixgbe_hw.2*)** %108, align 8
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %111 = bitcast %struct.ixgbe_hw* %110 to %struct.ixgbe_hw.2*
  %112 = call i64 %109(%struct.ixgbe_hw.2* %111)
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %104, %95
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %130

118:                                              ; preds = %113
  %119 = load i32, i32* @IXGBE_FLAG_NEED_LINK_CONFIG, align 4
  %120 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @probe, align 4
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %126 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @e_info(i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %118, %117, %81, %73, %59
  %131 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %132 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %133 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %132, i32 0, i32 2
  %134 = call i32 @clear_bit(i32 %131, i32* %133)
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %130
  %139 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %140 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @NETREG_REGISTERED, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = call i32 @e_dev_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %148 = call i32 @e_dev_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %149 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %150 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %149, i32 0, i32 1
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = call i32 @unregister_netdev(%struct.TYPE_10__* %151)
  br label %153

153:                                              ; preds = %20, %33, %40, %146, %138, %130
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @e_info(i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @e_dev_err(i8*) #1

declare dso_local i32 @unregister_netdev(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
