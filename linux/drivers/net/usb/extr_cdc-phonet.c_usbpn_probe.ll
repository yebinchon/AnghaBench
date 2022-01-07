; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc-phonet.c_usbpn_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc-phonet.c_usbpn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface*, i32 }
%struct.usb_host_interface = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_cdc_union_desc = type { i32 }
%struct.usb_device = type { i32 }
%struct.net_device = type { i32 }
%struct.usbpn_dev = type { i32, i8*, i8*, i32, i32, %struct.usb_interface*, %struct.usb_interface*, %struct.usb_device*, %struct.net_device* }
%struct.usb_cdc_parsed_header = type { i32, %struct.usb_cdc_union_desc* }

@usbpn_probe.ifname = internal constant [8 x i8] c"usbpn%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@urbs = common dso_local global i32 0, align 4
@rxq_size = common dso_local global i32 0, align 4
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@usbpn_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usbpn_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"USB CDC Phonet device found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usbpn_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbpn_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_cdc_union_desc*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.usbpn_dev*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_cdc_parsed_header, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %6, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 1
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 1
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %25, align 8
  %27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @cdc_parse_cdc_header(%struct.usb_cdc_parsed_header* %16, %struct.usb_interface* %29, i32* %30, i32 %31)
  %33 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %16, i32 0, i32 1
  %34 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %33, align 8
  store %struct.usb_cdc_union_desc* %34, %struct.usb_cdc_union_desc** %6, align 8
  %35 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %16, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %38 = icmp ne %struct.usb_cdc_union_desc* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %256

45:                                               ; preds = %39
  %46 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %47 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %48 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %46, i32 %49)
  store %struct.usb_interface* %50, %struct.usb_interface** %8, align 8
  %51 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %52 = icmp eq %struct.usb_interface* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %256

56:                                               ; preds = %45
  %57 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %58 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %256

64:                                               ; preds = %56
  %65 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %65, i32 0, i32 1
  %67 = load %struct.usb_host_interface*, %struct.usb_host_interface** %66, align 8
  %68 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %67, i64 0
  %69 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %64
  %74 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %75 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %74, i32 0, i32 1
  %76 = load %struct.usb_host_interface*, %struct.usb_host_interface** %75, align 8
  %77 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %76, i64 1
  %78 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %84 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %83, i32 0, i32 1
  %85 = load %struct.usb_host_interface*, %struct.usb_host_interface** %84, align 8
  %86 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %85, i64 1
  store %struct.usb_host_interface* %86, %struct.usb_host_interface** %7, align 8
  br label %113

87:                                               ; preds = %73, %64
  %88 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %89 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %88, i32 0, i32 1
  %90 = load %struct.usb_host_interface*, %struct.usb_host_interface** %89, align 8
  %91 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %90, i64 0
  %92 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %109

96:                                               ; preds = %87
  %97 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %98 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %97, i32 0, i32 1
  %99 = load %struct.usb_host_interface*, %struct.usb_host_interface** %98, align 8
  %100 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %99, i64 1
  %101 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %107 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %106, i32 0, i32 1
  %108 = load %struct.usb_host_interface*, %struct.usb_host_interface** %107, align 8
  store %struct.usb_host_interface* %108, %struct.usb_host_interface** %7, align 8
  br label %112

109:                                              ; preds = %96, %87
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %256

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %82
  %114 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %115 = load i32, i32* @urbs, align 4
  %116 = load i32, i32* @rxq_size, align 4
  %117 = call i32 @struct_size(%struct.usbpn_dev* %114, i32 %115, i32 %116)
  %118 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %119 = load i32, i32* @usbpn_setup, align 4
  %120 = call %struct.net_device* @alloc_netdev(i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @usbpn_probe.ifname, i64 0, i64 0), i32 %118, i32 %119)
  store %struct.net_device* %120, %struct.net_device** %10, align 8
  %121 = load %struct.net_device*, %struct.net_device** %10, align 8
  %122 = icmp ne %struct.net_device* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %113
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %256

