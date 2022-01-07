; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_configure_xmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_configure_xmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i64 }

@SLIC_GXCR_RESET = common dso_local global i32 0, align 4
@SLIC_GXCR_XMTEN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@SLIC_GXCR_PAUSEEN = common dso_local global i32 0, align 4
@SLIC_REG_WXCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*)* @slic_configure_xmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_configure_xmt(%struct.slic_device* %0) #0 {
  %2 = alloca %struct.slic_device*, align 8
  %3 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %2, align 8
  %4 = load i32, i32* @SLIC_GXCR_RESET, align 4
  %5 = load i32, i32* @SLIC_GXCR_XMTEN, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %8 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DUPLEX_FULL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @SLIC_GXCR_PAUSEEN, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %18 = load i32, i32* @SLIC_REG_WXCFG, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @slic_write(%struct.slic_device* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
