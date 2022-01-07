; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.greth_private = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Could not allocate memory for DMA rings\0A\00", align 1
@greth_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"eth\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not allocate interrupt %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" starting queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @greth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.greth_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.greth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.greth_private* %7, %struct.greth_private** %4, align 8
  %8 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %9 = call i32 @greth_init_rings(%struct.greth_private* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %14 = call i64 @netif_msg_ifup(%struct.greth_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %73

22:                                               ; preds = %1
  %23 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %24 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @greth_interrupt, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = bitcast %struct.net_device* %27 to i8*
  %29 = call i32 @request_irq(i32 %25, i32 %26, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %22
  %33 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %34 = call i64 @netif_msg_ifup(%struct.greth_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %36, %32
  %44 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %45 = call i32 @greth_clean_rings(%struct.greth_private* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %73

47:                                               ; preds = %22
  %48 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %49 = call i64 @netif_msg_ifup(%struct.greth_private* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netif_start_queue(%struct.net_device* %56)
  %58 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %59 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @GRETH_REGSAVE(i32 %62, i32 255)
  %64 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %65 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %64, i32 0, i32 0
  %66 = call i32 @napi_enable(i32* %65)
  %67 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %68 = call i32 @greth_enable_irqs(%struct.greth_private* %67)
  %69 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %70 = call i32 @greth_enable_tx(%struct.greth_private* %69)
  %71 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %72 = call i32 @greth_enable_rx(%struct.greth_private* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %55, %43, %20
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @greth_init_rings(%struct.greth_private*) #1

declare dso_local i64 @netif_msg_ifup(%struct.greth_private*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @greth_clean_rings(%struct.greth_private*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @greth_enable_irqs(%struct.greth_private*) #1

declare dso_local i32 @greth_enable_tx(%struct.greth_private*) #1

declare dso_local i32 @greth_enable_rx(%struct.greth_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
