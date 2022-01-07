; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_rxmac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_rxmac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@REG_MAC_RX_STATUS = common dso_local global i64 0, align 8
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"rxmac interrupt, stat: 0x%x\0A\00", align 1
@MAC_RX_ALIGN_ERR = common dso_local global i32 0, align 4
@MAC_RX_CRC_ERR = common dso_local global i32 0, align 4
@MAC_RX_LEN_ERR = common dso_local global i32 0, align 4
@MAC_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cas*, i32)* @cas_rxmac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_rxmac_interrupt(%struct.net_device* %0, %struct.cas* %1, i32 %2) #0 {
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
  %12 = load i64, i64* @REG_MAC_RX_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

18:                                               ; preds = %3
  %19 = load %struct.cas*, %struct.cas** %6, align 8
  %20 = load i32, i32* @intr, align 4
  %21 = load %struct.cas*, %struct.cas** %6, align 8
  %22 = getelementptr inbounds %struct.cas, %struct.cas* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @netif_dbg(%struct.cas* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.cas*, %struct.cas** %6, align 8
  %27 = getelementptr inbounds %struct.cas, %struct.cas* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MAC_RX_ALIGN_ERR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %18
  %36 = load %struct.cas*, %struct.cas** %6, align 8
  %37 = getelementptr inbounds %struct.cas, %struct.cas* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 65536
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35, %18
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MAC_RX_CRC_ERR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.cas*, %struct.cas** %6, align 8
  %50 = getelementptr inbounds %struct.cas, %struct.cas* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 65536
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MAC_RX_LEN_ERR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.cas*, %struct.cas** %6, align 8
  %63 = getelementptr inbounds %struct.cas, %struct.cas* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 65536
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %61, %56
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @MAC_RX_OVERFLOW, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load %struct.cas*, %struct.cas** %6, align 8
  %76 = getelementptr inbounds %struct.cas, %struct.cas* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.cas*, %struct.cas** %6, align 8
  %83 = getelementptr inbounds %struct.cas, %struct.cas* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %74, %69
  %90 = load %struct.cas*, %struct.cas** %6, align 8
  %91 = getelementptr inbounds %struct.cas, %struct.cas* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = call i32 @spin_unlock(i32* %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %17
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netif_dbg(%struct.cas*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
