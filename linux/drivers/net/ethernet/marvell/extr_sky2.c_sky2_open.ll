; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32, i64 }

@B0_IMSK = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_OPT = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_PRM = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_OP_2 = common dso_local global i64 0, align 8
@Y2_IS_PHY_QLNK = common dso_local global i32 0, align 4
@portirq_msk = common dso_local global i32* null, align 8
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"enabling interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sky2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sky2_port*, align 8
  %5 = alloca %struct.sky2_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %9)
  store %struct.sky2_port* %10, %struct.sky2_port** %4, align 8
  %11 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 1
  %13 = load %struct.sky2_hw*, %struct.sky2_hw** %12, align 8
  store %struct.sky2_hw* %13, %struct.sky2_hw** %5, align 8
  %14 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %15 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netif_carrier_off(%struct.net_device* %17)
  %19 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %20 = call i32 @sky2_alloc_buffers(%struct.sky2_port* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %83

24:                                               ; preds = %1
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %26 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sky2_setup_irq(%struct.sky2_hw* %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %83

37:                                               ; preds = %29, %24
  %38 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %39 = call i32 @sky2_hw_up(%struct.sky2_port* %38)
  %40 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %41 = load i32, i32* @B0_IMSK, align 4
  %42 = call i32 @sky2_read32(%struct.sky2_hw* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %44 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHIP_ID_YUKON_OPT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %37
  %49 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %50 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CHIP_ID_YUKON_PRM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %56 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CHIP_ID_YUKON_OP_2, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48, %37
  %61 = load i32, i32* @Y2_IS_PHY_QLNK, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32*, i32** @portirq_msk, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %73 = load i32, i32* @B0_IMSK, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @sky2_write32(%struct.sky2_hw* %72, i32 %73, i32 %74)
  %76 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %77 = load i32, i32* @B0_IMSK, align 4
  %78 = call i32 @sky2_read32(%struct.sky2_hw* %76, i32 %77)
  %79 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %80 = load i32, i32* @ifup, align 4
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 @netif_info(%struct.sky2_port* %79, i32 %80, %struct.net_device* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %87

83:                                               ; preds = %36, %23
  %84 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %85 = call i32 @sky2_free_buffers(%struct.sky2_port* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %64
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @sky2_alloc_buffers(%struct.sky2_port*) #1

declare dso_local i32 @sky2_setup_irq(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_hw_up(%struct.sky2_port*) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @netif_info(%struct.sky2_port*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @sky2_free_buffers(%struct.sky2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
