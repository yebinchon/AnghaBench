; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_ethtool_gringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_ethtool_gringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i8*, i8* }
%struct.s2io_nic = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RXD_MODE_1 = common dso_local global i64 0, align 8
@MAX_RX_DESC_1 = common dso_local global i8* null, align 8
@MAX_RX_DESC_2 = common dso_local global i8* null, align 8
@MAX_TX_DESC = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"max txds: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @s2io_ethtool_gringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_ethtool_gringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.s2io_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %9)
  store %struct.s2io_nic* %10, %struct.s2io_nic** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %12 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RXD_MODE_1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i8*, i8** @MAX_RX_DESC_1, align 8
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @MAX_RX_DESC_1, align 8
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  br label %30

23:                                               ; preds = %2
  %24 = load i8*, i8** @MAX_RX_DESC_2, align 8
  %25 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @MAX_RX_DESC_2, align 8
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i32, i32* @MAX_TX_DESC, align 4
  %32 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %55, %30
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %37 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %43 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %34

58:                                               ; preds = %34
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %86, %58
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %68 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %74 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %65

89:                                               ; preds = %65
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %92 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @INFO_DBG, align 4
  %94 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %95 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @DBG_PRINT(i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %97)
  ret void
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
