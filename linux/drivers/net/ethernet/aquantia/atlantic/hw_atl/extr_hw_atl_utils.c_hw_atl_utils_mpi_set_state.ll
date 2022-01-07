; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_mpi_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_mpi_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.hw_atl_utils_mbox_header = type { i64 }

@HW_ATL_MPI_CONTROL_ADR = common dso_local global i32 0, align 4
@MPI_RESET = common dso_local global i32 0, align 4
@hw_atl_utils_get_mpi_mbox_tid = common dso_local global i32 0, align 4
@MPI_DEINIT = common dso_local global i32 0, align 4
@MPI_POWER = common dso_local global i32 0, align 4
@HW_ATL_MPI_DIRTY_WAKE_MSK = common dso_local global i64 0, align 8
@HW_ATL_MPI_STATE_MSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32)* @hw_atl_utils_mpi_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_utils_mpi_set_state(%struct.aq_hw_s* %0, i32 %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.hw_atl_utils_mbox_header, align 8
  %8 = alloca i64, align 8
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %9 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %10 = load i32, i32* @HW_ATL_MPI_CONTROL_ADR, align 4
  %11 = call i64 @aq_hw_read_reg(%struct.aq_hw_s* %9, i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MPI_RESET, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %17 = call i32 @hw_atl_utils_mpi_read_mbox(%struct.aq_hw_s* %16, %struct.hw_atl_utils_mbox_header* %7)
  %18 = getelementptr inbounds %struct.hw_atl_utils_mbox_header, %struct.hw_atl_utils_mbox_header* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* @hw_atl_utils_get_mpi_mbox_tid, align 4
  %21 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %22 = getelementptr inbounds %struct.hw_atl_utils_mbox_header, %struct.hw_atl_utils_mbox_header* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.hw_atl_utils_mbox_header, %struct.hw_atl_utils_mbox_header* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @readx_poll_timeout_atomic(i32 %20, %struct.aq_hw_s* %21, i64 %23, i32 %28, i32 1000, i32 100000)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %66

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MPI_DEINIT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MPI_POWER, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = load i64, i64* @HW_ATL_MPI_DIRTY_WAKE_MSK, align 8
  %44 = load i64, i64* %8, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %51

46:                                               ; preds = %38
  %47 = load i64, i64* @HW_ATL_MPI_DIRTY_WAKE_MSK, align 8
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %8, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @HW_ATL_MPI_STATE_MSK, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  store i64 %55, i64* %8, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* @HW_ATL_MPI_STATE_MSK, align 8
  %59 = and i64 %57, %58
  %60 = load i64, i64* %8, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %63 = load i32, i32* @HW_ATL_MPI_CONTROL_ADR, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %62, i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %51, %32
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_utils_mpi_read_mbox(%struct.aq_hw_s*, %struct.hw_atl_utils_mbox_header*) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i64, i32, i32, i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
