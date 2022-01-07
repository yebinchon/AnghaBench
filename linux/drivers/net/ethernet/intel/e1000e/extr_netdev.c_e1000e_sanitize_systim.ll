; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_sanitize_systim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_sanitize_systim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }
%struct.ptp_system_timestamp = type { i32 }

@TIMINCA = common dso_local global i32 0, align 4
@E1000_TIMINCA_INCVALUE_MASK = common dso_local global i32 0, align 4
@E1000_MAX_82574_SYSTIM_REREADS = common dso_local global i32 0, align 4
@SYSTIML = common dso_local global i32 0, align 4
@SYSTIMH = common dso_local global i32 0, align 4
@E1000_82574_SYSTIM_EPSILON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32, %struct.ptp_system_timestamp*)* @e1000e_sanitize_systim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000e_sanitize_systim(%struct.e1000_hw* %0, i32 %1, %struct.ptp_system_timestamp* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ptp_system_timestamp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ptp_system_timestamp* %2, %struct.ptp_system_timestamp** %6, align 8
  %13 = load i32, i32* @TIMINCA, align 4
  %14 = call i32 @er32(i32 %13)
  %15 = load i32, i32* @E1000_TIMINCA_INCVALUE_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %58, %3
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @E1000_MAX_82574_SYSTIM_REREADS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %6, align 8
  %23 = call i32 @ptp_read_system_prets(%struct.ptp_system_timestamp* %22)
  %24 = load i32, i32* @SYSTIML, align 4
  %25 = call i32 @er32(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %6, align 8
  %27 = call i32 @ptp_read_system_postts(%struct.ptp_system_timestamp* %26)
  %28 = load i32, i32* @SYSTIMH, align 4
  %29 = call i32 @er32(i32 %28)
  %30 = shl i32 %29, 32
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %21
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @do_div(i32 %40, i32 %41)
  br label %47

43:                                               ; preds = %21
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %42, %39 ], [ %46, %43 ]
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @E1000_82574_SYSTIM_EPSILON, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %61

57:                                               ; preds = %53, %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %17

61:                                               ; preds = %56, %17
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ptp_read_system_prets(%struct.ptp_system_timestamp*) #1

declare dso_local i32 @ptp_read_system_postts(%struct.ptp_system_timestamp*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
