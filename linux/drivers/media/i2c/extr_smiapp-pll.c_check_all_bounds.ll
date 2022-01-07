; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_smiapp-pll.c_check_all_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_smiapp-pll.c_check_all_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.smiapp_pll_limits = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.smiapp_pll_branch_limits = type { i32, i32, i32, i32, i32, i32 }
%struct.smiapp_pll = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.smiapp_pll_branch = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"pll_ip_clk_freq_hz\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pll_multiplier\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"pll_op_clk_freq_hz\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"op_sys_clk_div\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"op_sys_clk_freq_hz\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"op_pix_clk_freq_hz\00", align 1
@SMIAPP_PLL_FLAG_NO_OP_CLOCKS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"vt_sys_clk_freq_hz\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"vt_pix_clk_freq_hz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.smiapp_pll_limits*, %struct.smiapp_pll_branch_limits*, %struct.smiapp_pll*, %struct.smiapp_pll_branch*)* @check_all_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_all_bounds(%struct.device* %0, %struct.smiapp_pll_limits* %1, %struct.smiapp_pll_branch_limits* %2, %struct.smiapp_pll* %3, %struct.smiapp_pll_branch* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.smiapp_pll_limits*, align 8
  %9 = alloca %struct.smiapp_pll_branch_limits*, align 8
  %10 = alloca %struct.smiapp_pll*, align 8
  %11 = alloca %struct.smiapp_pll_branch*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.smiapp_pll_limits* %1, %struct.smiapp_pll_limits** %8, align 8
  store %struct.smiapp_pll_branch_limits* %2, %struct.smiapp_pll_branch_limits** %9, align 8
  store %struct.smiapp_pll* %3, %struct.smiapp_pll** %10, align 8
  store %struct.smiapp_pll_branch* %4, %struct.smiapp_pll_branch** %11, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load %struct.smiapp_pll*, %struct.smiapp_pll** %10, align 8
  %15 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %18 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %21 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bounds_check(%struct.device* %13, i32 %16, i32 %19, i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %5
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load %struct.smiapp_pll*, %struct.smiapp_pll** %10, align 8
  %29 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %32 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %35 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bounds_check(%struct.device* %27, i32 %30, i32 %33, i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %26, %5
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load %struct.smiapp_pll*, %struct.smiapp_pll** %10, align 8
  %44 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %47 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %50 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bounds_check(%struct.device* %42, i32 %45, i32 %48, i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %41, %38
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = load %struct.smiapp_pll_branch*, %struct.smiapp_pll_branch** %11, align 8
  %59 = getelementptr inbounds %struct.smiapp_pll_branch, %struct.smiapp_pll_branch* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.smiapp_pll_branch_limits*, %struct.smiapp_pll_branch_limits** %9, align 8
  %62 = getelementptr inbounds %struct.smiapp_pll_branch_limits, %struct.smiapp_pll_branch_limits* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.smiapp_pll_branch_limits*, %struct.smiapp_pll_branch_limits** %9, align 8
  %65 = getelementptr inbounds %struct.smiapp_pll_branch_limits, %struct.smiapp_pll_branch_limits* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bounds_check(%struct.device* %57, i32 %60, i32 %63, i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %56, %53
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = load %struct.smiapp_pll_branch*, %struct.smiapp_pll_branch** %11, align 8
  %74 = getelementptr inbounds %struct.smiapp_pll_branch, %struct.smiapp_pll_branch* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.smiapp_pll_branch_limits*, %struct.smiapp_pll_branch_limits** %9, align 8
  %77 = getelementptr inbounds %struct.smiapp_pll_branch_limits, %struct.smiapp_pll_branch_limits* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.smiapp_pll_branch_limits*, %struct.smiapp_pll_branch_limits** %9, align 8
  %80 = getelementptr inbounds %struct.smiapp_pll_branch_limits, %struct.smiapp_pll_branch_limits* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bounds_check(%struct.device* %72, i32 %75, i32 %78, i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %71, %68
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %83
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = load %struct.smiapp_pll_branch*, %struct.smiapp_pll_branch** %11, align 8
  %89 = getelementptr inbounds %struct.smiapp_pll_branch, %struct.smiapp_pll_branch* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.smiapp_pll_branch_limits*, %struct.smiapp_pll_branch_limits** %9, align 8
  %92 = getelementptr inbounds %struct.smiapp_pll_branch_limits, %struct.smiapp_pll_branch_limits* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.smiapp_pll_branch_limits*, %struct.smiapp_pll_branch_limits** %9, align 8
  %95 = getelementptr inbounds %struct.smiapp_pll_branch_limits, %struct.smiapp_pll_branch_limits* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bounds_check(%struct.device* %87, i32 %90, i32 %93, i32 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %86, %83
  %99 = load %struct.smiapp_pll*, %struct.smiapp_pll** %10, align 8
  %100 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SMIAPP_PLL_FLAG_NO_OP_CLOCKS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %145

107:                                              ; preds = %98
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %107
  %111 = load %struct.device*, %struct.device** %7, align 8
  %112 = load %struct.smiapp_pll*, %struct.smiapp_pll** %10, align 8
  %113 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %117 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %121 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @bounds_check(%struct.device* %111, i32 %115, i32 %119, i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %110, %107
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %125
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = load %struct.smiapp_pll*, %struct.smiapp_pll** %10, align 8
  %131 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %135 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.smiapp_pll_limits*, %struct.smiapp_pll_limits** %8, align 8
  %139 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @bounds_check(%struct.device* %129, i32 %133, i32 %137, i32 %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %128, %125
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %105
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @bounds_check(%struct.device*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
