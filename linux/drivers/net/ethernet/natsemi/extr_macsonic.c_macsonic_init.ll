; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_macsonic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_macsonic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32* }
%struct.sonic_local = type { i32, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32 }

@SIZEOF_SONIC_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIZEOF_SONIC_CDA = common dso_local global i32 0, align 4
@SIZEOF_SONIC_TD = common dso_local global i32 0, align 4
@SONIC_NUM_TDS = common dso_local global i32 0, align 4
@SIZEOF_SONIC_RD = common dso_local global i32 0, align 4
@SONIC_NUM_RDS = common dso_local global i32 0, align 4
@macsonic_netdev_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@SONIC_CRCT = common dso_local global i32 0, align 4
@SONIC_FAET = common dso_local global i32 0, align 4
@SONIC_MPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @macsonic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsonic_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sonic_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %5)
  store %struct.sonic_local* %6, %struct.sonic_local** %4, align 8
  %7 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %8 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SIZEOF_SONIC_DESC, align 4
  %11 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %12 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @SONIC_BUS_SCALE(i32 %13)
  %15 = mul nsw i32 %10, %14
  %16 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %17 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %16, i32 0, i32 5
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @dma_alloc_coherent(i32 %9, i32 %15, i64* %17, i32 %18)
  %20 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %21 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %20, i32 0, i32 10
  store i32* %19, i32** %21, align 8
  %22 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %23 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %22, i32 0, i32 10
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %137

29:                                               ; preds = %1
  %30 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %31 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %30, i32 0, i32 10
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %34 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %33, i32 0, i32 9
  store i32* %32, i32** %34, align 8
  %35 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %36 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %35, i32 0, i32 9
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @SIZEOF_SONIC_CDA, align 4
  %39 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %40 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @SONIC_BUS_SCALE(i32 %41)
  %43 = mul nsw i32 %38, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %37, i64 %44
  %46 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %47 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %46, i32 0, i32 8
  store i32* %45, i32** %47, align 8
  %48 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %49 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @SIZEOF_SONIC_TD, align 4
  %52 = load i32, i32* @SONIC_NUM_TDS, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %55 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @SONIC_BUS_SCALE(i32 %56)
  %58 = mul nsw i32 %53, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %50, i64 %59
  %61 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %62 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %61, i32 0, i32 6
  store i32* %60, i32** %62, align 8
  %63 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %64 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @SIZEOF_SONIC_RD, align 4
  %67 = load i32, i32* @SONIC_NUM_RDS, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %70 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SONIC_BUS_SCALE(i32 %71)
  %73 = mul nsw i32 %68, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %65, i64 %74
  %76 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %77 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %76, i32 0, i32 7
  store i32* %75, i32** %77, align 8
  %78 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %79 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %82 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %84 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @SIZEOF_SONIC_CDA, align 4
  %87 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %88 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @SONIC_BUS_SCALE(i32 %89)
  %91 = mul nsw i32 %86, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %85, %92
  %94 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %95 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %97 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @SIZEOF_SONIC_TD, align 4
  %100 = load i32, i32* @SONIC_NUM_TDS, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %103 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @SONIC_BUS_SCALE(i32 %104)
  %106 = mul nsw i32 %101, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %98, %107
  %109 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %110 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %112 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @SIZEOF_SONIC_RD, align 4
  %115 = load i32, i32* @SONIC_NUM_RDS, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %118 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @SONIC_BUS_SCALE(i32 %119)
  %121 = mul nsw i32 %116, %120
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %113, %122
  %124 = load %struct.sonic_local*, %struct.sonic_local** %4, align 8
  %125 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 1
  store i32* @macsonic_netdev_ops, i32** %127, align 8
  %128 = load i32, i32* @TX_TIMEOUT, align 4
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @SONIC_CRCT, align 4
  %132 = call i32 @SONIC_WRITE(i32 %131, i32 65535)
  %133 = load i32, i32* @SONIC_FAET, align 4
  %134 = call i32 @SONIC_WRITE(i32 %133, i32 65535)
  %135 = load i32, i32* @SONIC_MPT, align 4
  %136 = call i32 @SONIC_WRITE(i32 %135, i32 65535)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %29, %26
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @SONIC_BUS_SCALE(i32) #1

declare dso_local i32 @SONIC_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
