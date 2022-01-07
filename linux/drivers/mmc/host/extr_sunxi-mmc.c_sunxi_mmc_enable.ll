; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Couldn't reset the MMC controller (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Couldn't enable the bus clocks (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Enable mmc clk err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Enable output clk err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Enable sample clk err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_mmc_host*)* @sunxi_mmc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_enable(%struct.sunxi_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sunxi_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %3, align 8
  %5 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @IS_ERR(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @reset_control_reset(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_prepare_enable(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %104

38:                                               ; preds = %25
  %39 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_prepare_enable(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %99

51:                                               ; preds = %38
  %52 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %53 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_prepare_enable(i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %94

64:                                               ; preds = %51
  %65 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %66 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @clk_prepare_enable(i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %73 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  br label %89

77:                                               ; preds = %64
  %78 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %79 = call i32 @sunxi_mmc_reset_host(%struct.sunxi_mmc_host* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %84

83:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %117

84:                                               ; preds = %82
  %85 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %86 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @clk_disable_unprepare(i32 %87)
  br label %89

89:                                               ; preds = %84, %71
  %90 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %91 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @clk_disable_unprepare(i32 %92)
  br label %94

94:                                               ; preds = %89, %58
  %95 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %96 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @clk_disable_unprepare(i32 %97)
  br label %99

99:                                               ; preds = %94, %45
  %100 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %101 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @clk_disable_unprepare(i32 %102)
  br label %104

104:                                              ; preds = %99, %32
  %105 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %106 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @IS_ERR(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %112 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @reset_control_assert(i32 %113)
  br label %115

115:                                              ; preds = %110, %104
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %83, %17
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @sunxi_mmc_reset_host(%struct.sunxi_mmc_host*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
