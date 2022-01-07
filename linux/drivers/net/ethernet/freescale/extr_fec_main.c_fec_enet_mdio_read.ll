; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.fec_enet_private* }
%struct.fec_enet_private = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@FEC_MMFR_ST_C45 = common dso_local global i32 0, align 4
@FEC_MMFR_OP_ADDR_WRITE = common dso_local global i32 0, align 4
@FEC_MMFR_TA = common dso_local global i32 0, align 4
@FEC_MII_DATA = common dso_local global i64 0, align 8
@FEC_MII_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MDIO address write timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@FEC_MMFR_OP_READ_C45 = common dso_local global i32 0, align 4
@FEC_MMFR_OP_READ = common dso_local global i32 0, align 4
@FEC_MMFR_ST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"MDIO read timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @fec_enet_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fec_enet_private*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %17 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %16, i32 0, i32 0
  %18 = load %struct.fec_enet_private*, %struct.fec_enet_private** %17, align 8
  store %struct.fec_enet_private* %18, %struct.fec_enet_private** %8, align 8
  %19 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %20 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MII_ADDR_C45, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = call i32 @pm_runtime_get_sync(%struct.device* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %132

36:                                               ; preds = %3
  %37 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %38 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %37, i32 0, i32 2
  %39 = call i32 @reinit_completion(i32* %38)
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %36
  %43 = load i32, i32* @FEC_MMFR_ST_C45, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 16
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @FEC_MMFR_OP_ADDR_WRITE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @FEC_MMFR_PA(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @FEC_MMFR_RA(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @FEC_MMFR_TA, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 65535
  %59 = or i32 %56, %58
  %60 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %61 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FEC_MII_DATA, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %67 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %66, i32 0, i32 2
  %68 = load i32, i32* @FEC_MII_TIMEOUT, align 4
  %69 = call i32 @usecs_to_jiffies(i32 %68)
  %70 = call i64 @wait_for_completion_timeout(i32* %67, i32 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %42
  %74 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %75 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @netdev_err(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  br label %126

80:                                               ; preds = %42
  %81 = load i32, i32* @FEC_MMFR_OP_READ_C45, align 4
  store i32 %81, i32* %14, align 4
  br label %86

82:                                               ; preds = %36
  %83 = load i32, i32* @FEC_MMFR_OP_READ, align 4
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* @FEC_MMFR_ST, align 4
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %82, %80
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @FEC_MMFR_PA(i32 %90)
  %92 = or i32 %89, %91
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @FEC_MMFR_RA(i32 %93)
  %95 = or i32 %92, %94
  %96 = load i32, i32* @FEC_MMFR_TA, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %99 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @FEC_MII_DATA, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %105 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %104, i32 0, i32 2
  %106 = load i32, i32* @FEC_MII_TIMEOUT, align 4
  %107 = call i32 @usecs_to_jiffies(i32 %106)
  %108 = call i64 @wait_for_completion_timeout(i32* %105, i32 %107)
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %86
  %112 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %113 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @netdev_err(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @ETIMEDOUT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %11, align 4
  br label %126

118:                                              ; preds = %86
  %119 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %120 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @FEC_MII_DATA, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @readl(i64 %123)
  %125 = call i32 @FEC_MMFR_DATA(i32 %124)
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %118, %111, %73
  %127 = load %struct.device*, %struct.device** %9, align 8
  %128 = call i32 @pm_runtime_mark_last_busy(%struct.device* %127)
  %129 = load %struct.device*, %struct.device** %9, align 8
  %130 = call i32 @pm_runtime_put_autosuspend(%struct.device* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %126, %34
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FEC_MMFR_PA(i32) #1

declare dso_local i32 @FEC_MMFR_RA(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @FEC_MMFR_DATA(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
