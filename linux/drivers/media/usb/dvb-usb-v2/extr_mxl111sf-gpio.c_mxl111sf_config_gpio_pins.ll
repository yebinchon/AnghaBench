; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_config_gpio_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_config_gpio_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }
%struct.mxl_gpio_cfg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%d, %d)\00", align 1
@MXL_GPIO_MUX_REG_0 = common dso_local global i32 0, align 4
@MXL_GPIO_MUX_REG_1 = common dso_local global i32 0, align 4
@MXL_GPIO_MUX_REG_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MXL_GPIO_DIR_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*, %struct.mxl_gpio_cfg*)* @mxl111sf_config_gpio_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_config_gpio_pins(%struct.mxl111sf_state* %0, %struct.mxl_gpio_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxl111sf_state*, align 8
  %5 = alloca %struct.mxl_gpio_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %4, align 8
  store %struct.mxl_gpio_cfg* %1, %struct.mxl_gpio_cfg** %5, align 8
  %8 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %9 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mxl_debug_adv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %16 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %124 [
    i32 0, label %18
    i32 1, label %18
    i32 2, label %18
    i32 3, label %18
    i32 4, label %54
    i32 5, label %54
    i32 6, label %54
    i32 7, label %54
    i32 8, label %88
    i32 9, label %88
    i32 10, label %88
  ]

18:                                               ; preds = %2, %2, %2, %2
  %19 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %20 = load i32, i32* @MXL_GPIO_MUX_REG_0, align 4
  %21 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %19, i32 %20, i32* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @mxl_fail(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %155

26:                                               ; preds = %18
  %27 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %39 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 4
  %42 = shl i32 %37, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %46 = load i32, i32* @MXL_GPIO_MUX_REG_0, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %45, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @mxl_fail(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  br label %155

53:                                               ; preds = %26
  br label %127

54:                                               ; preds = %2, %2, %2, %2
  %55 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %56 = load i32, i32* @MXL_GPIO_MUX_REG_1, align 4
  %57 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %55, i32 %56, i32* %7)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @mxl_fail(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %155

62:                                               ; preds = %54
  %63 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %64 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %71 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %74 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %72, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %80 = load i32, i32* @MXL_GPIO_MUX_REG_1, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @mxl_fail(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %62
  br label %155

87:                                               ; preds = %62
  br label %127

88:                                               ; preds = %2, %2, %2
  %89 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %90 = load i32, i32* @MXL_GPIO_MUX_REG_2, align 4
  %91 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %89, i32 %90, i32* %7)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @mxl_fail(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %155

96:                                               ; preds = %88
  %97 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %98 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 3
  %101 = shl i32 1, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %106 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %109 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 3
  %112 = shl i32 %107, %111
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %116 = load i32, i32* @MXL_GPIO_MUX_REG_2, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %115, i32 %116, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @mxl_fail(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %96
  br label %155

123:                                              ; preds = %96
  br label %127

124:                                              ; preds = %2
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %157

127:                                              ; preds = %123, %87, %53
  %128 = load i64, i64* @MXL_GPIO_DIR_OUTPUT, align 8
  %129 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %130 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp eq i64 %128, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %136 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %137 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %140 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mxl111sf_set_gpo_state(%struct.mxl111sf_state* %135, i32 %138, i32 %141)
  br label %151

143:                                              ; preds = %127
  %144 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %145 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %146 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mxl_gpio_cfg*, %struct.mxl_gpio_cfg** %5, align 8
  %149 = getelementptr inbounds %struct.mxl_gpio_cfg, %struct.mxl_gpio_cfg* %148, i32 0, i32 2
  %150 = call i32 @mxl111sf_get_gpi_state(%struct.mxl111sf_state* %144, i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %143, %134
  %152 = phi i32 [ %142, %134 ], [ %150, %143 ]
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @mxl_fail(i32 %153)
  br label %155

155:                                              ; preds = %151, %122, %95, %86, %61, %52, %25
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %124
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @mxl_debug_adv(i8*, i32, i32) #1

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

declare dso_local i32 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

declare dso_local i32 @mxl111sf_set_gpo_state(%struct.mxl111sf_state*, i32, i32) #1

declare dso_local i32 @mxl111sf_get_gpi_state(%struct.mxl111sf_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
