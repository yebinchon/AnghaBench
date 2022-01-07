; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i64, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"disabling interface\0A\00", align 1
@B0_IMSK = common dso_local global i32 0, align 4
@SKY2_HW_IRQ_SETUP = common dso_local global i32 0, align 4
@portirq_msk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sky2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sky2_port*, align 8
  %5 = alloca %struct.sky2_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %7)
  store %struct.sky2_port* %8, %struct.sky2_port** %4, align 8
  %9 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %10 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %9, i32 0, i32 2
  %11 = load %struct.sky2_hw*, %struct.sky2_hw** %10, align 8
  store %struct.sky2_hw* %11, %struct.sky2_hw** %5, align 8
  %12 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %13 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

17:                                               ; preds = %1
  %18 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %19 = load i32, i32* @ifdown, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netif_info(%struct.sky2_port* %18, i32 %19, %struct.net_device* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %23 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %49

26:                                               ; preds = %17
  %27 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %28 = load i32, i32* @B0_IMSK, align 4
  %29 = call i32 @sky2_write32(%struct.sky2_hw* %27, i32 %28, i32 0)
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %31 = load i32, i32* @B0_IMSK, align 4
  %32 = call i32 @sky2_read32(%struct.sky2_hw* %30, i32 %31)
  %33 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %34 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %33, i32 0, i32 1
  %35 = call i32 @napi_disable(i32* %34)
  %36 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %37 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %42 = call i32 @free_irq(i32 %40, %struct.sky2_hw* %41)
  %43 = load i32, i32* @SKY2_HW_IRQ_SETUP, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %46 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %78

49:                                               ; preds = %17
  %50 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %51 = load i32, i32* @B0_IMSK, align 4
  %52 = call i32 @sky2_read32(%struct.sky2_hw* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32*, i32** @portirq_msk, align 8
  %54 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %55 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %63 = load i32, i32* @B0_IMSK, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @sky2_write32(%struct.sky2_hw* %62, i32 %63, i32 %64)
  %66 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %67 = load i32, i32* @B0_IMSK, align 4
  %68 = call i32 @sky2_read32(%struct.sky2_hw* %66, i32 %67)
  %69 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %70 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @synchronize_irq(i32 %73)
  %75 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %76 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %75, i32 0, i32 1
  %77 = call i32 @napi_synchronize(i32* %76)
  br label %78

78:                                               ; preds = %49, %26
  %79 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %80 = call i32 @sky2_hw_down(%struct.sky2_port* %79)
  %81 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %82 = call i32 @sky2_free_buffers(%struct.sky2_port* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %16
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.sky2_port*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.sky2_hw*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @sky2_hw_down(%struct.sky2_port*) #1

declare dso_local i32 @sky2_free_buffers(%struct.sky2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