126:                                              ; preds = %113
  %127 = load %struct.net_device*, %struct.net_device** %10, align 8
  %128 = call %struct.usbpn_dev* @netdev_priv(%struct.net_device* %127)
  store %struct.usbpn_dev* %128, %struct.usbpn_dev** %11, align 8
  %129 = load %struct.net_device*, %struct.net_device** %10, align 8
  %130 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %131 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %130, i32 0, i32 2
  %132 = call i32 @SET_NETDEV_DEV(%struct.net_device* %129, i32* %131)
  %133 = load %struct.net_device*, %struct.net_device** %10, align 8
  %134 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %135 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %134, i32 0, i32 8
  store %struct.net_device* %133, %struct.net_device** %135, align 8
  %136 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %137 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %138 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %137, i32 0, i32 7
  store %struct.usb_device* %136, %struct.usb_device** %138, align 8
  %139 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %140 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %141 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %140, i32 0, i32 6
  store %struct.usb_interface* %139, %struct.usb_interface** %141, align 8
  %142 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %143 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %144 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %143, i32 0, i32 5
  store %struct.usb_interface* %142, %struct.usb_interface** %144, align 8
  %145 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %146 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %145, i32 0, i32 4
  %147 = call i32 @spin_lock_init(i32* %146)
  %148 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %149 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %148, i32 0, i32 3
  %150 = call i32 @spin_lock_init(i32* %149)
  %151 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %152 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @usb_pipein(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %126
  %161 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %162 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %163 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %162, i32 0, i32 1
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @usb_rcvbulkpipe(%struct.usb_device* %161, i32 %168)
  %170 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %171 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  %172 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %173 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %174 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %173, i32 0, i32 1
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @usb_sndbulkpipe(%struct.usb_device* %172, i32 %179)
  %181 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %182 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  br label %206

183:                                              ; preds = %126
  %184 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %185 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %186 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %185, i32 0, i32 1
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @usb_rcvbulkpipe(%struct.usb_device* %184, i32 %191)
  %193 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %194 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  %195 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %196 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %197 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %196, i32 0, i32 1
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @usb_sndbulkpipe(%struct.usb_device* %195, i32 %202)
  %204 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %205 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %183, %160
  %207 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %208 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %209 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %208, i32 0, i32 1
  %210 = load %struct.usb_host_interface*, %struct.usb_host_interface** %209, align 8
  %211 = ptrtoint %struct.usb_host_interface* %207 to i64
  %212 = ptrtoint %struct.usb_host_interface* %210 to i64
  %213 = sub i64 %211, %212
  %214 = sdiv exact i64 %213, 32
  %215 = trunc i64 %214 to i32
  %216 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %217 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %219 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %220 = call i32 @usb_driver_claim_interface(i32* @usbpn_driver, %struct.usb_interface* %218, %struct.usbpn_dev* %219)
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %206
  br label %250

224:                                              ; preds = %206
  %225 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %226 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %227 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %230 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = call i32 @usb_set_interface(%struct.usb_device* %225, i32 %228, i32 %234)
  %236 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %237 = load %struct.usbpn_dev*, %struct.usbpn_dev** %11, align 8
  %238 = call i32 @usb_set_intfdata(%struct.usb_interface* %236, %struct.usbpn_dev* %237)
  %239 = load %struct.net_device*, %struct.net_device** %10, align 8
  %240 = call i32 @register_netdev(%struct.net_device* %239)
  store i32 %240, i32* %15, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %224
  %244 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %245 = call i32 @usb_driver_release_interface(i32* @usbpn_driver, %struct.usb_interface* %244)
  br label %250

246:                                              ; preds = %224
  %247 = load %struct.net_device*, %struct.net_device** %10, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 0
  %249 = call i32 @dev_dbg(i32* %248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %256

250:                                              ; preds = %243, %223
  %251 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %252 = call i32 @usb_set_intfdata(%struct.usb_interface* %251, %struct.usbpn_dev* null)
  %253 = load %struct.net_device*, %struct.net_device** %10, align 8
  %254 = call i32 @free_netdev(%struct.net_device* %253)
  %255 = load i32, i32* %15, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %250, %246, %123, %109, %61, %53, %42
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @cdc_parse_cdc_header(%struct.usb_cdc_parsed_header*, %struct.usb_interface*, i32*, i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.usbpn_dev*, i32, i32) #1

declare dso_local %struct.usbpn_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i8* @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i8* @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, %struct.usb_interface*, %struct.usbpn_dev*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usbpn_dev*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
