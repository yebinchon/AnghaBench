; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_eee_set_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_eee_set_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@MISC_REG_CPMU_LP_IDLE_THR_P0 = common dso_local global i64 0, align 8
@EEE_MODE_ENABLE_LPI = common dso_local global i32 0, align 4
@EEE_MODE_OVERRIDE_NVRAM = common dso_local global i32 0, align 4
@EEE_MODE_OUTPUT_TIME = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error: Tx LPI is enabled with timer 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SHMEM_EEE_TIMER_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_TIME_OUTPUT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*)* @bnx2x_eee_set_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_eee_set_timers(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.link_params*, %struct.link_params** %4, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 2
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %8, align 8
  %12 = load %struct.link_params*, %struct.link_params** %4, align 8
  %13 = call i32 @bnx2x_eee_calc_timer(%struct.link_params* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %18 = load i64, i64* @MISC_REG_CPMU_LP_IDLE_THR_P0, align 8
  %19 = load %struct.link_params*, %struct.link_params** %4, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %18, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @REG_WR(%struct.bnx2x* %17, i64 %24, i32 %25)
  br label %54

27:                                               ; preds = %2
  %28 = load %struct.link_params*, %struct.link_params** %4, align 8
  %29 = getelementptr inbounds %struct.link_params, %struct.link_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EEE_MODE_ENABLE_LPI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %struct.link_params*, %struct.link_params** %4, align 8
  %36 = getelementptr inbounds %struct.link_params, %struct.link_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EEE_MODE_OVERRIDE_NVRAM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.link_params*, %struct.link_params** %4, align 8
  %43 = getelementptr inbounds %struct.link_params, %struct.link_params* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EEE_MODE_OUTPUT_TIME, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* @NETIF_MSG_LINK, align 4
  %50 = call i32 @DP(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %95

53:                                               ; preds = %41, %34, %27
  br label %54

54:                                               ; preds = %53, %16
  %55 = load i32, i32* @SHMEM_EEE_TIMER_MASK, align 4
  %56 = load i32, i32* @SHMEM_EEE_TIME_OUTPUT_BIT, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %60 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.link_params*, %struct.link_params** %4, align 8
  %64 = getelementptr inbounds %struct.link_params, %struct.link_params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EEE_MODE_OUTPUT_TIME, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %54
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @SHMEM_EEE_TIMER_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @SHMEM_EEE_TIME_OUTPUT_BIT, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %78 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %94

81:                                               ; preds = %54
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @bnx2x_eee_time_to_nvram(i32 %82, i32* %7)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %95

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %91 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %69
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %85, %48
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @bnx2x_eee_calc_timer(%struct.link_params*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i64 @bnx2x_eee_time_to_nvram(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
