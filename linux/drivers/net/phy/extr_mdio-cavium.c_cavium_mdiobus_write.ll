; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-cavium.c_cavium_mdiobus_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-cavium.c_cavium_mdiobus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.cavium_mdiobus* }
%struct.cavium_mdiobus = type { i64 }
%union.cvmx_smix_cmd = type { i64, [8 x i8] }
%union.cvmx_smix_wr_dat = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@C22 = common dso_local global i32 0, align 4
@SMI_WR_DAT = common dso_local global i64 0, align 8
@SMI_CMD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cavium_mdiobus_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cavium_mdiobus*, align 8
  %11 = alloca %union.cvmx_smix_cmd, align 8
  %12 = alloca %union.cvmx_smix_wr_dat, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %17 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %16, i32 0, i32 0
  %18 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %17, align 8
  store %struct.cavium_mdiobus* %18, %struct.cavium_mdiobus** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 1000, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MII_ADDR_C45, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @cavium_mdiobus_c45_addr(%struct.cavium_mdiobus* %24, i32 %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %98

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 31
  store i32 %35, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %40

36:                                               ; preds = %4
  %37 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %10, align 8
  %38 = load i32, i32* @C22, align 4
  %39 = call i32 @cavium_mdiobus_set_mode(%struct.cavium_mdiobus* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = bitcast %union.cvmx_smix_wr_dat* %12 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = bitcast %union.cvmx_smix_wr_dat* %12 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = bitcast %union.cvmx_smix_wr_dat* %12 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %10, align 8
  %48 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SMI_WR_DAT, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @oct_mdio_writeq(i64 %46, i64 %51)
  %53 = bitcast %union.cvmx_smix_cmd* %11 to i64*
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = bitcast %union.cvmx_smix_cmd* %11 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = bitcast %union.cvmx_smix_cmd* %11 to %struct.TYPE_3__*
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = bitcast %union.cvmx_smix_cmd* %11 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = bitcast %union.cvmx_smix_cmd* %11 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %10, align 8
  %66 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SMI_CMD, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @oct_mdio_writeq(i64 %64, i64 %69)
  br label %71

71:                                               ; preds = %89, %40
  %72 = call i32 @__delay(i32 1000)
  %73 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %10, align 8
  %74 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SMI_WR_DAT, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i64 @oct_mdio_readq(i64 %77)
  %79 = bitcast %union.cvmx_smix_wr_dat* %12 to i64*
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %71
  %81 = bitcast %union.cvmx_smix_wr_dat* %12 to %struct.TYPE_4__*
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %85, %80
  %90 = phi i1 [ false, %80 ], [ %88, %85 ]
  br i1 %90, label %71, label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %14, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %98

97:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %94, %30
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @cavium_mdiobus_c45_addr(%struct.cavium_mdiobus*, i32, i32) #1

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
