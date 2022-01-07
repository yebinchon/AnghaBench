; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.net_device = type { i32, i32*, i32* }
%struct.ftmac100 = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.net_device*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ftmac100_ethtool_ops = common dso_local global i32 0, align 4
@ftmac100_netdev_ops = common dso_local global i32 0, align 4
@ftmac100_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not reserve memory region\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to ioremap ethernet registers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ftmac100_mdio_read = common dso_local global i32 0, align 4
@ftmac100_mdio_write = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to register netdev\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"irq %d, mapped at %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"generated random MAC address %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftmac100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftmac100_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ftmac100*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %180

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %4, align 8
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %180

23:                                               ; preds = %14
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @platform_get_irq(%struct.platform_device* %24, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %180

30:                                               ; preds = %23
  %31 = call %struct.net_device* @alloc_etherdev(i32 72)
  store %struct.net_device* %31, %struct.net_device** %6, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %178

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @SET_NETDEV_DEV(%struct.net_device* %38, i32* %40)
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 2
  store i32* @ftmac100_ethtool_ops, i32** %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  store i32* @ftmac100_netdev_ops, i32** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.net_device* %47)
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = call %struct.ftmac100* @netdev_priv(%struct.net_device* %49)
  store %struct.ftmac100* %50, %struct.ftmac100** %7, align 8
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %53 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %52, i32 0, i32 7
  store %struct.net_device* %51, %struct.net_device** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %57 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %56, i32 0, i32 6
  store i32* %55, i32** %57, align 8
  %58 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %59 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %58, i32 0, i32 5
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %63 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %62, i32 0, i32 1
  %64 = load i32, i32* @ftmac100_poll, align 4
  %65 = call i32 @netif_napi_add(%struct.net_device* %61, i32* %63, i32 %64, i32 64)
  %66 = load %struct.resource*, %struct.resource** %4, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.resource*, %struct.resource** %4, align 8
  %70 = call i32 @resource_size(%struct.resource* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_name(i32* %72)
  %74 = call i32 @request_mem_region(i32 %68, i32 %70, i32 %73)
  %75 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %76 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %78 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %37
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %172

87:                                               ; preds = %37
  %88 = load %struct.resource*, %struct.resource** %4, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.resource*, %struct.resource** %4, align 8
  %92 = call i32 @resource_size(%struct.resource* %91)
  %93 = call i32 @ioremap(i32 %90, i32 %92)
  %94 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %95 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %97 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %87
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %167

106:                                              ; preds = %87
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %109 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %111 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  store i64 0, i64* %112, align 8
  %113 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %114 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 31, i32* %115, align 8
  %116 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %117 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 31, i32* %118, align 4
  %119 = load %struct.net_device*, %struct.net_device** %6, align 8
  %120 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %121 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  store %struct.net_device* %119, %struct.net_device** %122, align 8
  %123 = load i32, i32* @ftmac100_mdio_read, align 4
  %124 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %125 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @ftmac100_mdio_write, align 4
  %128 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %129 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = call i32 @register_netdev(%struct.net_device* %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %106
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %162

139:                                              ; preds = %106
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %142 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %145 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %143, i32 %146)
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @is_valid_ether_addr(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %139
  %154 = load %struct.net_device*, %struct.net_device** %6, align 8
  %155 = call i32 @eth_hw_addr_random(%struct.net_device* %154)
  %156 = load %struct.net_device*, %struct.net_device** %6, align 8
  %157 = load %struct.net_device*, %struct.net_device** %6, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %153, %139
  store i32 0, i32* %2, align 4
  br label %180

162:                                              ; preds = %135
  %163 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %164 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @iounmap(i32 %165)
  br label %167

167:                                              ; preds = %162, %100
  %168 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %169 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @release_resource(i32 %170)
  br label %172

172:                                              ; preds = %167, %81
  %173 = load %struct.ftmac100*, %struct.ftmac100** %7, align 8
  %174 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %173, i32 0, i32 1
  %175 = call i32 @netif_napi_del(i32* %174)
  %176 = load %struct.net_device*, %struct.net_device** %6, align 8
  %177 = call i32 @free_netdev(%struct.net_device* %176)
  br label %178

178:                                              ; preds = %172, %34
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %161, %28, %20, %11
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local %struct.ftmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
