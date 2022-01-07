; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_it930x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_it930x_init.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @it930x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it930x_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [42 x %struct.reg_val_mask], align 16
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
  %24 = select i1 %22, i32 5, i32 816
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
  %37 = getelementptr inbounds [42 x %struct.reg_val_mask], [42 x %struct.reg_val_mask]* %10, i64 0, i64 0
  %38 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 0
  store i32 55834, i32* %38, align 8
  %39 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 1
  store i32 0, i32* %39, align 4
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
  store i32 62495, i32* %45, align 8
  %46 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 1
  store i32 4, i32* %46, align 4
  %47 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 2
  store i32 4, i32* %47, align 8
  %48 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 4
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i32 0, i32 5
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %44, i64 1
  %52 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 0
  store i32 55824, i32* %52, align 8
  %53 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 3
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 4
  store i32 0, i32* %56, align 8
  %57 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i32 0, i32 5
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i64 1
  %59 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 0
  store i32 62490, i32* %59, align 8
  %60 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 3
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 4
  store i32 0, i32* %63, align 8
  %64 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i32 0, i32 5
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %58, i64 1
  %66 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 0
  store i32 55837, i32* %66, align 8
  %67 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 2
  store i32 1, i32* %68, align 8
  %69 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 4
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 5
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i64 1
  %73 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 0
  store i32 56593, i32* %73, align 8
  %74 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 2
  store i32 32, i32* %75, align 8
  %76 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 4
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i32 0, i32 5
  store i32 0, i32* %78, align 4
  %79 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %72, i64 1
  %80 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %79, i32 0, i32 0
  store i32 56595, i32* %80, align 8
  %81 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %79, i32 0, i32 1
  store i32 0, i32* %81, align 4
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
  store i32 56593, i32* %87, align 8
  %88 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 1
  store i32 32, i32* %88, align 4
  %89 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 2
  store i32 32, i32* %89, align 8
  %90 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 4
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i32 0, i32 5
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %86, i64 1
  %94 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %93, i32 0, i32 0
  store i32 56593, i32* %94, align 8
  %95 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %93, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %93, i32 0, i32 2
  store i32 64, i32* %96, align 8
  %97 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %93, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %93, i32 0, i32 4
  store i32 0, i32* %98, align 8
  %99 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %93, i32 0, i32 5
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %93, i64 1
  %101 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %100, i32 0, i32 0
  store i32 56595, i32* %101, align 8
  %102 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %100, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %100, i32 0, i32 2
  store i32 64, i32* %103, align 8
  %104 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %100, i32 0, i32 3
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %100, i32 0, i32 4
  store i32 0, i32* %105, align 8
  %106 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %100, i32 0, i32 5
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %100, i64 1
  %108 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %107, i32 0, i32 0
  store i32 56593, i32* %108, align 8
  %109 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %107, i32 0, i32 1
  %110 = load %struct.state*, %struct.state** %4, align 8
  %111 = getelementptr inbounds %struct.state, %struct.state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 6
  store i32 %113, i32* %109, align 4
  %114 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %107, i32 0, i32 2
  store i32 64, i32* %114, align 8
  %115 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %107, i32 0, i32 3
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %107, i32 0, i32 4
  store i32 0, i32* %116, align 8
  %117 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %107, i32 0, i32 5
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %107, i64 1
  %119 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i32 0, i32 0
  store i32 56712, i32* %119, align 8
  %120 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i32 0, i32 1
  %121 = load i32, i32* %8, align 4
  %122 = ashr i32 %121, 0
  %123 = and i32 %122, 255
  store i32 %123, i32* %120, align 4
  %124 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i32 0, i32 2
  store i32 255, i32* %124, align 8
  %125 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i32 0, i32 4
  store i32 0, i32* %126, align 8
  %127 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i32 0, i32 5
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i64 1
  %129 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %128, i32 0, i32 0
  store i32 56713, i32* %129, align 8
  %130 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %128, i32 0, i32 1
  %131 = load i32, i32* %8, align 4
  %132 = ashr i32 %131, 8
  %133 = and i32 %132, 255
  store i32 %133, i32* %130, align 4
  %134 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %128, i32 0, i32 2
  store i32 255, i32* %134, align 8
  %135 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %128, i32 0, i32 3
  store i32 0, i32* %135, align 4
  %136 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %128, i32 0, i32 4
  store i32 0, i32* %136, align 8
  %137 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %128, i32 0, i32 5
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %128, i64 1
  %139 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %138, i32 0, i32 0
  store i32 56588, i32* %139, align 8
  %140 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %138, i32 0, i32 1
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %140, align 4
  %142 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %138, i32 0, i32 2
  store i32 255, i32* %142, align 8
  %143 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %138, i32 0, i32 3
  store i32 0, i32* %143, align 4
  %144 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %138, i32 0, i32 4
  store i32 0, i32* %144, align 8
  %145 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %138, i32 0, i32 5
  store i32 0, i32* %145, align 4
  %146 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %138, i64 1
  %147 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %146, i32 0, i32 0
  store i32 56714, i32* %147, align 8
  %148 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %146, i32 0, i32 1
  %149 = load i32, i32* %8, align 4
  %150 = ashr i32 %149, 0
  %151 = and i32 %150, 255
  store i32 %151, i32* %148, align 4
  %152 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %146, i32 0, i32 2
  store i32 255, i32* %152, align 8
  %153 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %146, i32 0, i32 3
  store i32 0, i32* %153, align 4
  %154 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %146, i32 0, i32 4
  store i32 0, i32* %154, align 8
  %155 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %146, i32 0, i32 5
  store i32 0, i32* %155, align 4
  %156 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %146, i64 1
  %157 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %156, i32 0, i32 0
  store i32 56715, i32* %157, align 8
  %158 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %156, i32 0, i32 1
  %159 = load i32, i32* %8, align 4
  %160 = ashr i32 %159, 8
  %161 = and i32 %160, 255
  store i32 %161, i32* %158, align 4
  %162 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %156, i32 0, i32 2
  store i32 255, i32* %162, align 8
  %163 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %156, i32 0, i32 3
  store i32 0, i32* %163, align 4
  %164 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %156, i32 0, i32 4
  store i32 0, i32* %164, align 8
  %165 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %156, i32 0, i32 5
  store i32 0, i32* %165, align 4
  %166 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %156, i64 1
  %167 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %166, i32 0, i32 0
  store i32 56589, i32* %167, align 8
  %168 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %166, i32 0, i32 1
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %168, align 4
  %170 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %166, i32 0, i32 2
  store i32 255, i32* %170, align 8
  %171 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %166, i32 0, i32 3
  store i32 0, i32* %171, align 4
  %172 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %166, i32 0, i32 4
  store i32 0, i32* %172, align 8
  %173 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %166, i32 0, i32 5
  store i32 0, i32* %173, align 4
  %174 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %166, i64 1
  %175 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %174, i32 0, i32 0
  store i32 55837, i32* %175, align 8
  %176 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %174, i32 0, i32 1
  store i32 0, i32* %176, align 4
  %177 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %174, i32 0, i32 2
  store i32 1, i32* %177, align 8
  %178 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %174, i32 0, i32 3
  store i32 0, i32* %178, align 4
  %179 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %174, i32 0, i32 4
  store i32 0, i32* %179, align 8
  %180 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %174, i32 0, i32 5
  store i32 0, i32* %180, align 4
  %181 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %174, i64 1
  %182 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %181, i32 0, i32 0
  store i32 55347, i32* %182, align 8
  %183 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %181, i32 0, i32 1
  store i32 1, i32* %183, align 4
  %184 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %181, i32 0, i32 2
  store i32 255, i32* %184, align 8
  %185 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %181, i32 0, i32 3
  store i32 0, i32* %185, align 4
  %186 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %181, i32 0, i32 4
  store i32 0, i32* %186, align 8
  %187 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %181, i32 0, i32 5
  store i32 0, i32* %187, align 4
  %188 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %181, i64 1
  %189 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %188, i32 0, i32 0
  store i32 55344, i32* %189, align 8
  %190 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %188, i32 0, i32 1
  store i32 0, i32* %190, align 4
  %191 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %188, i32 0, i32 2
  store i32 255, i32* %191, align 8
  %192 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %188, i32 0, i32 3
  store i32 0, i32* %192, align 4
  %193 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %188, i32 0, i32 4
  store i32 0, i32* %193, align 8
  %194 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %188, i32 0, i32 5
  store i32 0, i32* %194, align 4
  %195 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %188, i64 1
  %196 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %195, i32 0, i32 0
  store i32 55345, i32* %196, align 8
  %197 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %195, i32 0, i32 1
  store i32 1, i32* %197, align 4
  %198 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %195, i32 0, i32 2
  store i32 255, i32* %198, align 8
  %199 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %195, i32 0, i32 3
  store i32 0, i32* %199, align 4
  %200 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %195, i32 0, i32 4
  store i32 0, i32* %200, align 8
  %201 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %195, i32 0, i32 5
  store i32 0, i32* %201, align 4
  %202 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %195, i64 1
  %203 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %202, i32 0, i32 0
  store i32 55346, i32* %203, align 8
  %204 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %202, i32 0, i32 1
  store i32 0, i32* %204, align 4
  %205 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %202, i32 0, i32 2
  store i32 255, i32* %205, align 8
  %206 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %202, i32 0, i32 3
  store i32 0, i32* %206, align 4
  %207 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %202, i32 0, i32 4
  store i32 0, i32* %207, align 8
  %208 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %202, i32 0, i32 5
  store i32 0, i32* %208, align 4
  %209 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %202, i64 1
  %210 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %209, i32 0, i32 0
  store i32 55472, i32* %210, align 8
  %211 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %209, i32 0, i32 1
  store i32 1, i32* %211, align 4
  %212 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %209, i32 0, i32 2
  store i32 255, i32* %212, align 8
  %213 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %209, i32 0, i32 3
  store i32 0, i32* %213, align 4
  %214 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %209, i32 0, i32 4
  store i32 0, i32* %214, align 8
  %215 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %209, i32 0, i32 5
  store i32 0, i32* %215, align 4
  %216 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %209, i64 1
  %217 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %216, i32 0, i32 0
  store i32 55473, i32* %217, align 8
  %218 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %216, i32 0, i32 1
  store i32 1, i32* %218, align 4
  %219 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %216, i32 0, i32 2
  store i32 255, i32* %219, align 8
  %220 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %216, i32 0, i32 3
  store i32 0, i32* %220, align 4
  %221 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %216, i32 0, i32 4
  store i32 0, i32* %221, align 8
  %222 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %216, i32 0, i32 5
  store i32 0, i32* %222, align 4
  %223 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %216, i64 1
  %224 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %223, i32 0, i32 0
  store i32 55471, i32* %224, align 8
  %225 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %223, i32 0, i32 1
  store i32 0, i32* %225, align 4
  %226 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %223, i32 0, i32 2
  store i32 255, i32* %226, align 8
  %227 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %223, i32 0, i32 3
  store i32 0, i32* %227, align 4
  %228 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %223, i32 0, i32 4
  store i32 0, i32* %228, align 8
  %229 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %223, i32 0, i32 5
  store i32 0, i32* %229, align 4
  %230 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %223, i64 1
  %231 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %230, i32 0, i32 0
  store i32 55492, i32* %231, align 8
  %232 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %230, i32 0, i32 1
  store i32 1, i32* %232, align 4
  %233 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %230, i32 0, i32 2
  store i32 255, i32* %233, align 8
  %234 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %230, i32 0, i32 3
  store i32 0, i32* %234, align 4
  %235 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %230, i32 0, i32 4
  store i32 0, i32* %235, align 8
  %236 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %230, i32 0, i32 5
  store i32 0, i32* %236, align 4
  %237 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %230, i64 1
  %238 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %237, i32 0, i32 0
  store i32 55493, i32* %238, align 8
  %239 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %237, i32 0, i32 1
  store i32 1, i32* %239, align 4
  %240 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %237, i32 0, i32 2
  store i32 255, i32* %240, align 8
  %241 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %237, i32 0, i32 3
  store i32 0, i32* %241, align 4
  %242 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %237, i32 0, i32 4
  store i32 0, i32* %242, align 8
  %243 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %237, i32 0, i32 5
  store i32 0, i32* %243, align 4
  %244 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %237, i64 1
  %245 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %244, i32 0, i32 0
  store i32 55491, i32* %245, align 8
  %246 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %244, i32 0, i32 1
  store i32 0, i32* %246, align 4
  %247 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %244, i32 0, i32 2
  store i32 255, i32* %247, align 8
  %248 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %244, i32 0, i32 3
  store i32 0, i32* %248, align 4
  %249 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %244, i32 0, i32 4
  store i32 0, i32* %249, align 8
  %250 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %244, i32 0, i32 5
  store i32 0, i32* %250, align 4
  %251 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %244, i64 1
  %252 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %251, i32 0, i32 0
  store i32 55516, i32* %252, align 8
  %253 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %251, i32 0, i32 1
  store i32 1, i32* %253, align 4
  %254 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %251, i32 0, i32 2
  store i32 255, i32* %254, align 8
  %255 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %251, i32 0, i32 3
  store i32 0, i32* %255, align 4
  %256 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %251, i32 0, i32 4
  store i32 0, i32* %256, align 8
  %257 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %251, i32 0, i32 5
  store i32 0, i32* %257, align 4
  %258 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %251, i64 1
  %259 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %258, i32 0, i32 0
  store i32 55517, i32* %259, align 8
  %260 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %258, i32 0, i32 1
  store i32 1, i32* %260, align 4
  %261 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %258, i32 0, i32 2
  store i32 255, i32* %261, align 8
  %262 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %258, i32 0, i32 3
  store i32 0, i32* %262, align 4
  %263 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %258, i32 0, i32 4
  store i32 0, i32* %263, align 8
  %264 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %258, i32 0, i32 5
  store i32 0, i32* %264, align 4
  %265 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %258, i64 1
  %266 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %265, i32 0, i32 0
  store i32 55515, i32* %266, align 8
  %267 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %265, i32 0, i32 1
  store i32 0, i32* %267, align 4
  %268 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %265, i32 0, i32 2
  store i32 255, i32* %268, align 8
  %269 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %265, i32 0, i32 3
  store i32 0, i32* %269, align 4
  %270 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %265, i32 0, i32 4
  store i32 0, i32* %270, align 8
  %271 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %265, i32 0, i32 5
  store i32 0, i32* %271, align 4
  %272 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %265, i64 1
  %273 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %272, i32 0, i32 0
  store i32 55524, i32* %273, align 8
  %274 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %272, i32 0, i32 1
  store i32 1, i32* %274, align 4
  %275 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %272, i32 0, i32 2
  store i32 255, i32* %275, align 8
  %276 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %272, i32 0, i32 3
  store i32 0, i32* %276, align 4
  %277 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %272, i32 0, i32 4
  store i32 0, i32* %277, align 8
  %278 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %272, i32 0, i32 5
  store i32 0, i32* %278, align 4
  %279 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %272, i64 1
  %280 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %279, i32 0, i32 0
  store i32 55525, i32* %280, align 8
  %281 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %279, i32 0, i32 1
  store i32 1, i32* %281, align 4
  %282 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %279, i32 0, i32 2
  store i32 255, i32* %282, align 8
  %283 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %279, i32 0, i32 3
  store i32 0, i32* %283, align 4
  %284 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %279, i32 0, i32 4
  store i32 0, i32* %284, align 8
  %285 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %279, i32 0, i32 5
  store i32 0, i32* %285, align 4
  %286 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %279, i64 1
  %287 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %286, i32 0, i32 0
  store i32 55523, i32* %287, align 8
  %288 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %286, i32 0, i32 1
  store i32 0, i32* %288, align 4
  %289 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %286, i32 0, i32 2
  store i32 255, i32* %289, align 8
  %290 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %286, i32 0, i32 3
  store i32 0, i32* %290, align 4
  %291 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %286, i32 0, i32 4
  store i32 0, i32* %291, align 8
  %292 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %286, i32 0, i32 5
  store i32 0, i32* %292, align 4
  %293 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %286, i64 1
  %294 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %293, i32 0, i32 0
  store i32 55528, i32* %294, align 8
  %295 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %293, i32 0, i32 1
  store i32 1, i32* %295, align 4
  %296 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %293, i32 0, i32 2
  store i32 255, i32* %296, align 8
  %297 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %293, i32 0, i32 3
  store i32 0, i32* %297, align 4
  %298 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %293, i32 0, i32 4
  store i32 0, i32* %298, align 8
  %299 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %293, i32 0, i32 5
  store i32 0, i32* %299, align 4
  %300 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %293, i64 1
  %301 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %300, i32 0, i32 0
  store i32 55529, i32* %301, align 8
  %302 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %300, i32 0, i32 1
  store i32 1, i32* %302, align 4
  %303 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %300, i32 0, i32 2
  store i32 255, i32* %303, align 8
  %304 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %300, i32 0, i32 3
  store i32 0, i32* %304, align 4
  %305 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %300, i32 0, i32 4
  store i32 0, i32* %305, align 8
  %306 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %300, i32 0, i32 5
  store i32 0, i32* %306, align 4
  %307 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %300, i64 1
  %308 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %307, i32 0, i32 0
  store i32 55527, i32* %308, align 8
  %309 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %307, i32 0, i32 1
  store i32 0, i32* %309, align 4
  %310 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %307, i32 0, i32 2
  store i32 255, i32* %310, align 8
  %311 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %307, i32 0, i32 3
  store i32 0, i32* %311, align 4
  %312 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %307, i32 0, i32 4
  store i32 0, i32* %312, align 8
  %313 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %307, i32 0, i32 5
  store i32 0, i32* %313, align 4
  %314 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %307, i64 1
  %315 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %314, i32 0, i32 0
  store i32 55896, i32* %315, align 8
  %316 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %314, i32 0, i32 1
  store i32 0, i32* %316, align 4
  %317 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %314, i32 0, i32 2
  store i32 1, i32* %317, align 8
  %318 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %314, i32 0, i32 3
  store i32 0, i32* %318, align 4
  %319 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %314, i32 0, i32 4
  store i32 0, i32* %319, align 8
  %320 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %314, i32 0, i32 5
  store i32 0, i32* %320, align 4
  %321 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %314, i64 1
  %322 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %321, i32 0, i32 0
  store i32 55923, i32* %322, align 8
  %323 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %321, i32 0, i32 1
  store i32 1, i32* %323, align 4
  %324 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %321, i32 0, i32 2
  store i32 255, i32* %324, align 8
  %325 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %321, i32 0, i32 3
  store i32 0, i32* %325, align 4
  %326 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %321, i32 0, i32 4
  store i32 0, i32* %326, align 8
  %327 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %321, i32 0, i32 5
  store i32 0, i32* %327, align 4
  %328 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %321, i64 1
  %329 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %328, i32 0, i32 0
  store i32 55928, i32* %329, align 8
  %330 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %328, i32 0, i32 1
  store i32 71, i32* %330, align 4
  %331 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %328, i32 0, i32 2
  store i32 255, i32* %331, align 8
  %332 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %328, i32 0, i32 3
  store i32 0, i32* %332, align 4
  %333 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %328, i32 0, i32 4
  store i32 0, i32* %333, align 8
  %334 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %328, i32 0, i32 5
  store i32 0, i32* %334, align 4
  %335 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %328, i64 1
  %336 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %335, i32 0, i32 0
  store i32 55884, i32* %336, align 8
  %337 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %335, i32 0, i32 1
  store i32 1, i32* %337, align 4
  %338 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %335, i32 0, i32 2
  store i32 255, i32* %338, align 8
  %339 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %335, i32 0, i32 3
  store i32 0, i32* %339, align 4
  %340 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %335, i32 0, i32 4
  store i32 0, i32* %340, align 8
  %341 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %335, i32 0, i32 5
  store i32 0, i32* %341, align 4
  %342 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %335, i64 1
  %343 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %342, i32 0, i32 0
  store i32 55898, i32* %343, align 8
  %344 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %342, i32 0, i32 1
  store i32 31, i32* %344, align 4
  %345 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %342, i32 0, i32 2
  store i32 255, i32* %345, align 8
  %346 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %342, i32 0, i32 3
  store i32 0, i32* %346, align 4
  %347 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %342, i32 0, i32 4
  store i32 0, i32* %347, align 8
  %348 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %342, i32 0, i32 5
  store i32 0, i32* %348, align 4
  %349 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %350 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %349, i32 0, i32 0
  %351 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %352 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %351, i32 0, i32 0
  %353 = load %struct.TYPE_2__*, %struct.TYPE_2__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %8, align 4
  %357 = load i32, i32* %9, align 4
  %358 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %350, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %355, i32 %356, i32 %357)
  store i32 0, i32* %7, align 4
  br label %359

