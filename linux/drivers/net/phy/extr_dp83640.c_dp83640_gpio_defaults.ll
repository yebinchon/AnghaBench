; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_gpio_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_gpio_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_pin_desc = type { i32, i32, i32, i32 }

@DP83640_N_PINS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"GPIO%d\00", align 1
@GPIO_TABLE_SIZE = common dso_local global i32 0, align 4
@gpio_tab = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"gpio_tab[%d]=%hu out of range\00", align 1
@CALIBRATE_GPIO = common dso_local global i64 0, align 8
@PTP_PF_PHYSYNC = common dso_local global i32 0, align 4
@PEROUT_GPIO = common dso_local global i64 0, align 8
@PTP_PF_PEROUT = common dso_local global i32 0, align 4
@EXTTS0_GPIO = common dso_local global i32 0, align 4
@PTP_PF_EXTTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptp_pin_desc*)* @dp83640_gpio_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp83640_gpio_defaults(%struct.ptp_pin_desc* %0) #0 {
  %2 = alloca %struct.ptp_pin_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ptp_pin_desc* %0, %struct.ptp_pin_desc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @DP83640_N_PINS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %10, i64 %12
  %14 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 1, %16
  %18 = call i32 @snprintf(i32 %15, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %20, i64 %22
  %24 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @GPIO_TABLE_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i32*, i32** @gpio_tab, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = load i32*, i32** @gpio_tab, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DP83640_N_PINS, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40, %33
  %49 = load i32, i32* %3, align 4
  %50 = load i32*, i32** @gpio_tab, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54)
  br label %122

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %29

60:                                               ; preds = %29
  %61 = load i32*, i32** @gpio_tab, align 8
  %62 = load i64, i64* @CALIBRATE_GPIO, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @PTP_PF_PHYSYNC, align 4
  %67 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %67, i64 %69
  %71 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %70, i32 0, i32 2
  store i32 %66, i32* %71, align 4
  %72 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %72, i64 %74
  %76 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load i32*, i32** @gpio_tab, align 8
  %78 = load i64, i64* @PEROUT_GPIO, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* @PTP_PF_PEROUT, align 4
  %83 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %83, i64 %85
  %87 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %86, i32 0, i32 2
  store i32 %82, i32* %87, align 4
  %88 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %88, i64 %90
  %92 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load i32, i32* @EXTTS0_GPIO, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %119, %60
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @GPIO_TABLE_SIZE, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %94
  %99 = load i32*, i32** @gpio_tab, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @PTP_PF_EXTTS, align 4
  %106 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %2, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %106, i64 %108
  %110 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %109, i32 0, i32 2
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @EXTTS0_GPIO, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %114, i64 %116
  %118 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %117, i32 0, i32 1
  store i32 %113, i32* %118, align 4
  br label %119

119:                                              ; preds = %98
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %94

122:                                              ; preds = %48, %94
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
