; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7182_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7182_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7180_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADV7180_FLAG_MIPI_CSI2 = common dso_local global i32 0, align 4
@ADV7180_REG_CSI_SLAVE_ADDR = common dso_local global i32 0, align 4
@ADV7180_DEFAULT_CSI_I2C_ADDR = common dso_local global i32 0, align 4
@ADV7180_FLAG_I2P = common dso_local global i32 0, align 4
@ADV7180_REG_VPP_SLAVE_ADDR = common dso_local global i32 0, align 4
@ADV7180_DEFAULT_VPP_I2C_ADDR = common dso_local global i32 0, align 4
@ADV7180_FLAG_V2 = common dso_local global i32 0, align 4
@ADV7180_REG_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@ADV7180_REG_EXTENDED_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@ADV7180_REG_CTRL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7180_state*)* @adv7182_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7182_init(%struct.adv7180_state* %0) #0 {
  %2 = alloca %struct.adv7180_state*, align 8
  store %struct.adv7180_state* %0, %struct.adv7180_state** %2, align 8
  %3 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %4 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ADV7180_FLAG_MIPI_CSI2, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %13 = load i32, i32* @ADV7180_REG_CSI_SLAVE_ADDR, align 4
  %14 = load i32, i32* @ADV7180_DEFAULT_CSI_I2C_ADDR, align 4
  %15 = shl i32 %14, 1
  %16 = call i32 @adv7180_write(%struct.adv7180_state* %12, i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %19 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ADV7180_FLAG_I2P, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %28 = load i32, i32* @ADV7180_REG_VPP_SLAVE_ADDR, align 4
  %29 = load i32, i32* @ADV7180_DEFAULT_VPP_I2C_ADDR, align 4
  %30 = shl i32 %29, 1
  %31 = call i32 @adv7180_write(%struct.adv7180_state* %27, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %26, %17
  %33 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %34 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ADV7180_FLAG_V2, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %43 = call i32 @adv7180_write(%struct.adv7180_state* %42, i32 128, i32 81)
  %44 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %45 = call i32 @adv7180_write(%struct.adv7180_state* %44, i32 129, i32 81)
  %46 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %47 = call i32 @adv7180_write(%struct.adv7180_state* %46, i32 130, i32 104)
  br label %48

48:                                               ; preds = %41, %32
  %49 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %50 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ADV7180_FLAG_MIPI_CSI2, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %59 = load i32, i32* @ADV7180_REG_OUTPUT_CONTROL, align 4
  %60 = call i32 @adv7180_write(%struct.adv7180_state* %58, i32 %59, i32 78)
  %61 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %62 = load i32, i32* @ADV7180_REG_EXTENDED_OUTPUT_CONTROL, align 4
  %63 = call i32 @adv7180_write(%struct.adv7180_state* %61, i32 %62, i32 87)
  %64 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %65 = load i32, i32* @ADV7180_REG_CTRL_2, align 4
  %66 = call i32 @adv7180_write(%struct.adv7180_state* %64, i32 %65, i32 192)
  br label %91

67:                                               ; preds = %48
  %68 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %69 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ADV7180_FLAG_V2, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %78 = load i32, i32* @ADV7180_REG_EXTENDED_OUTPUT_CONTROL, align 4
  %79 = call i32 @adv7180_write(%struct.adv7180_state* %77, i32 %78, i32 23)
  br label %84

80:                                               ; preds = %67
  %81 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %82 = load i32, i32* @ADV7180_REG_EXTENDED_OUTPUT_CONTROL, align 4
  %83 = call i32 @adv7180_write(%struct.adv7180_state* %81, i32 %82, i32 7)
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %86 = load i32, i32* @ADV7180_REG_OUTPUT_CONTROL, align 4
  %87 = call i32 @adv7180_write(%struct.adv7180_state* %85, i32 %86, i32 12)
  %88 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %89 = load i32, i32* @ADV7180_REG_CTRL_2, align 4
  %90 = call i32 @adv7180_write(%struct.adv7180_state* %88, i32 %89, i32 64)
  br label %91

91:                                               ; preds = %84, %57
  %92 = load %struct.adv7180_state*, %struct.adv7180_state** %2, align 8
  %93 = call i32 @adv7180_write(%struct.adv7180_state* %92, i32 19, i32 0)
  ret i32 0
}

declare dso_local i32 @adv7180_write(%struct.adv7180_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
