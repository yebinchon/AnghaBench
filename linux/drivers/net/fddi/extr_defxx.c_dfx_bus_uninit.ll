; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_bus_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_bus_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"In dfx_bus_uninit...\0A\00", align 1
@PI_ESIC_K_IO_CONFIG_STAT_0 = common dso_local global i64 0, align 8
@PI_CONFIG_STAT_0_M_INT_ENB = common dso_local global i32 0, align 4
@PI_ESIC_K_SLOT_CNTRL = common dso_local global i64 0, align 8
@PI_ESIC_K_FUNCTION_CNTRL = common dso_local global i64 0, align 8
@PFI_K_REG_MODE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dfx_bus_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfx_bus_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_is_pci(%struct.device* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @DFX_BUS_EISA(%struct.device* %16)
  store i32 %17, i32* %6, align 4
  %18 = call i32 @DBG_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.TYPE_6__* @to_eisa_device(%struct.device* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @PI_ESIC_K_IO_CONFIG_STAT_0, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @inb(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @PI_CONFIG_STAT_0_M_INT_ENB, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @PI_ESIC_K_IO_CONFIG_STAT_0, align 8
  %37 = add i64 %35, %36
  %38 = call i32 @outb(i32 %34, i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @PI_ESIC_K_SLOT_CNTRL, align 8
  %41 = add i64 %39, %40
  %42 = call i32 @outb(i32 0, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @PI_ESIC_K_FUNCTION_CNTRL, align 8
  %45 = add i64 %43, %44
  %46 = call i32 @outb(i32 0, i64 %45)
  br label %47

47:                                               ; preds = %21, %1
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = load i32, i32* @PFI_K_REG_MODE_CTRL, align 4
  %53 = call i32 @dfx_port_write_long(%struct.TYPE_5__* %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %50, %47
  ret void
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @DFX_BUS_EISA(%struct.device*) #1

declare dso_local i32 @DBG_printk(i8*) #1

declare dso_local %struct.TYPE_6__* @to_eisa_device(%struct.device*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @dfx_port_write_long(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
