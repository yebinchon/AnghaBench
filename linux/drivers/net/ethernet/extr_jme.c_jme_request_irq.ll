; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { %struct.TYPE_3__*, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32, i32 }

@jme_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@JME_FLAG_MSI = common dso_local global i32 0, align 4
@jme_msi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to request %s interrupt (return: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INTx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*)* @jme_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_request_irq(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load i32, i32* @jme_intr, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @pci_enable_msi(%struct.TYPE_3__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @JME_FLAG_MSI, align 4
  %19 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load i32, i32* @jme_msi, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @request_irq(i32 %28, i32 %29, i32 %30, i32 %33, %struct.net_device* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %23
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load i32, i32* @JME_FLAG_MSI, align 4
  %41 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %41, i32 0, i32 1
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @netdev_err(%struct.net_device* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load i32, i32* @JME_FLAG_MSI, align 4
  %50 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %50, i32 0, i32 1
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %38
  %55 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i32 @pci_disable_msi(%struct.TYPE_3__* %57)
  %59 = load i32, i32* @JME_FLAG_MSI, align 4
  %60 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %60, i32 0, i32 1
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %54, %38
  br label %72

64:                                               ; preds = %23
  %65 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %63
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pci_enable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
