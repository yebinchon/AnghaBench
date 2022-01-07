; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_configure_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_configure_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i64, i64 }

@SPEED_1000 = common dso_local global i64 0, align 8
@SLIC_GMCR_GAPBB_1000 = common dso_local global i32 0, align 4
@SLIC_GMCR_GAPBB_SHIFT = common dso_local global i32 0, align 4
@SLIC_GMCR_GAPR1_1000 = common dso_local global i32 0, align 4
@SLIC_GMCR_GAPR1_SHIFT = common dso_local global i32 0, align 4
@SLIC_GMCR_GAPR2_1000 = common dso_local global i32 0, align 4
@SLIC_GMCR_GAPR2_SHIFT = common dso_local global i32 0, align 4
@SLIC_GMCR_GBIT = common dso_local global i32 0, align 4
@SLIC_GMCR_GAPBB_100 = common dso_local global i32 0, align 4
@SLIC_GMCR_GAPR1_100 = common dso_local global i32 0, align 4
@SLIC_GMCR_GAPR2_100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@SLIC_GMCR_FULLD = common dso_local global i32 0, align 4
@SLIC_REG_WMCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*)* @slic_configure_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_configure_mac(%struct.slic_device* %0) #0 {
  %2 = alloca %struct.slic_device*, align 8
  %3 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %2, align 8
  %4 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %5 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SPEED_1000, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @SLIC_GMCR_GAPBB_1000, align 4
  %11 = load i32, i32* @SLIC_GMCR_GAPBB_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* @SLIC_GMCR_GAPR1_1000, align 4
  %14 = load i32, i32* @SLIC_GMCR_GAPR1_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* @SLIC_GMCR_GAPR2_1000, align 4
  %18 = load i32, i32* @SLIC_GMCR_GAPR2_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* @SLIC_GMCR_GBIT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* @SLIC_GMCR_GAPBB_100, align 4
  %25 = load i32, i32* @SLIC_GMCR_GAPBB_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @SLIC_GMCR_GAPR1_100, align 4
  %28 = load i32, i32* @SLIC_GMCR_GAPR1_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  %31 = load i32, i32* @SLIC_GMCR_GAPR2_100, align 4
  %32 = load i32, i32* @SLIC_GMCR_GAPR2_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %30, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %23, %9
  %36 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %37 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DUPLEX_FULL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @SLIC_GMCR_FULLD, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %47 = load i32, i32* @SLIC_REG_WMCFG, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @slic_write(%struct.slic_device* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
