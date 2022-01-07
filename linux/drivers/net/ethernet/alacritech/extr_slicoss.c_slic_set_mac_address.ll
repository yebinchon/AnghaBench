; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@SLIC_REG_WRADDRAL = common dso_local global i32 0, align 4
@SLIC_REG_WRADDRBL = common dso_local global i32 0, align 4
@SLIC_REG_WRADDRAH = common dso_local global i32 0, align 4
@SLIC_REG_WRADDRBH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*)* @slic_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_set_mac_address(%struct.slic_device* %0) #0 {
  %2 = alloca %struct.slic_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %2, align 8
  %5 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %6 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 5
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %12, %16
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %17, %21
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 24
  %27 = or i32 %22, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %29 = load i32, i32* @SLIC_REG_WRADDRAL, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @slic_write(%struct.slic_device* %28, i32 %29, i32 %30)
  %32 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %33 = load i32, i32* @SLIC_REG_WRADDRBL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @slic_write(%struct.slic_device* %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %45 = load i32, i32* @SLIC_REG_WRADDRAH, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @slic_write(%struct.slic_device* %44, i32 %45, i32 %46)
  %48 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %49 = load i32, i32* @SLIC_REG_WRADDRBH, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @slic_write(%struct.slic_device* %48, i32 %49, i32 %50)
  %52 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %53 = call i32 @slic_flush_write(%struct.slic_device* %52)
  ret void
}

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

declare dso_local i32 @slic_flush_write(%struct.slic_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
