; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_enable_msix_and_set_admin_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_enable_msix_and_set_admin_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { %struct.TYPE_2__*, %struct.ena_com_dev* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ena_com_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Can not reserve msix vectors\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Can not setup management interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, i32)* @ena_enable_msix_and_set_admin_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_enable_msix_and_set_admin_interrupts(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_com_dev*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 1
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  store %struct.ena_com_dev* %11, %struct.ena_com_dev** %6, align 8
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ena_enable_msix(%struct.ena_adapter* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %27 = call i32 @ena_setup_mgmnt_intr(%struct.ena_adapter* %26)
  %28 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %29 = call i32 @ena_request_mgmnt_irq(%struct.ena_adapter* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %37 = call i32 @ena_com_set_admin_polling_mode(%struct.ena_com_dev* %36, i32 0)
  %38 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %39 = call i32 @ena_com_admin_aenq_enable(%struct.ena_com_dev* %38)
  store i32 0, i32* %3, align 4
  br label %44

40:                                               ; preds = %32
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %42 = call i32 @ena_disable_msix(%struct.ena_adapter* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ena_enable_msix(%struct.ena_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ena_setup_mgmnt_intr(%struct.ena_adapter*) #1

declare dso_local i32 @ena_request_mgmnt_irq(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_set_admin_polling_mode(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_admin_aenq_enable(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_disable_msix(%struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
