; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_hung.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_hung.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i32, i64, %struct.TYPE_2__, %struct.sky2_hw* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.sky2_hw = type { i32 }

@rxqaddr = common dso_local global i32* null, align 8
@RX_GMF_RP = common dso_local global i32 0, align 4
@RX_GMF_RLEV = common dso_local global i32 0, align 4
@Q_RP = common dso_local global i32 0, align 4
@Q_RL = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"hung mac %d:%d fifo %d (%d:%d)\0A\00", align 1
@Q_WP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sky2_rx_hung to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_rx_hung(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sky2_port*, align 8
  %5 = alloca %struct.sky2_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %12)
  store %struct.sky2_port* %13, %struct.sky2_port** %4, align 8
  %14 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %15 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %14, i32 0, i32 3
  %16 = load %struct.sky2_hw*, %struct.sky2_hw** %15, align 8
  store %struct.sky2_hw* %16, %struct.sky2_hw** %5, align 8
  %17 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %18 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** @rxqaddr, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RX_GMF_RP, align 4
  %28 = call i32 @SK_REG(i32 %26, i32 %27)
  %29 = call i64 @sky2_read32(%struct.sky2_hw* %25, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RX_GMF_RLEV, align 4
  %33 = call i32 @SK_REG(i32 %31, i32 %32)
  %34 = call i64 @sky2_read8(%struct.sky2_hw* %30, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @Q_RP, align 4
  %38 = call i32 @Q_ADDR(i32 %36, i32 %37)
  %39 = call i64 @sky2_read8(%struct.sky2_hw* %35, i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @Q_RL, align 4
  %43 = call i32 @Q_ADDR(i32 %41, i32 %42)
  %44 = call i64 @sky2_read8(%struct.sky2_hw* %40, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %46 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %50 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %1
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %56 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %66 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %64, %68
  br i1 %69, label %87, label %70

70:                                               ; preds = %63, %60, %53
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %73 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %83 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %81, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %80, %63
  %88 = load i32, i32* @KERN_DEBUG, align 4
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @Q_WP, align 4
  %97 = call i32 @Q_ADDR(i32 %95, i32 %96)
  %98 = call i64 @sky2_read8(%struct.sky2_hw* %94, i32 %97)
  %99 = call i32 @netdev_printk(i32 %88, %struct.net_device* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %90, i64 %91, i64 %92, i64 %93, i64 %98)
  store i32 1, i32* %2, align 4
  br label %123

100:                                              ; preds = %80, %77, %70, %1
  %101 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %102 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %105 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %109 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %113 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i64 %111, i64* %114, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %117 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  store i64 %115, i64* %118, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %121 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  store i64 %119, i64* %122, align 8
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %100, %87
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i64 @sky2_read8(%struct.sky2_hw*, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @netdev_printk(i32, %struct.net_device*, i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
