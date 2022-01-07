; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_mac_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_mac_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.netdev_hw_addr = type { i32* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"adding mac address %pM at %#x\0A\00", align 1
@MAC_MACA1HR = common dso_local global i32 0, align 4
@AE = common dso_local global i32 0, align 4
@MAC_MACA_INC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, %struct.netdev_hw_addr*, i32*)* @xgbe_set_mac_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_set_mac_reg(%struct.xgbe_prv_data* %0, %struct.netdev_hw_addr* %1, i32* %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.netdev_hw_addr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store %struct.netdev_hw_addr* %1, %struct.netdev_hw_addr** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %5, align 8
  %11 = icmp ne %struct.netdev_hw_addr* %10, null
  br i1 %11, label %12, label %70

12:                                               ; preds = %3
  store i32* %8, i32** %9, align 8
  %13 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %5, align 8
  %14 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %5, align 8
  %21 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %5, align 8
  %28 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %5, align 8
  %35 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %38, i32* %40, align 4
  store i32* %7, i32** %9, align 8
  %41 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %5, align 8
  %42 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %5, align 8
  %49 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %56 = load i32, i32* @drv, align 4
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %58 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.netdev_hw_addr*, %struct.netdev_hw_addr** %5, align 8
  %61 = getelementptr inbounds %struct.netdev_hw_addr, %struct.netdev_hw_addr* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @netif_dbg(%struct.xgbe_prv_data* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %62, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MAC_MACA1HR, align 4
  %68 = load i32, i32* @AE, align 4
  %69 = call i32 @XGMAC_SET_BITS(i32 %66, i32 %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %12, %3
  %71 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %71, i32 %73, i32 %74)
  %76 = load i64, i64* @MAC_MACA_INC, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %79, %76
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %82, i32 %84, i32 %85)
  %87 = load i64, i64* @MAC_MACA_INC, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %90, %87
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  ret void
}

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
