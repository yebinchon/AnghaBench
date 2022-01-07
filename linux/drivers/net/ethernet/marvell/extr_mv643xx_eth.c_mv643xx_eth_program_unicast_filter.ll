; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_program_unicast_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_program_unicast_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mv643xx_eth_private = type { i32 }

@PORT_CONFIG = common dso_local global i32 0, align 4
@UNICAST_PROMISCUOUS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mv643xx_eth_program_unicast_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv643xx_eth_program_unicast_filter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.mv643xx_eth_private* %10, %struct.mv643xx_eth_private** %3, align 8
  %11 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @uc_addr_set(%struct.mv643xx_eth_private* %11, i32 %14)
  %16 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %17 = load i32, i32* @PORT_CONFIG, align 4
  %18 = call i32 @rdlp(%struct.mv643xx_eth_private* %16, i32 %17)
  %19 = load i32, i32* @UNICAST_PROMISCUOUS_MODE, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @uc_addr_filter_mask(%struct.net_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @UNICAST_PROMISCUOUS_MODE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  store i32 65535, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %36 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @UNICAST_TABLE(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %34
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, 256
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, 65536
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, 16777216
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %69, 4
  store i32 %70, i32* %5, align 4
  %71 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @wrl(%struct.mv643xx_eth_private* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %6, align 4
  br label %31

78:                                               ; preds = %31
  %79 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %80 = load i32, i32* @PORT_CONFIG, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @wrlp(%struct.mv643xx_eth_private* %79, i32 %80, i32 %81)
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @uc_addr_set(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @uc_addr_filter_mask(%struct.net_device*) #1

declare dso_local i32 @UNICAST_TABLE(i32) #1

declare dso_local i32 @wrl(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
