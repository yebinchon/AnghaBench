; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_queue_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_queue_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_state_params = type { i64, %struct.bnx2x_queue_sp_obj* }
%struct.bnx2x_queue_sp_obj = type { i64, i32 (%struct.bnx2x.0*, %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_state_params*)*, i32 (%struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_state_params*)*, i32 (%struct.bnx2x.1*, %struct.bnx2x_queue_state_params*)*, i32 (%struct.bnx2x.2*, %struct.bnx2x_queue_sp_obj*, i32)*, i32, i32 (%struct.bnx2x.3*, %struct.bnx2x_queue_sp_obj*, i32)* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x.1 = type opaque
%struct.bnx2x.2 = type opaque
%struct.bnx2x.3 = type opaque

@.str = private unnamed_addr constant [43 x i8] c"check transition returned an error. rc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"pending bit was=%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"pending bit now=%lx\0A\00", align 1
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@BNX2X_Q_STATE_MAX = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_queue_state_change(%struct.bnx2x* %0, %struct.bnx2x_queue_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_queue_state_params*, align 8
  %6 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_queue_state_params* %1, %struct.bnx2x_queue_state_params** %5, align 8
  %10 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %10, i32 0, i32 1
  %12 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %11, align 8
  store %struct.bnx2x_queue_sp_obj* %12, %struct.bnx2x_queue_sp_obj** %6, align 8
  %13 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %14 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %13, i32 0, i32 0
  store i64* %14, i64** %9, align 8
  %15 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %16 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %15, i32 0, i32 1
  %17 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_state_params*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_state_params*)** %16, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = bitcast %struct.bnx2x* %18 to %struct.bnx2x.0*
  %20 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %21 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %22 = call i32 %17(%struct.bnx2x.0* %19, %struct.bnx2x_queue_sp_obj* %20, %struct.bnx2x_queue_state_params* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %109

30:                                               ; preds = %2
  %31 = load i32, i32* @BNX2X_MSG_SP, align 4
  %32 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @DP(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %37 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %36, i32 0, i32 2
  %38 = load i32 (%struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_state_params*)*, i32 (%struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_state_params*)** %37, align 8
  %39 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %40 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %41 = call i32 %38(%struct.bnx2x_queue_sp_obj* %39, %struct.bnx2x_queue_state_params* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @BNX2X_MSG_SP, align 4
  %43 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %44 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @DP(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %48 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %49 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %48, i32 0, i32 0
  %50 = call i64 @test_bit(i32 %47, i64* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %30
  %53 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %54 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %53, i32 0, i32 6
  %55 = load i32 (%struct.bnx2x.3*, %struct.bnx2x_queue_sp_obj*, i32)*, i32 (%struct.bnx2x.3*, %struct.bnx2x_queue_sp_obj*, i32)** %54, align 8
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = bitcast %struct.bnx2x* %56 to %struct.bnx2x.3*
  %58 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 %55(%struct.bnx2x.3* %57, %struct.bnx2x_queue_sp_obj* %58, i32 %59)
  br label %101

61:                                               ; preds = %30
  %62 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %63 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %62, i32 0, i32 3
  %64 = load i32 (%struct.bnx2x.1*, %struct.bnx2x_queue_state_params*)*, i32 (%struct.bnx2x.1*, %struct.bnx2x_queue_state_params*)** %63, align 8
  %65 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %66 = bitcast %struct.bnx2x* %65 to %struct.bnx2x.1*
  %67 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %68 = call i32 %64(%struct.bnx2x.1* %66, %struct.bnx2x_queue_state_params* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %61
  %72 = load i32, i32* @BNX2X_Q_STATE_MAX, align 4
  %73 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %74 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i64*, i64** %9, align 8
  %77 = call i32 @clear_bit(i32 %75, i64* %76)
  %78 = call i32 (...) @smp_mb__after_atomic()
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %109

80:                                               ; preds = %61
  %81 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %82 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %83 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %82, i32 0, i32 0
  %84 = call i64 @test_bit(i32 %81, i64* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %88 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %87, i32 0, i32 4
  %89 = load i32 (%struct.bnx2x.2*, %struct.bnx2x_queue_sp_obj*, i32)*, i32 (%struct.bnx2x.2*, %struct.bnx2x_queue_sp_obj*, i32)** %88, align 8
  %90 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %91 = bitcast %struct.bnx2x* %90 to %struct.bnx2x.2*
  %92 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 %89(%struct.bnx2x.2* %91, %struct.bnx2x_queue_sp_obj* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %109

99:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %109

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %52
  %102 = load i32, i32* %8, align 4
  %103 = load i64*, i64** %9, align 8
  %104 = call i64 @test_bit(i32 %102, i64* %103)
  %105 = icmp ne i64 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %101, %99, %97, %71, %25
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @DP(i32, i8*, i64) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
