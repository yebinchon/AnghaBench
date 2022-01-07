; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_MPI_DAISY_CHAIN_STATUS = common dso_local global i32 0, align 4
@HW_ATL_MPI_BOOT_EXIT_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Neither RBL nor FLB firmware started\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HW_ATL_FW_VER_1X = common dso_local global i32 0, align 4
@HW_ATL_MPI_FW_VERSION = common dso_local global i32 0, align 4
@MPI_DEINIT = common dso_local global i32 0, align 4
@hw_atl_utils_mpi_get_state = common dso_local global i32 0, align 4
@HW_ATL_MPI_STATE_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_atl_utils_soft_reset(%struct.aq_hw_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 1000
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %14 = load i32, i32* @HW_ATL_MPI_DAISY_CHAIN_STATUS, align 4
  %15 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %17 = load i32, i32* @HW_ATL_MPI_BOOT_EXIT_CODE, align 4
  %18 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 100663296
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %12
  br label %29

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %9

29:                                               ; preds = %24, %9
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 1000
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 @aq_pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %41 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @HW_ATL_FW_VER_1X, align 4
  %43 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %44 = load i32, i32* @HW_ATL_MPI_FW_VERSION, align 4
  %45 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %43, i32 %44)
  %46 = call i32 @hw_atl_utils_ver_match(i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %49 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %50 = load i32, i32* @MPI_DEINIT, align 4
  %51 = call i32 @hw_atl_utils_mpi_set_state(%struct.aq_hw_s* %49, i32 %50)
  %52 = load i32, i32* @hw_atl_utils_mpi_get_state, align 4
  %53 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @HW_ATL_MPI_STATE_MSK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @MPI_DEINIT, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @readx_poll_timeout_atomic(i32 %52, %struct.aq_hw_s* %53, i32 %54, i32 %60, i32 10, i32 10000)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %78

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %36
  %68 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %69 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %74 = call i32 @hw_atl_utils_soft_reset_rbl(%struct.aq_hw_s* %73)
  store i32 %74, i32* %2, align 4
  br label %78

75:                                               ; preds = %67
  %76 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %77 = call i32 @hw_atl_utils_soft_reset_flb(%struct.aq_hw_s* %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %72, %64, %32
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_pr_err(i8*) #1

declare dso_local i32 @hw_atl_utils_ver_match(i32, i32) #1

declare dso_local i32 @hw_atl_utils_mpi_set_state(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i32, i32, i32, i32) #1

declare dso_local i32 @hw_atl_utils_soft_reset_rbl(%struct.aq_hw_s*) #1

declare dso_local i32 @hw_atl_utils_soft_reset_flb(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
