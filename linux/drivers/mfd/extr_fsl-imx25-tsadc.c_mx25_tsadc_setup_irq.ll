; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_fsl-imx25-tsadc.c_mx25_tsadc_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_fsl-imx25-tsadc.c_mx25_tsadc_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mx25_tsadc = type { i32 }

@mx25_tsadc_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to add irq domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mx25_tsadc_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.mx25_tsadc*)* @mx25_tsadc_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25_tsadc_setup_irq(%struct.platform_device* %0, %struct.mx25_tsadc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mx25_tsadc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mx25_tsadc* %1, %struct.mx25_tsadc** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = call i32 @platform_get_irq(%struct.platform_device* %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = load %struct.mx25_tsadc*, %struct.mx25_tsadc** %5, align 8
  %23 = call i32 @irq_domain_add_simple(%struct.device_node* %21, i32 2, i32 0, i32* @mx25_tsadc_domain_ops, %struct.mx25_tsadc* %22)
  %24 = load %struct.mx25_tsadc*, %struct.mx25_tsadc** %5, align 8
  %25 = getelementptr inbounds %struct.mx25_tsadc, %struct.mx25_tsadc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mx25_tsadc*, %struct.mx25_tsadc** %5, align 8
  %27 = getelementptr inbounds %struct.mx25_tsadc, %struct.mx25_tsadc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @mx25_tsadc_irq_handler, align 4
  %38 = load %struct.mx25_tsadc*, %struct.mx25_tsadc** %5, align 8
  %39 = call i32 @irq_set_chained_handler_and_data(i32 %36, i32 %37, %struct.mx25_tsadc* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %30, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_domain_add_simple(%struct.device_node*, i32, i32, i32*, %struct.mx25_tsadc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.mx25_tsadc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
