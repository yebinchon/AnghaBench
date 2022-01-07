; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_set_pdata_irq_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_set_pdata_irq_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.palmas_platform_data = type { i32 }
%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid IRQ: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Irq flag is 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.palmas_platform_data*)* @palmas_set_pdata_irq_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_set_pdata_irq_flag(%struct.i2c_client* %0, %struct.palmas_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.palmas_platform_data*, align 8
  %6 = alloca %struct.irq_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.palmas_platform_data* %1, %struct.palmas_platform_data** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.irq_data* @irq_get_irq_data(i32 %9)
  store %struct.irq_data* %10, %struct.irq_data** %6, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %12 = icmp ne %struct.irq_data* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %24 = call i32 @irqd_get_trigger_type(%struct.irq_data* %23)
  %25 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %5, align 8
  %26 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
