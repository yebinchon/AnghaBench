; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_check_for_fiber_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_check_for_fiber_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, i32 }

@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RXCW = common dso_local global i32 0, align 4
@E1000_CTRL_SWDPIN1 = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_RXCW_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"NOT Rx'ing /C/, disable AutoNeg and force link.\0A\00", align 1
@TXCW = common dso_local global i32 0, align 4
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Rx'ing /C/, enable AutoNeg and stop forcing link.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_check_for_fiber_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = load i32, i32* @CTRL, align 4
  %12 = call i32 @er32(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @STATUS, align 4
  %14 = call i32 @er32(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @RXCW, align 4
  %16 = call i32 @er32(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @E1000_STATUS_LU, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @E1000_RXCW_C, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %67, label %31

31:                                               ; preds = %26
  %32 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  store i64 0, i64* %2, align 8
  br label %94

39:                                               ; preds = %31
  %40 = call i32 @e_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @TXCW, align 4
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @E1000_TXCW_ANE, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i32 @ew32(i32 %41, i32 %47)
  %49 = load i32, i32* @CTRL, align 4
  %50 = call i32 @er32(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @E1000_CTRL_SLU, align 4
  %52 = load i32, i32* @E1000_CTRL_FD, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @CTRL, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ew32(i32 %56, i32 %57)
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = call i64 @e1000e_config_fc_after_link_up(%struct.e1000_hw* %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %39
  %64 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %2, align 8
  br label %94

66:                                               ; preds = %39
  br label %93

67:                                               ; preds = %26, %21, %1
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @E1000_CTRL_SLU, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @E1000_RXCW_C, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = call i32 @e_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @TXCW, align 4
  %80 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %81 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ew32(i32 %79, i32 %82)
  %84 = load i32, i32* @CTRL, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @E1000_CTRL_SLU, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = call i32 @ew32(i32 %84, i32 %88)
  %90 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %91 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %90, i32 0, i32 2
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %77, %72, %67
  br label %93

93:                                               ; preds = %92, %66
  store i64 0, i64* %2, align 8
  br label %94

94:                                               ; preds = %93, %63, %36
  %95 = load i64, i64* %2, align 8
  ret i64 %95
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000e_config_fc_after_link_up(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
