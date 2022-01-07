; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_mpi_get_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_mpi_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.aq_hw_link_status_s }
%struct.aq_hw_link_status_s = type { i32 }

@HW_ATL_MPI_SPEED_SHIFT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_atl_utils_mpi_get_link_status(%struct.aq_hw_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aq_hw_link_status_s*, align 8
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  %7 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %8 = call i32 @hw_atl_utils_mpi_get_state(%struct.aq_hw_s* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @HW_ATL_MPI_SPEED_SHIFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %13 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %12, i32 0, i32 0
  store %struct.aq_hw_link_status_s* %13, %struct.aq_hw_link_status_s** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %6, align 8
  %18 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %36 [
    i32 132, label %21
    i32 129, label %24
    i32 128, label %24
    i32 130, label %27
    i32 131, label %30
    i32 133, label %33
  ]

21:                                               ; preds = %19
  %22 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %6, align 8
  %23 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %22, i32 0, i32 0
  store i32 10000, i32* %23, align 4
  br label %39

24:                                               ; preds = %19, %19
  %25 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %6, align 8
  %26 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %25, i32 0, i32 0
  store i32 5000, i32* %26, align 4
  br label %39

27:                                               ; preds = %19
  %28 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %6, align 8
  %29 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %28, i32 0, i32 0
  store i32 2500, i32* %29, align 4
  br label %39

30:                                               ; preds = %19
  %31 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %6, align 8
  %32 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %31, i32 0, i32 0
  store i32 1000, i32* %32, align 4
  br label %39

33:                                               ; preds = %19
  %34 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %6, align 8
  %35 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %34, i32 0, i32 0
  store i32 100, i32* %35, align 4
  br label %39

36:                                               ; preds = %19
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %33, %30, %27, %24, %21
  br label %40

40:                                               ; preds = %39, %16
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @hw_atl_utils_mpi_get_state(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
