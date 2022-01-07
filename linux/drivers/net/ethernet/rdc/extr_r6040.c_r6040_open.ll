; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.r6040_private = type { i32, i8*, i32, i32, i8*, i32 }

@r6040_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@RX_DESC_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @r6040_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r6040_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r6040_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r6040_private* @netdev_priv(%struct.net_device* %6)
  store %struct.r6040_private* %7, %struct.r6040_private** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @r6040_interrupt, align 4
  %12 = load i32, i32* @IRQF_SHARED, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @request_irq(i32 %10, i32 %11, i32 %12, i32 %15, %struct.net_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %99

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @r6040_mac_address(%struct.net_device* %22)
  %24 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %25 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RX_DESC_SIZE, align 4
  %28 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %29 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %28, i32 0, i32 0
  %30 = call i8* @pci_alloc_consistent(i32 %26, i32 %27, i32* %29)
  %31 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %32 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %34 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %21
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %93

40:                                               ; preds = %21
  %41 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %42 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TX_DESC_SIZE, align 4
  %45 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %46 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %45, i32 0, i32 3
  %47 = call i8* @pci_alloc_consistent(i32 %43, i32 %44, i32* %46)
  %48 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %49 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %51 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %81

57:                                               ; preds = %40
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @r6040_up(%struct.net_device* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %69

63:                                               ; preds = %57
  %64 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %65 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %64, i32 0, i32 5
  %66 = call i32 @napi_enable(i32* %65)
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @netif_start_queue(%struct.net_device* %67)
  store i32 0, i32* %2, align 4
  br label %101

69:                                               ; preds = %62
  %70 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %71 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TX_DESC_SIZE, align 4
  %74 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %75 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %78 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pci_free_consistent(i32 %72, i32 %73, i8* %76, i32 %79)
  br label %81

81:                                               ; preds = %69, %54
  %82 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %83 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @RX_DESC_SIZE, align 4
  %86 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %87 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %90 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pci_free_consistent(i32 %84, i32 %85, i8* %88, i32 %91)
  br label %93

93:                                               ; preds = %81, %37
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = call i32 @free_irq(i32 %96, %struct.net_device* %97)
  br label %99

99:                                               ; preds = %93, %20
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %63
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.r6040_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @r6040_mac_address(%struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @r6040_up(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
