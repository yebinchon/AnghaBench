; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.adv748x_state = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_3__, %struct.i2c_client**, %struct.i2c_client*, i32* }
%struct.TYPE_3__ = type { i32, i32, %struct.adv748x_state* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADV748X_PAGE_IO = common dso_local global i64 0, align 8
@ADV748X_PAGE_TXA = common dso_local global i32 0, align 4
@ADV748X_PAGE_TXB = common dso_local global i32 0, align 4
@ADV748X_PORT_TXA = common dso_local global i32 0, align 4
@ADV748X_PORT_TXB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to parse device tree\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error configuring IO regmap region\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to identify chip\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to setup client regmap pages\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to reset hardware\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Failed to probe HDMI\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Failed to probe AFE\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Failed to probe TXA\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Failed to probe TXB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adv748x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adv748x_state*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %10 = call i32 @i2c_check_functionality(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %170

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.adv748x_state* @devm_kzalloc(i32* %17, i32 72, i32 %18)
  store %struct.adv748x_state* %19, %struct.adv748x_state** %4, align 8
  %20 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %21 = icmp ne %struct.adv748x_state* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %170

25:                                               ; preds = %15
  %26 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %27 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %26, i32 0, i32 0
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %32 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %31, i32 0, i32 7
  store i32* %30, i32** %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %35 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %34, i32 0, i32 6
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %38 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %37, i32 0, i32 5
  %39 = load %struct.i2c_client**, %struct.i2c_client*** %38, align 8
  %40 = load i64, i64* @ADV748X_PAGE_IO, align 8
  %41 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %39, i64 %40
  store %struct.i2c_client* %36, %struct.i2c_client** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %42, %struct.adv748x_state* %43)
  %45 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %46 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %47 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store %struct.adv748x_state* %45, %struct.adv748x_state** %48, align 8
  %49 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %50 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store %struct.adv748x_state* %45, %struct.adv748x_state** %51, align 8
  %52 = load i32, i32* @ADV748X_PAGE_TXA, align 4
  %53 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %54 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ADV748X_PAGE_TXB, align 4
  %57 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %58 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @ADV748X_PORT_TXA, align 4
  %61 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %62 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @ADV748X_PORT_TXB, align 4
  %65 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %66 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %69 = call i32 @adv748x_parse_dt(%struct.adv748x_state* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %25
  %73 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %74 = call i32 @adv_err(%struct.adv748x_state* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %165

75:                                               ; preds = %25
  %76 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %77 = load i64, i64* @ADV748X_PAGE_IO, align 8
  %78 = call i32 @adv748x_configure_regmap(%struct.adv748x_state* %76, i64 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %83 = call i32 @adv_err(%struct.adv748x_state* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %162

84:                                               ; preds = %75
  %85 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %86 = call i32 @adv748x_identify_chip(%struct.adv748x_state* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %91 = call i32 @adv_err(%struct.adv748x_state* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %162

92:                                               ; preds = %84
  %93 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %94 = call i32 @adv748x_initialise_clients(%struct.adv748x_state* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %99 = call i32 @adv_err(%struct.adv748x_state* %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %159

100:                                              ; preds = %92
  %101 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %102 = call i32 @adv748x_reset(%struct.adv748x_state* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %107 = call i32 @adv_err(%struct.adv748x_state* %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %159

108:                                              ; preds = %100
  %109 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %110 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %109, i32 0, i32 1
  %111 = call i32 @adv748x_hdmi_init(i32* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %116 = call i32 @adv_err(%struct.adv748x_state* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %159

117:                                              ; preds = %108
  %118 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %119 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %118, i32 0, i32 2
  %120 = call i32 @adv748x_afe_init(i32* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %125 = call i32 @adv_err(%struct.adv748x_state* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %155

126:                                              ; preds = %117
  %127 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %128 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %129 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %128, i32 0, i32 3
  %130 = call i32 @adv748x_csi2_init(%struct.adv748x_state* %127, %struct.TYPE_3__* %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %135 = call i32 @adv_err(%struct.adv748x_state* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %151

136:                                              ; preds = %126
  %137 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %138 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %139 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %138, i32 0, i32 4
  %140 = call i32 @adv748x_csi2_init(%struct.adv748x_state* %137, %struct.TYPE_3__* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %145 = call i32 @adv_err(%struct.adv748x_state* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %147

146:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %170

147:                                              ; preds = %143
  %148 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %149 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %148, i32 0, i32 3
  %150 = call i32 @adv748x_csi2_cleanup(%struct.TYPE_3__* %149)
  br label %151

151:                                              ; preds = %147, %133
  %152 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %153 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %152, i32 0, i32 2
  %154 = call i32 @adv748x_afe_cleanup(i32* %153)
  br label %155

155:                                              ; preds = %151, %123
  %156 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %157 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %156, i32 0, i32 1
  %158 = call i32 @adv748x_hdmi_cleanup(i32* %157)
  br label %159

159:                                              ; preds = %155, %114, %105, %97
  %160 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %161 = call i32 @adv748x_unregister_clients(%struct.adv748x_state* %160)
  br label %162

162:                                              ; preds = %159, %89, %81
  %163 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %164 = call i32 @adv748x_dt_cleanup(%struct.adv748x_state* %163)
  br label %165

165:                                              ; preds = %162, %72
  %166 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %167 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %166, i32 0, i32 0
  %168 = call i32 @mutex_destroy(i32* %167)
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %165, %146, %22, %12
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.adv748x_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adv748x_state*) #1

declare dso_local i32 @adv748x_parse_dt(%struct.adv748x_state*) #1

declare dso_local i32 @adv_err(%struct.adv748x_state*, i8*) #1

declare dso_local i32 @adv748x_configure_regmap(%struct.adv748x_state*, i64) #1

declare dso_local i32 @adv748x_identify_chip(%struct.adv748x_state*) #1

declare dso_local i32 @adv748x_initialise_clients(%struct.adv748x_state*) #1

declare dso_local i32 @adv748x_reset(%struct.adv748x_state*) #1

declare dso_local i32 @adv748x_hdmi_init(i32*) #1

declare dso_local i32 @adv748x_afe_init(i32*) #1

declare dso_local i32 @adv748x_csi2_init(%struct.adv748x_state*, %struct.TYPE_3__*) #1

declare dso_local i32 @adv748x_csi2_cleanup(%struct.TYPE_3__*) #1

declare dso_local i32 @adv748x_afe_cleanup(i32*) #1

declare dso_local i32 @adv748x_hdmi_cleanup(i32*) #1

declare dso_local i32 @adv748x_unregister_clients(%struct.adv748x_state*) #1

declare dso_local i32 @adv748x_dt_cleanup(%struct.adv748x_state*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
