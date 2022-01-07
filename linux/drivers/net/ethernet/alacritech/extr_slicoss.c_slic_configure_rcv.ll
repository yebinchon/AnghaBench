; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_configure_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_configure_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i64, i64 }

@SLIC_GRCR_RESET = common dso_local global i32 0, align 4
@SLIC_GRCR_ADDRAEN = common dso_local global i32 0, align 4
@SLIC_GRCR_RCVEN = common dso_local global i32 0, align 4
@SLIC_GRCR_HASHSIZE = common dso_local global i32 0, align 4
@SLIC_GRCR_HASHSIZE_SHIFT = common dso_local global i32 0, align 4
@SLIC_GRCR_RCVBAD = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@SLIC_GRCR_CTLEN = common dso_local global i32 0, align 4
@SLIC_GRCR_RCVALL = common dso_local global i32 0, align 4
@SLIC_REG_WRCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*)* @slic_configure_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_configure_rcv(%struct.slic_device* %0) #0 {
  %2 = alloca %struct.slic_device*, align 8
  %3 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %2, align 8
  %4 = load i32, i32* @SLIC_GRCR_RESET, align 4
  %5 = load i32, i32* @SLIC_GRCR_ADDRAEN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @SLIC_GRCR_RCVEN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SLIC_GRCR_HASHSIZE, align 4
  %10 = load i32, i32* @SLIC_GRCR_HASHSIZE_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = or i32 %8, %11
  %13 = load i32, i32* @SLIC_GRCR_RCVBAD, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %16 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DUPLEX_FULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @SLIC_GRCR_CTLEN, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %26 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @SLIC_GRCR_RCVALL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %35 = load i32, i32* @SLIC_REG_WRCFG, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @slic_write(%struct.slic_device* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