359:                                              ; preds = %386, %1
  %360 = load i32, i32* %7, align 4
  %361 = getelementptr inbounds [42 x %struct.reg_val_mask], [42 x %struct.reg_val_mask]* %10, i64 0, i64 0
  %362 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %361)
  %363 = icmp slt i32 %360, %362
  br i1 %363, label %364, label %389

364:                                              ; preds = %359
  %365 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %366 = load i32, i32* %7, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [42 x %struct.reg_val_mask], [42 x %struct.reg_val_mask]* %10, i64 0, i64 %367
  %369 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %7, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [42 x %struct.reg_val_mask], [42 x %struct.reg_val_mask]* %10, i64 0, i64 %372
  %374 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* %7, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [42 x %struct.reg_val_mask], [42 x %struct.reg_val_mask]* %10, i64 0, i64 %377
  %379 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %365, i32 %370, i32 %375, i32 %380)
  store i32 %381, i32* %6, align 4
  %382 = load i32, i32* %6, align 4
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %364
  br label %390

385:                                              ; preds = %364
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %7, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %7, align 4
  br label %359

389:                                              ; preds = %359
  store i32 0, i32* %2, align 4
  br label %396

390:                                              ; preds = %384
  %391 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %392 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %391, i32 0, i32 0
  %393 = load i32, i32* %6, align 4
  %394 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %392, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %393)
  %395 = load i32, i32* %6, align 4
  store i32 %395, i32* %2, align 4
  br label %396

396:                                              ; preds = %390, %389
  %397 = load i32, i32* %2, align 4
  ret i32 %397
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
