; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-cavium.c_cavium_mdiobus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-cavium.c_cavium_mdiobus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.cavium_mdiobus* }
%struct.cavium_mdiobus = type { i64 }
%union.cvmx_smix_cmd = type { i64, [8 x i8] }
%union.cvmx_smix_rd_dat = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@C22 = common dso_local global i32 0, align 4
@SMI_CMD = common dso_local global i64 0, align 8
@SMI_RD_DAT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cavium_mdiobus_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cavium_mdiobus*, align 8
  %9 = alloca %union.cvmx_smix_cmd, align 8
  %10 = alloca %union.cvmx_smix_rd_dat, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %15, align 8
  store %struct.cavium_mdiobus* %16, %struct.cavium_mdiobus** %8, align 8
  store i32 1, i32* %11, align 4
  store i32 1000, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MII_ADDR_C45, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @cavium_mdiobus_c45_addr(%struct.cavium_mdiobus* %22, i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %4, align 4
  br label %89

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 31
  store i32 %33, i32* %7, align 4
  store i32 3, i32* %11, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %8, align 8
  %36 = load i32, i32* @C22, align 4
  %37 = call i32 @cavium_mdiobus_set_mode(%struct.cavium_mdiobus* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = bitcast %union.cvmx_smix_cmd* %9 to i64*
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = bitcast %union.cvmx_smix_cmd* %9 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = bitcast %union.cvmx_smix_cmd* %9 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = bitcast %union.cvmx_smix_cmd* %9 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = bitcast %union.cvmx_smix_cmd* %9 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %8, align 8
  %52 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SMI_CMD, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @oct_mdio_writeq(i64 %50, i64 %55)
  br label %57

57:                                               ; preds = %75, %38
  %58 = call i32 @__delay(i32 1000)
  %59 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %8, align 8
  %60 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SMI_RD_DAT, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @oct_mdio_readq(i64 %63)
  %65 = bitcast %union.cvmx_smix_rd_dat* %10 to i32*
  store i32 %64, i32* %65, align 8
  br label %66

66:                                               ; preds = %57
  %67 = bitcast %union.cvmx_smix_rd_dat* %10 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i1 [ false, %66 ], [ %74, %71 ]
  br i1 %76, label %57, label %77

77:                                               ; preds = %75
  %78 = bitcast %union.cvmx_smix_rd_dat* %10 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = bitcast %union.cvmx_smix_rd_dat* %10 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %4, align 4
  br label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %82, %28
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @cavium_mdiobus_c45_addr(%struct.cavium_mdiobus*, i32, i32) #1

declare dso_local i32 @cavium_mdiobus_set_mode(%struct.cavium_mdiobus*, i32) #1

declare dso_local i32 @oct_mdio_writeq(i64, i64) #1

declare dso_local i32 @__delay(i32) #1

declare dso_local i32 @oct_mdio_readq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
