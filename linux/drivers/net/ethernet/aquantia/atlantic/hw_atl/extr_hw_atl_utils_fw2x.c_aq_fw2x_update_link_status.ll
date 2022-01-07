; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_update_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_update_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.aq_hw_link_status_s }
%struct.aq_hw_link_status_s = type { i32 }

@HW_ATL_FW2X_MPI_STATE_ADDR = common dso_local global i32 0, align 4
@FW2X_RATE_100M = common dso_local global i32 0, align 4
@FW2X_RATE_1G = common dso_local global i32 0, align 4
@FW2X_RATE_2G5 = common dso_local global i32 0, align 4
@FW2X_RATE_5G = common dso_local global i32 0, align 4
@FW2X_RATE_10G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @aq_fw2x_update_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_fw2x_update_link_status(%struct.aq_hw_s* %0) #0 {
  %2 = alloca %struct.aq_hw_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.aq_hw_link_status_s*, align 8
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %2, align 8
  %6 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %7 = load i32, i32* @HW_ATL_FW2X_MPI_STATE_ADDR, align 4
  %8 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FW2X_RATE_100M, align 4
  %11 = load i32, i32* @FW2X_RATE_1G, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FW2X_RATE_2G5, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FW2X_RATE_5G, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FW2X_RATE_10G, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %9, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %21 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %20, i32 0, i32 0
  store %struct.aq_hw_link_status_s* %21, %struct.aq_hw_link_status_s** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FW2X_RATE_10G, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %5, align 8
  %31 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %30, i32 0, i32 0
  store i32 10000, i32* %31, align 4
  br label %71

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FW2X_RATE_5G, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %5, align 8
  %39 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %38, i32 0, i32 0
  store i32 5000, i32* %39, align 4
  br label %70

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @FW2X_RATE_2G5, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %5, align 8
  %47 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %46, i32 0, i32 0
  store i32 2500, i32* %47, align 4
  br label %69

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FW2X_RATE_1G, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %5, align 8
  %55 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %54, i32 0, i32 0
  store i32 1000, i32* %55, align 4
  br label %68

56:                                               ; preds = %48
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @FW2X_RATE_100M, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %5, align 8
  %63 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %62, i32 0, i32 0
  store i32 100, i32* %63, align 4
  br label %67

64:                                               ; preds = %56
  %65 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %5, align 8
  %66 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %65, i32 0, i32 0
  store i32 10000, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69, %37
  br label %71

71:                                               ; preds = %70, %29
  br label %75

72:                                               ; preds = %1
  %73 = load %struct.aq_hw_link_status_s*, %struct.aq_hw_link_status_s** %5, align 8
  %74 = getelementptr inbounds %struct.aq_hw_link_status_s, %struct.aq_hw_link_status_s* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %71
  ret i32 0
}

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
