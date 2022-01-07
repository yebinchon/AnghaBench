; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pic32.c_pic32_sdhci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pic32.c_pic32_sdhci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pic32_sdhci_platform_data* }
%struct.pic32_sdhci_platform_data = type { i32 (i32, i32)* }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pic32_sdhci_priv = type { %struct.sdhci_host*, %struct.sdhci_host* }

@sdhci_pic32_pdata = common dso_local global i32 0, align 4
@ADMA_FIFO_RD_THSHLD = common dso_local global i32 0, align 4
@ADMA_FIFO_WR_THSHLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sys_clk\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Error getting clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Error enabling clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"base_clk\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to probe platform!\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Successfully added sdhci host\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"pic32-sdhci probe failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pic32_sdhci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_sdhci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.pic32_sdhci_priv*, align 8
  %7 = alloca %struct.pic32_sdhci_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %9, i32* @sdhci_pic32_pdata, i32 16)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %4, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %12 = call i64 @IS_ERR(%struct.sdhci_host* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.sdhci_host* %15)
  store i32 %16, i32* %8, align 4
  br label %147

17:                                               ; preds = %1
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %19 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %18)
  store %struct.sdhci_pltfm_host* %19, %struct.sdhci_pltfm_host** %5, align 8
  %20 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %21 = call %struct.pic32_sdhci_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %20)
  store %struct.pic32_sdhci_priv* %21, %struct.pic32_sdhci_priv** %6, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.pic32_sdhci_platform_data*, %struct.pic32_sdhci_platform_data** %24, align 8
  store %struct.pic32_sdhci_platform_data* %25, %struct.pic32_sdhci_platform_data** %7, align 8
  %26 = load %struct.pic32_sdhci_platform_data*, %struct.pic32_sdhci_platform_data** %7, align 8
  %27 = icmp ne %struct.pic32_sdhci_platform_data* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %17
  %29 = load %struct.pic32_sdhci_platform_data*, %struct.pic32_sdhci_platform_data** %7, align 8
  %30 = getelementptr inbounds %struct.pic32_sdhci_platform_data, %struct.pic32_sdhci_platform_data* %29, i32 0, i32 0
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = icmp ne i32 (i32, i32)* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.pic32_sdhci_platform_data*, %struct.pic32_sdhci_platform_data** %7, align 8
  %35 = getelementptr inbounds %struct.pic32_sdhci_platform_data, %struct.pic32_sdhci_platform_data* %34, i32 0, i32 0
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = load i32, i32* @ADMA_FIFO_RD_THSHLD, align 4
  %38 = load i32, i32* @ADMA_FIFO_WR_THSHLD, align 4
  %39 = call i32 %36(i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %144

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %28, %17
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i8* @devm_clk_get(%struct.TYPE_4__* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %48 = bitcast i8* %47 to %struct.sdhci_host*
  %49 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %50 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %49, i32 0, i32 0
  store %struct.sdhci_host* %48, %struct.sdhci_host** %50, align 8
  %51 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %52 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %51, i32 0, i32 0
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %52, align 8
  %54 = call i64 @IS_ERR(%struct.sdhci_host* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %44
  %57 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %58 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %57, i32 0, i32 0
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %58, align 8
  %60 = call i32 @PTR_ERR(%struct.sdhci_host* %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %144

64:                                               ; preds = %44
  %65 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %66 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %65, i32 0, i32 0
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %66, align 8
  %68 = call i32 @clk_prepare_enable(%struct.sdhci_host* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %144

75:                                               ; preds = %64
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i8* @devm_clk_get(%struct.TYPE_4__* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %79 = bitcast i8* %78 to %struct.sdhci_host*
  %80 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %81 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %80, i32 0, i32 1
  store %struct.sdhci_host* %79, %struct.sdhci_host** %81, align 8
  %82 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %83 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %82, i32 0, i32 1
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %83, align 8
  %85 = call i64 @IS_ERR(%struct.sdhci_host* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %75
  %88 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %89 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %88, i32 0, i32 1
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.sdhci_host* %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %139

95:                                               ; preds = %75
  %96 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %97 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %96, i32 0, i32 1
  %98 = load %struct.sdhci_host*, %struct.sdhci_host** %97, align 8
  %99 = call i32 @clk_prepare_enable(%struct.sdhci_host* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %134

106:                                              ; preds = %95
  %107 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %108 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mmc_of_parse(i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %134

114:                                              ; preds = %106
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %117 = call i32 @pic32_sdhci_probe_platform(%struct.platform_device* %115, %struct.pic32_sdhci_priv* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %134

124:                                              ; preds = %114
  %125 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %126 = call i32 @sdhci_add_host(%struct.sdhci_host* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %134

130:                                              ; preds = %124
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_info(%struct.TYPE_4__* %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %153

134:                                              ; preds = %129, %120, %113, %102
  %135 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %136 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %135, i32 0, i32 1
  %137 = load %struct.sdhci_host*, %struct.sdhci_host** %136, align 8
  %138 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %137)
  br label %139

139:                                              ; preds = %134, %87
  %140 = load %struct.pic32_sdhci_priv*, %struct.pic32_sdhci_priv** %6, align 8
  %141 = getelementptr inbounds %struct.pic32_sdhci_priv, %struct.pic32_sdhci_priv* %140, i32 0, i32 0
  %142 = load %struct.sdhci_host*, %struct.sdhci_host** %141, align 8
  %143 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %142)
  br label %144

144:                                              ; preds = %139, %71, %56, %42
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = call i32 @sdhci_pltfm_free(%struct.platform_device* %145)
  br label %147

147:                                              ; preds = %144, %14
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %147, %130
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pic32_sdhci_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @mmc_of_parse(i32) #1

declare dso_local i32 @pic32_sdhci_probe_platform(%struct.platform_device*, %struct.pic32_sdhci_priv*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
