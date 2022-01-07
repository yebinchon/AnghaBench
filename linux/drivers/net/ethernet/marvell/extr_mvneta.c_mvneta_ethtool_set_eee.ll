; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_ethtool_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_ethtool_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i64, i64 }
%struct.mvneta_port = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MVNETA_LPI_CTRL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @mvneta_ethtool_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_ethtool_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.mvneta_port*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %8)
  store %struct.mvneta_port* %9, %struct.mvneta_port** %6, align 8
  %10 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 255
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %67

22:                                               ; preds = %14, %2
  %23 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %24 = load i32, i32* @MVNETA_LPI_CTRL_0, align 4
  %25 = call i32 @mvreg_read(%struct.mvneta_port* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, -65281
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %35 = load i32, i32* @MVNETA_LPI_CTRL_0, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mvreg_write(%struct.mvneta_port* %34, i32 %35, i32 %36)
  %38 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %42 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %47 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %49 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %22
  %54 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %22
  %59 = phi i1 [ false, %22 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @mvneta_set_eee(%struct.mvneta_port* %48, i32 %60)
  %62 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %63 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %66 = call i32 @phylink_ethtool_set_eee(i32 %64, %struct.ethtool_eee* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %58, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @mvneta_set_eee(%struct.mvneta_port*, i32) #1

declare dso_local i32 @phylink_ethtool_set_eee(i32, %struct.ethtool_eee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
