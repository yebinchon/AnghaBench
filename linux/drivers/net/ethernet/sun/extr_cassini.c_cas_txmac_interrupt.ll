; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_txmac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_txmac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@REG_MAC_TX_STATUS = common dso_local global i64 0, align 8
@intr = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"txmac interrupt, txmac_stat: 0x%x\0A\00", align 1
@MAC_TX_DEFER_TIMER = common dso_local global i32 0, align 4
@MAC_TX_UNDERRUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"TX MAC xmit underrun\0A\00", align 1
@MAC_TX_MAX_PACKET_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"TX MAC max packet size error\0A\00", align 1
@MAC_TX_COLL_NORMAL = common dso_local global i32 0, align 4
@MAC_TX_COLL_EXCESS = common dso_local global i32 0, align 4
@MAC_TX_COLL_LATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cas*, i32)* @cas_txmac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_txmac_interrupt(%struct.net_device* %0, %struct.cas* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.cas* %1, %struct.cas** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cas*, %struct.cas** %6, align 8
  %10 = getelementptr inbounds %struct.cas, %struct.cas* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REG_MAC_TX_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %132

18:                                               ; preds = %3
  %19 = load %struct.cas*, %struct.cas** %6, align 8
  %20 = load i32, i32* @intr, align 4
  %21 = load i32, i32* @KERN_DEBUG, align 4
  %22 = load %struct.cas*, %struct.cas** %6, align 8
  %23 = getelementptr inbounds %struct.cas, %struct.cas* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @netif_printk(%struct.cas* %19, i32 %20, i32 %21, i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MAC_TX_DEFER_TIMER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAC_TX_DEFER_TIMER, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %132

38:                                               ; preds = %31, %18
  %39 = load %struct.cas*, %struct.cas** %6, align 8
  %40 = getelementptr inbounds %struct.cas, %struct.cas* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MAC_TX_UNDERRUN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.cas*, %struct.cas** %6, align 8
  %52 = getelementptr inbounds %struct.cas, %struct.cas* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %48, %38
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MAC_TX_MAX_PACKET_ERR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @netdev_err(%struct.net_device* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.cas*, %struct.cas** %6, align 8
  %67 = getelementptr inbounds %struct.cas, %struct.cas* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %63, %58
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @MAC_TX_COLL_NORMAL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.cas*, %struct.cas** %6, align 8
  %80 = getelementptr inbounds %struct.cas, %struct.cas* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 65536
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %73
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @MAC_TX_COLL_EXCESS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load %struct.cas*, %struct.cas** %6, align 8
  %93 = getelementptr inbounds %struct.cas, %struct.cas* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 65536
  store i32 %98, i32* %96, align 4
  %99 = load %struct.cas*, %struct.cas** %6, align 8
  %100 = getelementptr inbounds %struct.cas, %struct.cas* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 65536
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %91, %86
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @MAC_TX_COLL_LATE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = load %struct.cas*, %struct.cas** %6, align 8
  %113 = getelementptr inbounds %struct.cas, %struct.cas* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 65536
  store i32 %118, i32* %116, align 4
  %119 = load %struct.cas*, %struct.cas** %6, align 8
  %120 = getelementptr inbounds %struct.cas, %struct.cas* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 65536
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %111, %106
  %127 = load %struct.cas*, %struct.cas** %6, align 8
  %128 = getelementptr inbounds %struct.cas, %struct.cas* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = call i32 @spin_unlock(i32* %130)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %126, %37, %17
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netif_printk(%struct.cas*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
