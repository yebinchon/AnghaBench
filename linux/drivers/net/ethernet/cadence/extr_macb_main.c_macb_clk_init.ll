; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.clk = type { i32 }
%struct.macb_platform_data = type { %struct.clk*, %struct.clk* }

@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get macb_clk (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get hclk (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"tx_clk\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rx_clk\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"tsu_clk\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to enable pclk (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to enable hclk (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to enable tx_clk (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to enable rx_clk (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"failed to enable tsu_clk (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.clk**, %struct.clk**, %struct.clk**, %struct.clk**, %struct.clk**)* @macb_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_clk_init(%struct.platform_device* %0, %struct.clk** %1, %struct.clk** %2, %struct.clk** %3, %struct.clk** %4, %struct.clk** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.clk**, align 8
  %10 = alloca %struct.clk**, align 8
  %11 = alloca %struct.clk**, align 8
  %12 = alloca %struct.clk**, align 8
  %13 = alloca %struct.clk**, align 8
  %14 = alloca %struct.macb_platform_data*, align 8
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %8, align 8
  store %struct.clk** %1, %struct.clk*** %9, align 8
  store %struct.clk** %2, %struct.clk*** %10, align 8
  store %struct.clk** %3, %struct.clk*** %11, align 8
  store %struct.clk** %4, %struct.clk*** %12, align 8
  store %struct.clk** %5, %struct.clk*** %13, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.macb_platform_data* @dev_get_platdata(i32* %17)
  store %struct.macb_platform_data* %18, %struct.macb_platform_data** %14, align 8
  %19 = load %struct.macb_platform_data*, %struct.macb_platform_data** %14, align 8
  %20 = icmp ne %struct.macb_platform_data* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = load %struct.macb_platform_data*, %struct.macb_platform_data** %14, align 8
  %23 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %22, i32 0, i32 1
  %24 = load %struct.clk*, %struct.clk** %23, align 8
  %25 = load %struct.clk**, %struct.clk*** %9, align 8
  store %struct.clk* %24, %struct.clk** %25, align 8
  %26 = load %struct.macb_platform_data*, %struct.macb_platform_data** %14, align 8
  %27 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %26, i32 0, i32 0
  %28 = load %struct.clk*, %struct.clk** %27, align 8
  %29 = load %struct.clk**, %struct.clk*** %10, align 8
  store %struct.clk* %28, %struct.clk** %29, align 8
  br label %39

30:                                               ; preds = %6
  %31 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call %struct.clk* @devm_clk_get(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.clk**, %struct.clk*** %9, align 8
  store %struct.clk* %33, %struct.clk** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call %struct.clk* @devm_clk_get(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.clk**, %struct.clk*** %10, align 8
  store %struct.clk* %37, %struct.clk** %38, align 8
  br label %39

39:                                               ; preds = %30, %21
  %40 = load %struct.clk**, %struct.clk*** %9, align 8
  %41 = load %struct.clk*, %struct.clk** %40, align 8
  %42 = call i64 @IS_ERR_OR_NULL(%struct.clk* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.clk**, %struct.clk*** %9, align 8
  %46 = load %struct.clk*, %struct.clk** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.clk* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %7, align 4
  br label %192

59:                                               ; preds = %39
  %60 = load %struct.clk**, %struct.clk*** %10, align 8
  %61 = load %struct.clk*, %struct.clk** %60, align 8
  %62 = call i64 @IS_ERR_OR_NULL(%struct.clk* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct.clk**, %struct.clk*** %10, align 8
  %66 = load %struct.clk*, %struct.clk** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.clk* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %7, align 4
  br label %192

79:                                               ; preds = %59
  %80 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call %struct.clk* @devm_clk_get_optional(i32* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.clk**, %struct.clk*** %11, align 8
  store %struct.clk* %82, %struct.clk** %83, align 8
  %84 = load %struct.clk**, %struct.clk*** %11, align 8
  %85 = load %struct.clk*, %struct.clk** %84, align 8
  %86 = call i64 @IS_ERR(%struct.clk* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.clk**, %struct.clk*** %11, align 8
  %90 = load %struct.clk*, %struct.clk** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.clk* %90)
  store i32 %91, i32* %7, align 4
  br label %192

92:                                               ; preds = %79
  %93 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call %struct.clk* @devm_clk_get_optional(i32* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.clk**, %struct.clk*** %12, align 8
  store %struct.clk* %95, %struct.clk** %96, align 8
  %97 = load %struct.clk**, %struct.clk*** %12, align 8
  %98 = load %struct.clk*, %struct.clk** %97, align 8
  %99 = call i64 @IS_ERR(%struct.clk* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load %struct.clk**, %struct.clk*** %12, align 8
  %103 = load %struct.clk*, %struct.clk** %102, align 8
  %104 = call i32 @PTR_ERR(%struct.clk* %103)
  store i32 %104, i32* %7, align 4
  br label %192

105:                                              ; preds = %92
  %106 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call %struct.clk* @devm_clk_get_optional(i32* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %109 = load %struct.clk**, %struct.clk*** %13, align 8
  store %struct.clk* %108, %struct.clk** %109, align 8
  %110 = load %struct.clk**, %struct.clk*** %13, align 8
  %111 = load %struct.clk*, %struct.clk** %110, align 8
  %112 = call i64 @IS_ERR(%struct.clk* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load %struct.clk**, %struct.clk*** %13, align 8
  %116 = load %struct.clk*, %struct.clk** %115, align 8
  %117 = call i32 @PTR_ERR(%struct.clk* %116)
  store i32 %117, i32* %7, align 4
  br label %192

118:                                              ; preds = %105
  %119 = load %struct.clk**, %struct.clk*** %9, align 8
  %120 = load %struct.clk*, %struct.clk** %119, align 8
  %121 = call i32 @clk_prepare_enable(%struct.clk* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %7, align 4
  br label %192

130:                                              ; preds = %118
  %131 = load %struct.clk**, %struct.clk*** %10, align 8
  %132 = load %struct.clk*, %struct.clk** %131, align 8
  %133 = call i32 @clk_prepare_enable(%struct.clk* %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %139)
  br label %187

141:                                              ; preds = %130
  %142 = load %struct.clk**, %struct.clk*** %11, align 8
  %143 = load %struct.clk*, %struct.clk** %142, align 8
  %144 = call i32 @clk_prepare_enable(%struct.clk* %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @dev_err(i32* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %150)
  br label %183

152:                                              ; preds = %141
  %153 = load %struct.clk**, %struct.clk*** %12, align 8
  %154 = load %struct.clk*, %struct.clk** %153, align 8
  %155 = call i32 @clk_prepare_enable(%struct.clk* %154)
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @dev_err(i32* %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %161)
  br label %179

163:                                              ; preds = %152
  %164 = load %struct.clk**, %struct.clk*** %13, align 8
  %165 = load %struct.clk*, %struct.clk** %164, align 8
  %166 = call i32 @clk_prepare_enable(%struct.clk* %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @dev_err(i32* %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %172)
  br label %175

174:                                              ; preds = %163
  store i32 0, i32* %7, align 4
  br label %192

175:                                              ; preds = %169
  %176 = load %struct.clk**, %struct.clk*** %12, align 8
  %177 = load %struct.clk*, %struct.clk** %176, align 8
  %178 = call i32 @clk_disable_unprepare(%struct.clk* %177)
  br label %179

179:                                              ; preds = %175, %158
  %180 = load %struct.clk**, %struct.clk*** %11, align 8
  %181 = load %struct.clk*, %struct.clk** %180, align 8
  %182 = call i32 @clk_disable_unprepare(%struct.clk* %181)
  br label %183

183:                                              ; preds = %179, %147
  %184 = load %struct.clk**, %struct.clk*** %10, align 8
  %185 = load %struct.clk*, %struct.clk** %184, align 8
  %186 = call i32 @clk_disable_unprepare(%struct.clk* %185)
  br label %187

187:                                              ; preds = %183, %136
  %188 = load %struct.clk**, %struct.clk*** %9, align 8
  %189 = load %struct.clk*, %struct.clk** %188, align 8
  %190 = call i32 @clk_disable_unprepare(%struct.clk* %189)
  %191 = load i32, i32* %15, align 4
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %187, %174, %124, %114, %101, %88, %73, %53
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local %struct.macb_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.clk* @devm_clk_get_optional(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
