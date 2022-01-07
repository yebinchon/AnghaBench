; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_resource_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_resource_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i64, i8*, i8*, i8*, %struct.TYPE_2__*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not get ahb clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not get mmc clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not get output clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not get sample clock\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@sunxi_mmc_irq = common dso_local global i32 0, align 4
@sunxi_mmc_handle_manual_stop = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"sunxi-mmc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_mmc_host*, %struct.platform_device*)* @sunxi_mmc_resource_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_resource_request(%struct.sunxi_mmc_host* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sunxi_mmc_host*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.TYPE_2__* @of_device_get_match_data(i32* %8)
  %10 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %10, i32 0, i32 4
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %11, align 8
  %12 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %13 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %182

19:                                               ; preds = %2
  %20 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %21 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mmc_regulator_get_supply(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %182

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call i32 @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  %34 = call i8* @devm_ioremap_resource(i32* %30, i32 %33)
  %35 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %36 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %38 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %37, i32 0, i32 7
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %44 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %43, i32 0, i32 7
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %3, align 4
  br label %182

47:                                               ; preds = %28
  %48 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i8* @devm_clk_get(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %52 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %54 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %53, i32 0, i32 6
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %63 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %62, i32 0, i32 6
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %3, align 4
  br label %182

66:                                               ; preds = %47
  %67 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i8* @devm_clk_get(i32* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %71 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %73 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @IS_ERR(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %82 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %81, i32 0, i32 5
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %3, align 4
  br label %182

85:                                               ; preds = %66
  %86 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %87 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %131

92:                                               ; preds = %85
  %93 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i8* @devm_clk_get(i32* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %97 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %99 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @IS_ERR(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %92
  %104 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %108 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @PTR_ERR(i8* %109)
  store i32 %110, i32* %3, align 4
  br label %182

111:                                              ; preds = %92
  %112 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i8* @devm_clk_get(i32* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %115 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %116 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %118 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @IS_ERR(i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %111
  %123 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %126 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %127 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @PTR_ERR(i8* %128)
  store i32 %129, i32* %3, align 4
  br label %182

130:                                              ; preds = %111
  br label %131

131:                                              ; preds = %130, %85
  %132 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i8* @devm_reset_control_get_optional_exclusive(i32* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %135 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %136 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %138 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @PTR_ERR(i8* %139)
  %141 = load i32, i32* @EPROBE_DEFER, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %131
  %145 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %146 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @PTR_ERR(i8* %147)
  store i32 %148, i32* %3, align 4
  br label %182

149:                                              ; preds = %131
  %150 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %151 = call i32 @sunxi_mmc_enable(%struct.sunxi_mmc_host* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %182

156:                                              ; preds = %149
  %157 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %158 = call i64 @platform_get_irq(%struct.platform_device* %157, i32 0)
  %159 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %160 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %162 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp sle i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %6, align 4
  br label %178

168:                                              ; preds = %156
  %169 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %172 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @sunxi_mmc_irq, align 4
  %175 = load i32, i32* @sunxi_mmc_handle_manual_stop, align 4
  %176 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %177 = call i32 @devm_request_threaded_irq(i32* %170, i64 %173, i32 %174, i32 %175, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), %struct.sunxi_mmc_host* %176)
  store i32 %177, i32* %3, align 4
  br label %182

178:                                              ; preds = %165
  %179 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %180 = call i32 @sunxi_mmc_disable(%struct.sunxi_mmc_host* %179)
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %178, %168, %154, %144, %122, %103, %77, %58, %42, %26, %16
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(i32*) #1

declare dso_local i32 @mmc_regulator_get_supply(i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, i32) #1

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @devm_reset_control_get_optional_exclusive(i32*, i8*) #1

declare dso_local i32 @sunxi_mmc_enable(%struct.sunxi_mmc_host*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32, i32, i8*, %struct.sunxi_mmc_host*) #1

declare dso_local i32 @sunxi_mmc_disable(%struct.sunxi_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
