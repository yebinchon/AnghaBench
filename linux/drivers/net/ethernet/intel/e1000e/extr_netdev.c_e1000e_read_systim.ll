; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_read_systim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_read_systim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }
%struct.ptp_system_timestamp = type { i32 }

@SYSTIML = common dso_local global i32 0, align 4
@SYSTIMH = common dso_local global i32 0, align 4
@E1000_TIMINCA_INCVALUE_MASK = common dso_local global i64 0, align 8
@FLAG2_CHECK_SYSTIM_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_read_systim(%struct.e1000_adapter* %0, %struct.ptp_system_timestamp* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.ptp_system_timestamp*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store %struct.ptp_system_timestamp* %1, %struct.ptp_system_timestamp** %4, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 1
  store %struct.e1000_hw* %11, %struct.e1000_hw** %5, align 8
  %12 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %13 = call i32 @ptp_read_system_prets(%struct.ptp_system_timestamp* %12)
  %14 = load i32, i32* @SYSTIML, align 4
  %15 = call i64 @er32(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %17 = call i32 @ptp_read_system_postts(%struct.ptp_system_timestamp* %16)
  %18 = load i32, i32* @SYSTIMH, align 4
  %19 = call i64 @er32(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @E1000_TIMINCA_INCVALUE_MASK, align 8
  %22 = sub nsw i64 4294967295, %21
  %23 = icmp sge i64 %20, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %26 = call i32 @ptp_read_system_prets(%struct.ptp_system_timestamp* %25)
  %27 = load i32, i32* @SYSTIML, align 4
  %28 = call i64 @er32(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %30 = call i32 @ptp_read_system_postts(%struct.ptp_system_timestamp* %29)
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @SYSTIMH, align 4
  %36 = call i64 @er32(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %34, %24
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 32
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FLAG2_CHECK_SYSTIM_OVERFLOW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %39
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %57 = call i32 @e1000e_sanitize_systim(%struct.e1000_hw* %54, i32 %55, %struct.ptp_system_timestamp* %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %39
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @ptp_read_system_prets(%struct.ptp_system_timestamp*) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @ptp_read_system_postts(%struct.ptp_system_timestamp*) #1

declare dso_local i32 @e1000e_sanitize_systim(%struct.e1000_hw*, i32, %struct.ptp_system_timestamp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
