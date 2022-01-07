; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_smiapp-pll.c_print_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_smiapp-pll.c_print_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.smiapp_pll = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"pre_pll_clk_div\09%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"pll_multiplier \09%u\0A\00", align 1
@SMIAPP_PLL_FLAG_NO_OP_CLOCKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"op_sys_clk_div \09%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"op_pix_clk_div \09%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"vt_sys_clk_div \09%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"vt_pix_clk_div \09%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ext_clk_freq_hz \09%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"pll_ip_clk_freq_hz \09%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"pll_op_clk_freq_hz \09%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"op_sys_clk_freq_hz \09%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"op_pix_clk_freq_hz \09%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"vt_sys_clk_freq_hz \09%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"vt_pix_clk_freq_hz \09%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.smiapp_pll*)* @print_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pll(%struct.device* %0, %struct.smiapp_pll* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.smiapp_pll*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.smiapp_pll* %1, %struct.smiapp_pll** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %7 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(%struct.device* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %12 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %16 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SMIAPP_PLL_FLAG_NO_OP_CLOCKS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %24 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %30 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %21, %2
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %37 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %43 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %49 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %54 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %59 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  %62 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %63 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SMIAPP_PLL_FLAG_NO_OP_CLOCKS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %34
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %71 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %73)
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %77 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %68, %34
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %84 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_dbg(%struct.device* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %86)
  %88 = load %struct.device*, %struct.device** %3, align 8
  %89 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %90 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %92)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
