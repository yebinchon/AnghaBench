; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-cavium.c_cavium_mdiobus_c45_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-cavium.c_cavium_mdiobus_c45_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cavium_mdiobus = type { i64 }
%union.cvmx_smix_cmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%union.cvmx_smix_wr_dat = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@C45 = common dso_local global i32 0, align 4
@SMI_WR_DAT = common dso_local global i64 0, align 8
@SMI_CMD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cavium_mdiobus*, i32, i32)* @cavium_mdiobus_c45_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cavium_mdiobus_c45_addr(%struct.cavium_mdiobus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cavium_mdiobus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.cvmx_smix_cmd, align 8
  %9 = alloca %union.cvmx_smix_wr_dat, align 8
  %10 = alloca i32, align 4
  store %struct.cavium_mdiobus* %0, %struct.cavium_mdiobus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1000, i32* %10, align 4
  %11 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %5, align 8
  %12 = load i32, i32* @C45, align 4
  %13 = call i32 @cavium_mdiobus_set_mode(%struct.cavium_mdiobus* %11, i32 %12)
  %14 = bitcast %union.cvmx_smix_wr_dat* %9 to i64*
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 65535
  %17 = bitcast %union.cvmx_smix_wr_dat* %9 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = bitcast %union.cvmx_smix_wr_dat* %9 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %5, align 8
  %22 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SMI_WR_DAT, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @oct_mdio_writeq(i64 %20, i64 %25)
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 31
  store i32 %29, i32* %7, align 4
  %30 = bitcast %union.cvmx_smix_cmd* %8 to i64*
  store i64 0, i64* %30, align 8
  %31 = bitcast %union.cvmx_smix_cmd* %8 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = bitcast %union.cvmx_smix_cmd* %8 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = bitcast %union.cvmx_smix_cmd* %8 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = bitcast %union.cvmx_smix_cmd* %8 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %5, align 8
  %42 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SMI_CMD, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @oct_mdio_writeq(i64 %40, i64 %45)
  br label %47

47:                                               ; preds = %65, %3
  %48 = call i32 @__delay(i32 1000)
  %49 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %5, align 8
  %50 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SMI_WR_DAT, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i64 @oct_mdio_readq(i64 %53)
  %55 = bitcast %union.cvmx_smix_wr_dat* %9 to i64*
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %47
  %57 = bitcast %union.cvmx_smix_wr_dat* %9 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i1 [ false, %56 ], [ %64, %61 ]
  br i1 %66, label %47, label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %10, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @cavium_mdiobus_set_mode(%struct.cavium_mdiobus*, i32) #1

declare dso_local i32 @oct_mdio_writeq(i64, i64) #1

declare dso_local i32 @__delay(i32) #1

declare dso_local i64 @oct_mdio_readq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
