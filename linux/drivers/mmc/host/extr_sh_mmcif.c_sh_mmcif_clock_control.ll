; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32, i32 }
%struct.device = type { %struct.sh_mmcif_plat_data* }
%struct.sh_mmcif_plat_data = type { i32 }

@MMCIF_CE_CLK_CTRL = common dso_local global i32 0, align 4
@CLK_ENABLE = common dso_local global i32 0, align 4
@CLK_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"clk %u/%u (%u, 0x%x)\0A\00", align 1
@CLK_SUP_PCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mmcif_host*, i32)* @sh_mmcif_clock_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_clock_control(%struct.sh_mmcif_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_mmcif_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sh_mmcif_plat_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %18 = call %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host* %17)
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.sh_mmcif_plat_data*, %struct.sh_mmcif_plat_data** %20, align 8
  store %struct.sh_mmcif_plat_data* %21, %struct.sh_mmcif_plat_data** %6, align 8
  %22 = load %struct.sh_mmcif_plat_data*, %struct.sh_mmcif_plat_data** %6, align 8
  %23 = icmp ne %struct.sh_mmcif_plat_data* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.sh_mmcif_plat_data*, %struct.sh_mmcif_plat_data** %6, align 8
  %26 = getelementptr inbounds %struct.sh_mmcif_plat_data, %struct.sh_mmcif_plat_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  store i32 %30, i32* %7, align 4
  %31 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %32 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_get_rate(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %36 = load i32, i32* @MMCIF_CE_CLK_CTRL, align 4
  %37 = load i32, i32* @CLK_ENABLE, align 4
  %38 = call i32 @sh_mmcif_bitclr(%struct.sh_mmcif_host* %35, i32 %36, i32 %37)
  %39 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %40 = load i32, i32* @MMCIF_CE_CLK_CTRL, align 4
  %41 = load i32, i32* @CLK_CLEAR, align 4
  %42 = call i32 @sh_mmcif_bitclr(%struct.sh_mmcif_host* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %29
  br label %149

46:                                               ; preds = %29
  %47 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %48 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %120

51:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i32 31, i32* %16, align 4
  br label %52

52:                                               ; preds = %99, %51
  %53 = load i32, i32* %16, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %59 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  br label %99

64:                                               ; preds = %55
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  %67 = shl i32 1, %66
  store i32 %67, i32* %13, align 4
  %68 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %69 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %13, align 4
  %73 = mul i32 %71, %72
  %74 = call i32 @clk_round_rate(i32 %70, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %13, align 4
  %77 = udiv i32 %75, %76
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %64
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %4, align 4
  %84 = sub i32 %82, %83
  br label %89

85:                                               ; preds = %64
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub i32 %86, %87
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i32 [ %84, %81 ], [ %88, %85 ]
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ule i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %89
  br label %99

99:                                               ; preds = %98, %63
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %16, align 4
  br label %52

102:                                              ; preds = %52
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 1
  %107 = shl i32 1, %106
  %108 = udiv i32 %104, %107
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @dev_dbg(%struct.device* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %114 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @clk_set_rate(i32 %115, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = shl i32 %118, 16
  store i32 %119, i32* %9, align 4
  br label %138

120:                                              ; preds = %46
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @CLK_SUP_PCLK, align 4
  store i32 %128, i32* %9, align 4
  br label %137

129:                                              ; preds = %123, %120
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %4, align 4
  %132 = call i64 @DIV_ROUND_UP(i32 %130, i32 %131)
  %133 = sub nsw i64 %132, 1
  %134 = call i32 @fls(i64 %133)
  %135 = sub nsw i32 %134, 1
  %136 = shl i32 %135, 16
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %129, %127
  br label %138

138:                                              ; preds = %137, %102
  %139 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %140 = load i32, i32* @MMCIF_CE_CLK_CTRL, align 4
  %141 = load i32, i32* @CLK_CLEAR, align 4
  %142 = load i32, i32* %9, align 4
  %143 = and i32 %141, %142
  %144 = call i32 @sh_mmcif_bitset(%struct.sh_mmcif_host* %139, i32 %140, i32 %143)
  %145 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %146 = load i32, i32* @MMCIF_CE_CLK_CTRL, align 4
  %147 = load i32, i32* @CLK_ENABLE, align 4
  %148 = call i32 @sh_mmcif_bitset(%struct.sh_mmcif_host* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %138, %45
  ret void
}

declare dso_local %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @sh_mmcif_bitclr(%struct.sh_mmcif_host*, i32, i32) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sh_mmcif_bitset(%struct.sh_mmcif_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
