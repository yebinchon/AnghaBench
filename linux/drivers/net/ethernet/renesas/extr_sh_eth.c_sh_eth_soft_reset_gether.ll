; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_soft_reset_gether.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_soft_reset_gether.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@EDSR_ENALL = common dso_local global i32 0, align 4
@EDSR = common dso_local global i32 0, align 4
@EDMR = common dso_local global i32 0, align 4
@EDMR_SRST_GETHER = common dso_local global i32 0, align 4
@TDLAR = common dso_local global i32 0, align 4
@TDFAR = common dso_local global i32 0, align 4
@TDFXR = common dso_local global i32 0, align 4
@TDFFR = common dso_local global i32 0, align 4
@RDLAR = common dso_local global i32 0, align 4
@RDFAR = common dso_local global i32 0, align 4
@RDFXR = common dso_local global i32 0, align 4
@RDFFR = common dso_local global i32 0, align 4
@CSMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_soft_reset_gether to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_soft_reset_gether(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sh_eth_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sh_eth_private* %7, %struct.sh_eth_private** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load i32, i32* @EDSR_ENALL, align 4
  %10 = load i32, i32* @EDSR, align 4
  %11 = call i32 @sh_eth_write(%struct.net_device* %8, i32 %9, i32 %10)
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load i32, i32* @EDMR, align 4
  %14 = load i32, i32* @EDMR_SRST_GETHER, align 4
  %15 = load i32, i32* @EDMR_SRST_GETHER, align 4
  %16 = call i32 @sh_eth_modify(%struct.net_device* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @sh_eth_check_soft_reset(%struct.net_device* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* @TDLAR, align 4
  %26 = call i32 @sh_eth_write(%struct.net_device* %24, i32 0, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* @TDFAR, align 4
  %29 = call i32 @sh_eth_write(%struct.net_device* %27, i32 0, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load i32, i32* @TDFXR, align 4
  %32 = call i32 @sh_eth_write(%struct.net_device* %30, i32 0, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load i32, i32* @TDFFR, align 4
  %35 = call i32 @sh_eth_write(%struct.net_device* %33, i32 0, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i32, i32* @RDLAR, align 4
  %38 = call i32 @sh_eth_write(%struct.net_device* %36, i32 0, i32 %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i32, i32* @RDFAR, align 4
  %41 = call i32 @sh_eth_write(%struct.net_device* %39, i32 0, i32 %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load i32, i32* @RDFXR, align 4
  %44 = call i32 @sh_eth_write(%struct.net_device* %42, i32 0, i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i32, i32* @RDFFR, align 4
  %47 = call i32 @sh_eth_write(%struct.net_device* %45, i32 0, i32 %46)
  %48 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %49 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %23
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load i32, i32* @CSMR, align 4
  %57 = call i32 @sh_eth_write(%struct.net_device* %55, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %54, %23
  %59 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %60 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @sh_eth_select_mii(%struct.net_device* %66)
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %21
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sh_eth_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @sh_eth_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @sh_eth_check_soft_reset(%struct.net_device*) #1

declare dso_local i32 @sh_eth_select_mii(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
