; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_libertas_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_libertas_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.if_spi_card = type { %struct.TYPE_2__*, i32, i32, %struct.lbs_private* }
%struct.TYPE_2__ = type { i32 (%struct.spi_device*)* }
%struct.lbs_private = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"libertas_spi_remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @libertas_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libertas_spi_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.if_spi_card*, align 8
  %4 = alloca %struct.lbs_private*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.if_spi_card* @spi_get_drvdata(%struct.spi_device* %5)
  store %struct.if_spi_card* %6, %struct.if_spi_card** %3, align 8
  %7 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %8 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %7, i32 0, i32 3
  %9 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  store %struct.lbs_private* %9, %struct.lbs_private** %4, align 8
  %10 = call i32 @lbs_deb_spi(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %12 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %11, i32 0, i32 2
  %13 = call i32 @cancel_work_sync(i32* %12)
  %14 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %15 = call i32 @lbs_stop_card(%struct.lbs_private* %14)
  %16 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %17 = call i32 @lbs_remove_card(%struct.lbs_private* %16)
  %18 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.if_spi_card* %21)
  %23 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %24 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @destroy_workqueue(i32 %25)
  %27 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %28 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.spi_device*)*, i32 (%struct.spi_device*)** %30, align 8
  %32 = icmp ne i32 (%struct.spi_device*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %35 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.spi_device*)*, i32 (%struct.spi_device*)** %37, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %40 = call i32 %38(%struct.spi_device* %39)
  br label %41

41:                                               ; preds = %33, %1
  %42 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %43 = call i32 @free_if_spi_card(%struct.if_spi_card* %42)
  ret i32 0
}

declare dso_local %struct.if_spi_card* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @lbs_deb_spi(i8*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @lbs_stop_card(%struct.lbs_private*) #1

declare dso_local i32 @lbs_remove_card(%struct.lbs_private*) #1

declare dso_local i32 @free_irq(i32, %struct.if_spi_card*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @free_if_spi_card(%struct.if_spi_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
