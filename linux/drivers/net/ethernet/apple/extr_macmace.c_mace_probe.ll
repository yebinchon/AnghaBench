; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_macmace.c_mace_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_macmace.c_mace_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.mace_data = type { i32, %struct.TYPE_2__*, i32, i32* }
%struct.net_device = type { i8*, i32, i32*, i32, i64 }

@PRIV_BYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MACE_BASE = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_MAC_MACE = common dso_local global i32 0, align 4
@IRQ_MAC_MACE_DMA = common dso_local global i32 0, align 4
@MACE_PROM = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@mace_netdev_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Onboard MACE, hardware address %pM, chip revision 0x%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mace_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mace_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mace_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i8 0, i8* %8, align 1
  %11 = load i32, i32* @PRIV_BYTES, align 4
  %12 = call %struct.net_device* @alloc_etherdev(i32 %11)
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %138

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.mace_data* @netdev_priv(%struct.net_device* %19)
  store %struct.mace_data* %20, %struct.mace_data** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.mace_data*, %struct.mace_data** %5, align 8
  %24 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.net_device* %26)
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @SET_NETDEV_DEV(%struct.net_device* %28, i32* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MACE_BASE, align 8
  %33 = ptrtoint %struct.TYPE_2__* %32 to i64
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MACE_BASE, align 8
  %37 = load %struct.mace_data*, %struct.mace_data** %5, align 8
  %38 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %37, i32 0, i32 1
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  %39 = load i32, i32* @IRQ_MAC_MACE, align 4
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @IRQ_MAC_MACE_DMA, align 4
  %43 = load %struct.mace_data*, %struct.mace_data** %5, align 8
  %44 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mace_data*, %struct.mace_data** %5, align 8
  %46 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load %struct.mace_data*, %struct.mace_data** %5, align 8
  %52 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %50, %55
  %57 = load %struct.mace_data*, %struct.mace_data** %5, align 8
  %58 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @MACE_PROM, align 8
  store i8* %59, i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %84, %18
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %63, label %87

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call zeroext i8 @bitrev8(i8 zeroext %69)
  store i8 %70, i8* %10, align 1
  %71 = load i8, i8* %10, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %8, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %8, align 1
  %77 = load i8, i8* %10, align 1
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 %77, i8* %83, align 1
  br label %84

84:                                               ; preds = %63
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %60

87:                                               ; preds = %60
  br label %88

88:                                               ; preds = %104, %87
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 8
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %4, align 4
  %94 = shl i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call zeroext i8 @bitrev8(i8 zeroext %97)
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* %8, align 1
  %101 = zext i8 %100 to i32
  %102 = xor i32 %101, %99
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %8, align 1
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %88

107:                                              ; preds = %88
  %108 = load i8, i8* %8, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp ne i32 %109, 255
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = call i32 @free_netdev(%struct.net_device* %112)
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %138

116:                                              ; preds = %107
  %117 = load %struct.net_device*, %struct.net_device** %7, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 2
  store i32* @mace_netdev_ops, i32** %118, align 8
  %119 = load i32, i32* @TX_TIMEOUT, align 4
  %120 = load %struct.net_device*, %struct.net_device** %7, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %7, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.mace_data*, %struct.mace_data** %5, align 8
  %126 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %124, i32 %127)
  %129 = load %struct.net_device*, %struct.net_device** %7, align 8
  %130 = call i32 @register_netdev(%struct.net_device* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %138

134:                                              ; preds = %116
  %135 = load %struct.net_device*, %struct.net_device** %7, align 8
  %136 = call i32 @free_netdev(%struct.net_device* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %133, %111, %15
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.mace_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local zeroext i8 @bitrev8(i8 zeroext) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i8*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
