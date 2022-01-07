; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.fec_enet_private* }
%struct.fec_enet_private = type { i32, i32, i64, %struct.TYPE_2__* }
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
@FEC_MMFR_ST = common dso_local global i32 0, align 4
@FEC_MMFR_OP_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"MDIO write timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @fec_enet_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fec_enet_private*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %18 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %17, i32 0, i32 0
  %19 = load %struct.fec_enet_private*, %struct.fec_enet_private** %18, align 8
  store %struct.fec_enet_private* %19, %struct.fec_enet_private** %10, align 8
  %20 = load %struct.fec_enet_private*, %struct.fec_enet_private** %10, align 8
  %21 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MII_ADDR_C45, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %16, align 4
  %31 = load %struct.device*, %struct.device** %11, align 8
  %32 = call i32 @pm_runtime_get_sync(%struct.device* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %128

37:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.fec_enet_private*, %struct.fec_enet_private** %10, align 8
  %40 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %39, i32 0, i32 1
  %41 = call i32 @reinit_completion(i32* %40)
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %38
  %45 = load i32, i32* @FEC_MMFR_ST_C45, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 16
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @FEC_MMFR_OP_ADDR_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @FEC_MMFR_PA(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @FEC_MMFR_RA(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* @FEC_MMFR_TA, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 65535
  %61 = or i32 %58, %60
  %62 = load %struct.fec_enet_private*, %struct.fec_enet_private** %10, align 8
  %63 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FEC_MII_DATA, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load %struct.fec_enet_private*, %struct.fec_enet_private** %10, align 8
  %69 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %68, i32 0, i32 1
  %70 = load i32, i32* @FEC_MII_TIMEOUT, align 4
  %71 = call i32 @usecs_to_jiffies(i32 %70)
  %72 = call i64 @wait_for_completion_timeout(i32* %69, i32 %71)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %44
  %76 = load %struct.fec_enet_private*, %struct.fec_enet_private** %10, align 8
  %77 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @netdev_err(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %122

82:                                               ; preds = %44
  br label %86

83:                                               ; preds = %38
  %84 = load i32, i32* @FEC_MMFR_ST, align 4
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %83, %82
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @FEC_MMFR_OP_WRITE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @FEC_MMFR_PA(i32 %90)
  %92 = or i32 %89, %91
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @FEC_MMFR_RA(i32 %93)
  %95 = or i32 %92, %94
  %96 = load i32, i32* @FEC_MMFR_TA, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @FEC_MMFR_DATA(i32 %98)
  %100 = or i32 %97, %99
  %101 = load %struct.fec_enet_private*, %struct.fec_enet_private** %10, align 8
  %102 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @FEC_MII_DATA, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  %107 = load %struct.fec_enet_private*, %struct.fec_enet_private** %10, align 8
  %108 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %107, i32 0, i32 1
  %109 = load i32, i32* @FEC_MII_TIMEOUT, align 4
  %110 = call i32 @usecs_to_jiffies(i32 %109)
  %111 = call i64 @wait_for_completion_timeout(i32* %108, i32 %110)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %86
  %115 = load %struct.fec_enet_private*, %struct.fec_enet_private** %10, align 8
  %116 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @netdev_err(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @ETIMEDOUT, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %114, %86
  br label %122

122:                                              ; preds = %121, %75
  %123 = load %struct.device*, %struct.device** %11, align 8
  %124 = call i32 @pm_runtime_mark_last_busy(%struct.device* %123)
  %125 = load %struct.device*, %struct.device** %11, align 8
  %126 = call i32 @pm_runtime_put_autosuspend(%struct.device* %125)
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %122, %35
  %129 = load i32, i32* %5, align 4
  ret i32 %129
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

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
