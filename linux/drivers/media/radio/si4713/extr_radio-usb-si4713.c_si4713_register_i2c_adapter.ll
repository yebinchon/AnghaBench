; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_si4713_register_i2c_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_si4713_register_i2c_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.si4713_usb_device = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@si4713_i2c_adapter_template = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_usb_device*)* @si4713_register_i2c_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_register_i2c_adapter(%struct.si4713_usb_device* %0) #0 {
  %2 = alloca %struct.si4713_usb_device*, align 8
  store %struct.si4713_usb_device* %0, %struct.si4713_usb_device** %2, align 8
  %3 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %4 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %3, i32 0, i32 0
  %5 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_8__* @si4713_i2c_adapter_template to i8*), i64 8, i1 false)
  %6 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %7 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %11 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32* %9, i32** %13, align 8
  %14 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %15 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %14, i32 0, i32 0
  %16 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %17 = call i32 @i2c_set_adapdata(%struct.TYPE_8__* %15, %struct.si4713_usb_device* %16)
  %18 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %19 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %18, i32 0, i32 0
  %20 = call i32 @i2c_add_adapter(%struct.TYPE_8__* %19)
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_8__*, %struct.si4713_usb_device*) #2

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
