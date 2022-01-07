; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_start_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_start_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.TYPE_7__*, i32, i32, i32, %struct.cnic_local* }
%struct.TYPE_7__ = type { i32 }
%struct.cnic_local = type { i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.1*)*, i32 (%struct.cnic_dev.2*)*, i32 (%struct.cnic_dev.3*)*, i32 (%struct.cnic_dev.4*)*, i32, %struct.TYPE_5__, i32, %struct.cnic_eth_dev* }
%struct.cnic_dev.0 = type opaque
%struct.cnic_dev.1 = type opaque
%struct.cnic_dev.2 = type opaque
%struct.cnic_dev.3 = type opaque
%struct.cnic_dev.4 = type opaque
%struct.TYPE_5__ = type { i32 }
%struct.cnic_eth_dev = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"allocate resource failure\0A\00", align 1
@CNIC_DRV_STATE_HANDLES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_start_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_start_hw(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.cnic_eth_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %7 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %8 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %7, i32 0, i32 4
  %9 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  store %struct.cnic_local* %9, %struct.cnic_local** %4, align 8
  %10 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %11 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %10, i32 0, i32 8
  %12 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %11, align 8
  store %struct.cnic_eth_dev* %12, %struct.cnic_eth_dev** %5, align 8
  %13 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %14 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %15 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EALREADY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %123

21:                                               ; preds = %1
  %22 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %23 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %26 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %28 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = call i32 @pci_dev_get(%struct.TYPE_7__* %29)
  %31 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %32 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PCI_FUNC(i32 %35)
  %37 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %38 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %40 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %46 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %49 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %55 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %57 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %56, i32 0, i32 0
  %58 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %57, align 8
  %59 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %60 = bitcast %struct.cnic_dev* %59 to %struct.cnic_dev.0*
  %61 = call i32 %58(%struct.cnic_dev.0* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %21
  %65 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %66 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @netdev_err(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %96

69:                                               ; preds = %21
  %70 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %71 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %70, i32 0, i32 1
  %72 = load i32 (%struct.cnic_dev.1*)*, i32 (%struct.cnic_dev.1*)** %71, align 8
  %73 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %74 = bitcast %struct.cnic_dev* %73 to %struct.cnic_dev.1*
  %75 = call i32 %72(%struct.cnic_dev.1* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %96

79:                                               ; preds = %69
  %80 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %81 = call i32 @cnic_cm_open(%struct.cnic_dev* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %96

85:                                               ; preds = %79
  %86 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %87 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %88 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %87, i32 0, i32 1
  %89 = call i32 @set_bit(i32 %86, i32* %88)
  %90 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %91 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %90, i32 0, i32 4
  %92 = load i32 (%struct.cnic_dev.4*)*, i32 (%struct.cnic_dev.4*)** %91, align 8
  %93 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %94 = bitcast %struct.cnic_dev* %93 to %struct.cnic_dev.4*
  %95 = call i32 %92(%struct.cnic_dev.4* %94)
  store i32 0, i32* %2, align 4
  br label %123

96:                                               ; preds = %84, %78, %64
  %97 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %98 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @CNIC_DRV_STATE_HANDLES_IRQ, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %105 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %104, i32 0, i32 3
  %106 = load i32 (%struct.cnic_dev.3*)*, i32 (%struct.cnic_dev.3*)** %105, align 8
  %107 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %108 = bitcast %struct.cnic_dev* %107 to %struct.cnic_dev.3*
  %109 = call i32 %106(%struct.cnic_dev.3* %108)
  br label %117

110:                                              ; preds = %96
  %111 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %112 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %111, i32 0, i32 2
  %113 = load i32 (%struct.cnic_dev.2*)*, i32 (%struct.cnic_dev.2*)** %112, align 8
  %114 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %115 = bitcast %struct.cnic_dev* %114 to %struct.cnic_dev.2*
  %116 = call i32 %113(%struct.cnic_dev.2* %115)
  br label %117

117:                                              ; preds = %110, %103
  %118 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %119 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = call i32 @pci_dev_put(%struct.TYPE_7__* %120)
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %117, %85, %18
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pci_dev_get(%struct.TYPE_7__*) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @cnic_cm_open(%struct.cnic_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
