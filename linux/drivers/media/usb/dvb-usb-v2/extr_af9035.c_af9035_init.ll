; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__*, %struct.usb_interface* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.state = type { i32 }
%struct.reg_val_mask = type { i32, i32, i32, i32, i32, i32 }

@USB_SPEED_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"USB speed=%d frame_size=%04x packet_size=%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @af9035_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [18 x %struct.reg_val_mask], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %12 = call %struct.state* @d_to_priv(%struct.dvb_usb_device* %11)
  store %struct.state* %12, %struct.state** %4, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 1
  %15 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  store %struct.usb_interface* %15, %struct.usb_interface** %5, align 8
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @USB_SPEED_FULL, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 5, i32 87
  %25 = mul nsw i32 %24, 188
  %26 = sdiv i32 %25, 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @USB_SPEED_FULL, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 64, i32 512
  %36 = sdiv i32 %35, 4
  store i32 %36, i32* %9, align 4
  %37 = getelementptr inbounds [18 x %struct.reg_val_mask], [18 x %struct.reg_val_mask]* %10, i64 0, i64 0
  %38 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 0
  store i32 8452509, i32* %38, align 8
  %39 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 4
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 5
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i64 1
  %45 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 0
  store i32 8452516, i32* %45, align 8
  %46 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 4
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 5
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i64 1
  %52 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 0
  store i32 56593, i32* %52, align 8
  %53 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 2
  store i32 32, i32* %54, align 8
  %55 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 3
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 4
  store i32 0, i32* %56, align 8
  %57 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 5
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i64 1
  %59 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 0
  store i32 56593, i32* %59, align 8
  %60 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 2
  store i32 64, i32* %61, align 8
  %62 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 3
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 4
  store i32 0, i32* %63, align 8
  %64 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 5
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i64 1
  %66 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 0
  store i32 56595, i32* %66, align 8
  %67 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 2
  store i32 32, i32* %68, align 8
  %69 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 4
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 5
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i64 1
  %73 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 0
  store i32 56595, i32* %73, align 8
  %74 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 2
  store i32 64, i32* %75, align 8
  %76 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 4
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 5
  store i32 0, i32* %78, align 4
  %79 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i64 1
  %80 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %79, i32 0, i32 0
  store i32 56593, i32* %80, align 8
  %81 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %79, i32 0, i32 1
  store i32 32, i32* %81, align 4
  %82 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %79, i32 0, i32 2
  store i32 32, i32* %82, align 8
  %83 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %79, i32 0, i32 3
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %79, i32 0, i32 4
  store i32 0, i32* %84, align 8
  %85 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %79, i32 0, i32 5
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %79, i64 1
  %87 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 0
  store i32 56712, i32* %87, align 8
  %88 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 1
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 0
  %91 = and i32 %90, 255
  store i32 %91, i32* %88, align 4
  %92 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 2
  store i32 255, i32* %92, align 8
  %93 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 3
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 4
  store i32 0, i32* %94, align 8
  %95 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 5
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i64 1
  %97 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %96, i32 0, i32 0
  store i32 56713, i32* %97, align 8
  %98 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %96, i32 0, i32 1
  %99 = load i32, i32* %8, align 4
  %100 = ashr i32 %99, 8
  %101 = and i32 %100, 255
  store i32 %101, i32* %98, align 4
  %102 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %96, i32 0, i32 2
  store i32 255, i32* %102, align 8
  %103 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %96, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %96, i32 0, i32 4
  store i32 0, i32* %104, align 8
  %105 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %96, i32 0, i32 5
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %96, i64 1
  %107 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %106, i32 0, i32 0
  store i32 56588, i32* %107, align 8
  %108 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %106, i32 0, i32 1
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %108, align 4
  %110 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %106, i32 0, i32 2
  store i32 255, i32* %110, align 8
  %111 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %106, i32 0, i32 3
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %106, i32 0, i32 4
  store i32 0, i32* %112, align 8
  %113 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %106, i32 0, i32 5
  store i32 0, i32* %113, align 4
  %114 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %106, i64 1
  %115 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %114, i32 0, i32 0
  store i32 56593, i32* %115, align 8
  %116 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %114, i32 0, i32 1
  %117 = load %struct.state*, %struct.state** %4, align 8
  %118 = getelementptr inbounds %struct.state, %struct.state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 6
  store i32 %120, i32* %116, align 4
  %121 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %114, i32 0, i32 2
  store i32 64, i32* %121, align 8
  %122 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %114, i32 0, i32 3
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %114, i32 0, i32 4
  store i32 0, i32* %123, align 8
  %124 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %114, i32 0, i32 5
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %114, i64 1
  %126 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %125, i32 0, i32 0
  store i32 56714, i32* %126, align 8
  %127 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %125, i32 0, i32 1
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 0
  %130 = and i32 %129, 255
  store i32 %130, i32* %127, align 4
  %131 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %125, i32 0, i32 2
  store i32 255, i32* %131, align 8
  %132 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %125, i32 0, i32 3
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %125, i32 0, i32 4
  store i32 0, i32* %133, align 8
  %134 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %125, i32 0, i32 5
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %125, i64 1
  %136 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %135, i32 0, i32 0
  store i32 56715, i32* %136, align 8
  %137 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %135, i32 0, i32 1
  %138 = load i32, i32* %8, align 4
  %139 = ashr i32 %138, 8
  %140 = and i32 %139, 255
  store i32 %140, i32* %137, align 4
  %141 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %135, i32 0, i32 2
  store i32 255, i32* %141, align 8
  %142 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %135, i32 0, i32 3
  store i32 0, i32* %142, align 4
  %143 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %135, i32 0, i32 4
  store i32 0, i32* %143, align 8
  %144 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %135, i32 0, i32 5
  store i32 0, i32* %144, align 4
  %145 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %135, i64 1
  %146 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %145, i32 0, i32 0
  store i32 56589, i32* %146, align 8
  %147 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %145, i32 0, i32 1
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %147, align 4
  %149 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %145, i32 0, i32 2
  store i32 255, i32* %149, align 8
  %150 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %145, i32 0, i32 3
  store i32 0, i32* %150, align 4
  %151 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %145, i32 0, i32 4
  store i32 0, i32* %151, align 8
  %152 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %145, i32 0, i32 5
  store i32 0, i32* %152, align 4
  %153 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %145, i64 1
  %154 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %153, i32 0, i32 0
  store i32 8452515, i32* %154, align 8
  %155 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %153, i32 0, i32 1
  %156 = load %struct.state*, %struct.state** %4, align 8
  %157 = getelementptr inbounds %struct.state, %struct.state* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %155, align 4
  %159 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %153, i32 0, i32 2
  store i32 1, i32* %159, align 8
  %160 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %153, i32 0, i32 3
  store i32 0, i32* %160, align 4
  %161 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %153, i32 0, i32 4
  store i32 0, i32* %161, align 8
  %162 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %153, i32 0, i32 5
  store i32 0, i32* %162, align 4
  %163 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %153, i64 1
  %164 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %163, i32 0, i32 0
  store i32 8452557, i32* %164, align 8
  %165 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %163, i32 0, i32 1
  %166 = load %struct.state*, %struct.state** %4, align 8
  %167 = getelementptr inbounds %struct.state, %struct.state* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %165, align 4
  %169 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %163, i32 0, i32 2
  store i32 1, i32* %169, align 8
  %170 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %163, i32 0, i32 3
  store i32 0, i32* %170, align 4
  %171 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %163, i32 0, i32 4
  store i32 0, i32* %171, align 8
  %172 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %163, i32 0, i32 5
  store i32 0, i32* %172, align 4
  %173 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %163, i64 1
  %174 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %173, i32 0, i32 0
  store i32 8452509, i32* %174, align 8
  %175 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %173, i32 0, i32 1
  store i32 0, i32* %175, align 4
  %176 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %173, i32 0, i32 2
  store i32 1, i32* %176, align 8
  %177 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %173, i32 0, i32 3
  store i32 0, i32* %177, align 4
  %178 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %173, i32 0, i32 4
  store i32 0, i32* %178, align 8
  %179 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %173, i32 0, i32 5
  store i32 0, i32* %179, align 4
  %180 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %173, i64 1
  %181 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %180, i32 0, i32 0
  store i32 8452516, i32* %181, align 8
  %182 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %180, i32 0, i32 1
  store i32 0, i32* %182, align 4
  %183 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %180, i32 0, i32 2
  store i32 1, i32* %183, align 8
  %184 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %180, i32 0, i32 3
  store i32 0, i32* %184, align 4
  %185 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %180, i32 0, i32 4
  store i32 0, i32* %185, align 8
  %186 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %180, i32 0, i32 5
  store i32 0, i32* %186, align 4
  %187 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %188 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %187, i32 0, i32 0
  %189 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %190 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %188, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %193, i32 %194, i32 %195)
  store i32 0, i32* %7, align 4
  br label %197

197:                                              ; preds = %224, %1
  %198 = load i32, i32* %7, align 4
  %199 = getelementptr inbounds [18 x %struct.reg_val_mask], [18 x %struct.reg_val_mask]* %10, i64 0, i64 0
  %200 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %199)
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %202, label %227

202:                                              ; preds = %197
  %203 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [18 x %struct.reg_val_mask], [18 x %struct.reg_val_mask]* %10, i64 0, i64 %205
  %207 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [18 x %struct.reg_val_mask], [18 x %struct.reg_val_mask]* %10, i64 0, i64 %210
  %212 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [18 x %struct.reg_val_mask], [18 x %struct.reg_val_mask]* %10, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %203, i32 %208, i32 %213, i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %202
  br label %228

223:                                              ; preds = %202
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %197

227:                                              ; preds = %197
  store i32 0, i32* %2, align 4
  br label %234

228:                                              ; preds = %222
  %229 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %230 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %229, i32 0, i32 0
  %231 = load i32, i32* %6, align 4
  %232 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %230, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %6, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %228, %227
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local %struct.state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_val_mask*) #1

declare dso_local i32 @af9035_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
