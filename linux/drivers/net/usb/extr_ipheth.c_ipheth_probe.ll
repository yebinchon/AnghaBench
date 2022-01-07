; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ipheth_device = type { i32, i32*, i32, i64, i64, %struct.usb_interface*, %struct.net_device*, %struct.usb_device* }
%struct.net_device = type { i32*, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ipheth_netdev_ops = common dso_local global i32 0, align 4
@IPHETH_TX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@IPHETH_ALT_INTFNUM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to find alternate settings interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to find endpoints\0A\00", align 1
@IPHETH_CTRL_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ipheth_carrier_check_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"error allocating urbs: %d\0A\00", align 1
@ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"error registering netdev: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Apple iPhone USB Ethernet device attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ipheth_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipheth_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.ipheth_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = call %struct.net_device* @alloc_etherdev(i32 64)
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %10, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %187

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %10, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 3
  store i32* @ipheth_netdev_ops, i32** %23, align 8
  %24 = load i32, i32* @IPHETH_TX_TIMEOUT, align 4
  %25 = load %struct.net_device*, %struct.net_device** %10, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %10, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.net_device*, %struct.net_device** %10, align 8
  %32 = call %struct.ipheth_device* @netdev_priv(%struct.net_device* %31)
  store %struct.ipheth_device* %32, %struct.ipheth_device** %9, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %35 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %34, i32 0, i32 7
  store %struct.usb_device* %33, %struct.usb_device** %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %10, align 8
  %37 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %38 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %37, i32 0, i32 6
  store %struct.net_device* %36, %struct.net_device** %38, align 8
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %41 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %40, i32 0, i32 5
  store %struct.usb_interface* %39, %struct.usb_interface** %41, align 8
  %42 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %43 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %45 = load i32, i32* @IPHETH_ALT_INTFNUM, align 4
  %46 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %44, i32 %45)
  store %struct.usb_host_interface* %46, %struct.usb_host_interface** %7, align 8
  %47 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %48 = icmp eq %struct.usb_host_interface* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %21
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %183

55:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %92, %55
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %59 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %56
  %64 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %65 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %70, %struct.usb_endpoint_descriptor** %8, align 8
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %72 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %76 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %79 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  br label %91

80:                                               ; preds = %63
  %81 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %82 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %86 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %89 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %80
  br label %91

91:                                               ; preds = %90, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %56

95:                                               ; preds = %56
  %96 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %97 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %102 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %100, %95
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %12, align 4
  %108 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %109 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %108, i32 0, i32 0
  %110 = call i32 (i32*, i8*, ...) @dev_err(i32* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %183

111:                                              ; preds = %100
  %112 = load i32, i32* @IPHETH_CTRL_BUF_SIZE, align 4
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call i32* @kmalloc(i32 %112, i32 %113)
  %115 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %116 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %115, i32 0, i32 1
  store i32* %114, i32** %116, align 8
  %117 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %118 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %12, align 4
  br label %178

124:                                              ; preds = %111
  %125 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %126 = call i32 @ipheth_get_macaddr(%struct.ipheth_device* %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %177

130:                                              ; preds = %124
  %131 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %132 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %131, i32 0, i32 2
  %133 = load i32, i32* @ipheth_carrier_check_work, align 4
  %134 = call i32 @INIT_DELAYED_WORK(i32* %132, i32 %133)
  %135 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %136 = call i32 @ipheth_alloc_urbs(%struct.ipheth_device* %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %141 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %140, i32 0, i32 0
  %142 = load i32, i32* %12, align 4
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %176

144:                                              ; preds = %130
  %145 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %146 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %147 = call i32 @usb_set_intfdata(%struct.usb_interface* %145, %struct.ipheth_device* %146)
  %148 = load %struct.net_device*, %struct.net_device** %10, align 8
  %149 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %150 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %149, i32 0, i32 0
  %151 = call i32 @SET_NETDEV_DEV(%struct.net_device* %148, i32* %150)
  %152 = load %struct.net_device*, %struct.net_device** %10, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  store i32* @ops, i32** %153, align 8
  %154 = load %struct.net_device*, %struct.net_device** %10, align 8
  %155 = call i32 @register_netdev(%struct.net_device* %154)
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %144
  %159 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %160 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %159, i32 0, i32 0
  %161 = load i32, i32* %12, align 4
  %162 = call i32 (i32*, i8*, ...) @dev_err(i32* %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* @EIO, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %12, align 4
  br label %173

165:                                              ; preds = %144
  %166 = load %struct.net_device*, %struct.net_device** %10, align 8
  %167 = call i32 @netif_carrier_off(%struct.net_device* %166)
  %168 = load %struct.net_device*, %struct.net_device** %10, align 8
  %169 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %168)
  %170 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %171 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %170, i32 0, i32 0
  %172 = call i32 @dev_info(i32* %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %187

173:                                              ; preds = %158
  %174 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %175 = call i32 @ipheth_free_urbs(%struct.ipheth_device* %174)
  br label %176

176:                                              ; preds = %173, %139
  br label %177

177:                                              ; preds = %176, %129
  br label %178

178:                                              ; preds = %177, %121
  %179 = load %struct.ipheth_device*, %struct.ipheth_device** %9, align 8
  %180 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @kfree(i32* %181)
  br label %183

183:                                              ; preds = %178, %105, %49
  %184 = load %struct.net_device*, %struct.net_device** %10, align 8
  %185 = call i32 @free_netdev(%struct.net_device* %184)
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %183, %165, %18
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.ipheth_device* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ipheth_get_macaddr(%struct.ipheth_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ipheth_alloc_urbs(%struct.ipheth_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ipheth_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ipheth_free_urbs(%struct.ipheth_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
