; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_setup_chip_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_setup_chip_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.htcpld_data = type { %struct.htcpld_chip* }
%struct.htcpld_chip = type { i32, i32 }

@htcpld_muxed_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @htcpld_setup_chip_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcpld_setup_chip_irq(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.htcpld_data*, align 8
  %6 = alloca %struct.htcpld_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.htcpld_data* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.htcpld_data* %10, %struct.htcpld_data** %5, align 8
  %11 = load %struct.htcpld_data*, %struct.htcpld_data** %5, align 8
  %12 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %11, i32 0, i32 0
  %13 = load %struct.htcpld_chip*, %struct.htcpld_chip** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %13, i64 %15
  store %struct.htcpld_chip* %16, %struct.htcpld_chip** %6, align 8
  %17 = load %struct.htcpld_chip*, %struct.htcpld_chip** %6, align 8
  %18 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.htcpld_chip*, %struct.htcpld_chip** %6, align 8
  %21 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.htcpld_chip*, %struct.htcpld_chip** %6, align 8
  %25 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %43, %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @handle_simple_irq, align 4
  %34 = call i32 @irq_set_chip_and_handler(i32 %32, i32* @htcpld_muxed_chip, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.htcpld_chip*, %struct.htcpld_chip** %6, align 8
  %37 = call i32 @irq_set_chip_data(i32 %35, %struct.htcpld_chip* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IRQ_NOREQUEST, align 4
  %40 = load i32, i32* @IRQ_NOPROBE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @irq_clear_status_flags(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %27

46:                                               ; preds = %27
  ret i32 0
}

declare dso_local %struct.htcpld_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.htcpld_chip*) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
