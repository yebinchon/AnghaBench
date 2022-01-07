; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.net_device = type { i32*, i32, i32*, i32, i32, i32 }
%struct.enc28j60_net = type { i32, i32, i32, i32, i32, i32, %struct.spi_device*, %struct.net_device* }

@ETH_ALEN = common dso_local global i32 0, align 4
@debug = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"Ethernet driver %s loaded\0A\00", align 1
@DRV_VERSION = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENC28J60_MSG_DEFAULT = common dso_local global i32 0, align 4
@enc28j60_tx_work_handler = common dso_local global i32 0, align 4
@enc28j60_setrx_work_handler = common dso_local global i32 0, align 4
@enc28j60_irq_work_handler = common dso_local global i32 0, align 4
@enc28j60_restart_work_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"chip not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@enc28j60_irq = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"request irq %d failed (ret = %d)\0A\00", align 1
@IF_PORT_10BASET = common dso_local global i32 0, align 4
@enc28j60_netdev_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@enc28j60_ethtool_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"register netdev failed (ret = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @enc28j60_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc28j60_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.enc28j60_net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %14 = call i64 @netif_msg_drv(%struct.TYPE_3__* @debug)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = load i32, i32* @DRV_VERSION, align 4
  %20 = call i32 (i32*, i8*, ...) @dev_info(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = call %struct.net_device* @alloc_etherdev(i32 40)
  store %struct.net_device* %22, %struct.net_device** %6, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %163

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = call %struct.enc28j60_net* @netdev_priv(%struct.net_device* %29)
  store %struct.enc28j60_net* %30, %struct.enc28j60_net** %7, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %33 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %32, i32 0, i32 7
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %36 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %35, i32 0, i32 6
  store %struct.spi_device* %34, %struct.spi_device** %36, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @debug, i32 0, i32 0), align 4
  %38 = load i32, i32* @ENC28J60_MSG_DEFAULT, align 4
  %39 = call i32 @netif_msg_init(i32 %37, i32 %38)
  %40 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %41 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %43 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %42, i32 0, i32 4
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %46 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %45, i32 0, i32 3
  %47 = load i32, i32* @enc28j60_tx_work_handler, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %50 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %49, i32 0, i32 2
  %51 = load i32, i32* @enc28j60_setrx_work_handler, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %54 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %53, i32 0, i32 1
  %55 = load i32, i32* @enc28j60_irq_work_handler, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  %57 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %58 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %57, i32 0, i32 0
  %59 = load i32, i32* @enc28j60_restart_work_handler, align 4
  %60 = call i32 @INIT_WORK(i32* %58, i32 %59)
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %63 = call i32 @spi_set_drvdata(%struct.spi_device* %61, %struct.enc28j60_net* %62)
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 1
  %67 = call i32 @SET_NETDEV_DEV(%struct.net_device* %64, i32* %66)
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = call i32 @enc28j60_chipset_init(%struct.net_device* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %28
  %72 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %73 = call i64 @netif_msg_probe(%struct.enc28j60_net* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 1
  %78 = call i32 (i32*, i8*, ...) @dev_info(i32* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %160

82:                                               ; preds = %28
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 1
  %85 = trunc i64 %11 to i32
  %86 = call i64 @device_get_mac_address(i32* %84, i8* %13, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ether_addr_copy(i32 %91, i8* %13)
  br label %96

93:                                               ; preds = %82
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = call i32 @eth_hw_addr_random(%struct.net_device* %94)
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = call i32 @enc28j60_set_hw_macaddr(%struct.net_device* %97)
  %99 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %100 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @enc28j60_irq, align 4
  %103 = load i32, i32* @DRV_NAME, align 4
  %104 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %105 = call i32 @request_irq(i32 %101, i32 %102, i32 0, i32 %103, %struct.enc28j60_net* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %96
  %109 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %110 = call i64 @netif_msg_probe(%struct.enc28j60_net* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %113, i32 0, i32 1
  %115 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %116 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %112, %108
  br label %160

121:                                              ; preds = %96
  %122 = load i32, i32* @IF_PORT_10BASET, align 4
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %126 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.net_device*, %struct.net_device** %6, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.net_device*, %struct.net_device** %6, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 2
  store i32* @enc28j60_netdev_ops, i32** %131, align 8
  %132 = load i32, i32* @TX_TIMEOUT, align 4
  %133 = load %struct.net_device*, %struct.net_device** %6, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  store i32* @enc28j60_ethtool_ops, i32** %136, align 8
  %137 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %138 = call i32 @enc28j60_lowpower(%struct.enc28j60_net* %137, i32 1)
  %139 = load %struct.net_device*, %struct.net_device** %6, align 8
  %140 = call i32 @register_netdev(%struct.net_device* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %121
  %144 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %145 = call i64 @netif_msg_probe(%struct.enc28j60_net* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %149 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %148, i32 0, i32 1
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %147, %143
  br label %154

153:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %165

154:                                              ; preds = %152
  %155 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %156 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.enc28j60_net*, %struct.enc28j60_net** %7, align 8
  %159 = call i32 @free_irq(i32 %157, %struct.enc28j60_net* %158)
  br label %160

160:                                              ; preds = %154, %120, %79
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = call i32 @free_netdev(%struct.net_device* %161)
  br label %163

163:                                              ; preds = %160, %25
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %165

165:                                              ; preds = %163, %153
  %166 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @netif_msg_drv(%struct.TYPE_3__*) #2

declare dso_local i32 @dev_info(i32*, i8*, ...) #2

declare dso_local %struct.net_device* @alloc_etherdev(i32) #2

declare dso_local %struct.enc28j60_net* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @netif_msg_init(i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.enc28j60_net*) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #2

declare dso_local i32 @enc28j60_chipset_init(%struct.net_device*) #2

declare dso_local i64 @netif_msg_probe(%struct.enc28j60_net*) #2

declare dso_local i64 @device_get_mac_address(i32*, i8*, i32) #2

declare dso_local i32 @ether_addr_copy(i32, i8*) #2

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #2

declare dso_local i32 @enc28j60_set_hw_macaddr(%struct.net_device*) #2

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.enc28j60_net*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #2

declare dso_local i32 @enc28j60_lowpower(%struct.enc28j60_net*, i32) #2

declare dso_local i32 @register_netdev(%struct.net_device*) #2

declare dso_local i32 @free_irq(i32, %struct.enc28j60_net*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
