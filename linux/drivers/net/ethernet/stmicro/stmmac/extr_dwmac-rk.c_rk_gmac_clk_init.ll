; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plat_stmmacenet_data = type { i64, %struct.rk_priv_data* }
%struct.rk_priv_data = type { i32, i64, i8*, i64, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"mac_clk_rx\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot get clock %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mac_clk_tx\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"aclk_mac\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pclk_mac\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"stmmaceth\00", align 1
@PHY_INTERFACE_MODE_RMII = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"clk_mac_ref\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"clk_mac_refout\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"clk_mac_speed\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"clock input from PHY\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Cannot get PHY clock: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plat_stmmacenet_data*)* @rk_gmac_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_gmac_clk_init(%struct.plat_stmmacenet_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.plat_stmmacenet_data*, align 8
  %4 = alloca %struct.rk_priv_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.plat_stmmacenet_data* %0, %struct.plat_stmmacenet_data** %3, align 8
  %7 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %3, align 8
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %7, i32 0, i32 1
  %9 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  store %struct.rk_priv_data* %9, %struct.rk_priv_data** %4, align 8
  %10 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %11 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %10, i32 0, i32 13
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %15 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i8* @devm_clk_get(%struct.device* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %19 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %18, i32 0, i32 12
  store i8* %17, i8** %19, align 8
  %20 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %21 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %20, i32 0, i32 12
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i8* @devm_clk_get(%struct.device* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %32 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %31, i32 0, i32 11
  store i8* %30, i8** %32, align 8
  %33 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %34 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %33, i32 0, i32 11
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %28
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call i8* @devm_clk_get(%struct.device* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %45 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  %46 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %47 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %46, i32 0, i32 10
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i8* @devm_clk_get(%struct.device* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %58 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  %59 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %60 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %59, i32 0, i32 9
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %54
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = call i8* @devm_clk_get(%struct.device* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %70 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %71 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %73 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @IS_ERR(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %67
  %81 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %82 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PHY_INTERFACE_MODE_RMII, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %80
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = call i8* @devm_clk_get(%struct.device* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %89 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %90 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %89, i32 0, i32 8
  store i8* %88, i8** %90, align 8
  %91 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %92 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %91, i32 0, i32 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @IS_ERR(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %86
  %100 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %101 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %99
  %105 = load %struct.device*, %struct.device** %5, align 8
  %106 = call i8* @devm_clk_get(%struct.device* %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %107 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %108 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %110 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %109, i32 0, i32 7
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %104
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118, %80
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = call i8* @devm_clk_get(%struct.device* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %122 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %123 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  %124 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %125 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %124, i32 0, i32 6
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @IS_ERR(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %119
  %133 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %134 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 @dev_info(%struct.device* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %152

140:                                              ; preds = %132
  %141 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %142 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @PHY_INTERFACE_MODE_RMII, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %148 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @clk_set_rate(i8* %149, i32 50000000)
  br label %151

151:                                              ; preds = %146, %140
  br label %152

152:                                              ; preds = %151, %137
  %153 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %3, align 8
  %154 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %189

157:                                              ; preds = %152
  %158 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %159 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %189

162:                                              ; preds = %157
  %163 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %3, align 8
  %164 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @of_clk_get(i64 %165, i32 0)
  %167 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %168 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  %169 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %170 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @IS_ERR(i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %162
  %175 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %176 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @PTR_ERR(i8* %177)
  store i32 %178, i32* %6, align 4
  %179 = load %struct.device*, %struct.device** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %2, align 4
  br label %190

184:                                              ; preds = %162
  %185 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %186 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @clk_set_rate(i8* %187, i32 50000000)
  br label %189

189:                                              ; preds = %184, %157, %152
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %174
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @clk_set_rate(i8*, i32) #1

declare dso_local i8* @of_clk_get(i64, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
