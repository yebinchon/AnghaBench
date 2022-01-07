; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_clk_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_clk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i64, i64, i32 }
%struct.mmc_ios = type { i64, i64 }

@USDHI6_SD_INFO2 = common dso_local global i32 0, align 4
@USDHI6_SD_INFO2_SCLKDIVEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SD bus busy, clock set aborted\0A\00", align 1
@USDHI6_SD_CLK_CTRL = common dso_local global i32 0, align 4
@USDHI6_SD_CLK_CTRL_DIV_MASK = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"target %lu, div %u, set %lu\0A\00", align 1
@USDHI6_SD_CLK_CTRL_SCLKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usdhi6_host*, %struct.mmc_ios*)* @usdhi6_clk_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usdhi6_clk_set(%struct.usdhi6_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.usdhi6_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %10 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  store i32 1000, i32* %7, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %18 = load i32, i32* @USDHI6_SD_INFO2, align 4
  %19 = call i32 @usdhi6_read(%struct.usdhi6_host* %17, i32 %18)
  %20 = load i32, i32* @USDHI6_SD_INFO2_SCLKDIVEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %29

24:                                               ; preds = %16
  %25 = call i32 @usleep_range(i32 10, i32 100)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %7, align 4
  br label %13

29:                                               ; preds = %23, %13
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %34 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mmc_dev(i32 %35)
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %172

38:                                               ; preds = %29
  %39 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %40 = load i32, i32* @USDHI6_SD_CLK_CTRL, align 4
  %41 = call i32 @usdhi6_read(%struct.usdhi6_host* %39, i32 %40)
  %42 = load i32, i32* @USDHI6_SD_CLK_CTRL_DIV_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  store i32 %44, i32* %6, align 4
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %111

47:                                               ; preds = %38
  %48 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %49 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ule i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %61 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, 255
  store i32 %64, i32* %6, align 4
  br label %70

65:                                               ; preds = %53
  %66 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %67 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = udiv i64 %68, 2
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %65, %59
  br label %90

71:                                               ; preds = %47
  %72 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %73 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @DIV_ROUND_UP(i32 %75, i64 %76)
  %78 = call i64 @roundup_pow_of_two(i32 %77)
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = lshr i64 %79, 2
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = or i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %6, align 4
  %85 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %86 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = udiv i64 %87, %88
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %71, %70
  %91 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %92 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %172

97:                                               ; preds = %90
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %100 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %102 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @mmc_dev(i32 %103)
  %105 = load i64, i64* %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, 255
  %108 = shl i32 %107, 2
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %105, i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %97, %38
  %112 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %113 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %128, label %117

117:                                              ; preds = %111
  %118 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %119 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %122 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %128, label %125

125:                                              ; preds = %117
  %126 = load i64, i64* %5, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %125, %117, %111
  %129 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %130 = load i32, i32* @USDHI6_SD_CLK_CTRL, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @USDHI6_SD_CLK_CTRL_SCLKEN, align 4
  %133 = xor i32 %132, -1
  %134 = and i32 %131, %133
  %135 = call i32 @usdhi6_write(%struct.usdhi6_host* %129, i32 %130, i32 %134)
  br label %136

136:                                              ; preds = %128, %125
  %137 = load i64, i64* %5, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %141 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  br label %172

142:                                              ; preds = %136
  %143 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %144 = load i32, i32* @USDHI6_SD_CLK_CTRL, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @usdhi6_write(%struct.usdhi6_host* %143, i32 %144, i32 %145)
  %147 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %148 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %5, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %165, label %152

152:                                              ; preds = %142
  %153 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %154 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %157 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %165, label %160

160:                                              ; preds = %152
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @USDHI6_SD_CLK_CTRL_SCLKEN, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %160, %152, %142
  %166 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %167 = load i32, i32* @USDHI6_SD_CLK_CTRL, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @USDHI6_SD_CLK_CTRL_SCLKEN, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @usdhi6_write(%struct.usdhi6_host* %166, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %32, %96, %139, %165, %160
  ret void
}

declare dso_local i32 @usdhi6_read(%struct.usdhi6_host*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i64) #1

declare dso_local i32 @usdhi6_write(%struct.usdhi6_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
