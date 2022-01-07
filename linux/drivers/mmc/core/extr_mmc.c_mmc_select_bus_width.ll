; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__, %struct.mmc_host* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_host = type { i32 }

@mmc_select_bus_width.ext_csd_bits = internal global [2 x i32] [i32 130, i32 131], align 4
@mmc_select_bus_width.bus_widths = internal global [2 x i32] [i32 128, i32 129], align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_BUS_WIDTH = common dso_local global i32 0, align 4
@MMC_CAP_BUS_WIDTH_TEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: switch to bus width %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_select_bus_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_select_bus_width(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %8 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 1
  %10 = load %struct.mmc_host*, %struct.mmc_host** %9, align 8
  store %struct.mmc_host* %10, %struct.mmc_host** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %12 = call i32 @mmc_can_ext_csd(%struct.mmc_card* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %19 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %92

24:                                               ; preds = %14
  %25 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %87, %24
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @mmc_select_bus_width.bus_widths, i64 0, i64 0))
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %90

37:                                               ; preds = %33
  %38 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %39 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %40 = load i32, i32* @EXT_CSD_BUS_WIDTH, align 4
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* @mmc_select_bus_width.ext_csd_bits, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mmc_switch(%struct.mmc_card* %38, i32 %39, i32 %40, i32 %44, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %87

53:                                               ; preds = %37
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* @mmc_select_bus_width.bus_widths, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  %58 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @mmc_set_bus_width(%struct.mmc_host* %58, i32 %59)
  %61 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MMC_CAP_BUS_WIDTH_TEST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %53
  %68 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @mmc_compare_ext_csds(%struct.mmc_card* %68, i32 %69)
  store i32 %70, i32* %7, align 4
  br label %75

71:                                               ; preds = %53
  %72 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @mmc_bus_test(%struct.mmc_card* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %7, align 4
  br label %90

80:                                               ; preds = %75
  %81 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %82 = call i32 @mmc_hostname(%struct.mmc_host* %81)
  %83 = load i32, i32* %6, align 4
  %84 = shl i32 1, %83
  %85 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32, i32* %5, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %33

90:                                               ; preds = %78, %33
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %23
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @mmc_can_ext_csd(%struct.mmc_card*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mmc_switch(%struct.mmc_card*, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_set_bus_width(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_compare_ext_csds(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_bus_test(%struct.mmc_card*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
