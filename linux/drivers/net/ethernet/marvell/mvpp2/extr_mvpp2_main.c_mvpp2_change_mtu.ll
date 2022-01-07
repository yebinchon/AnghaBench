; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mvpp2_port = type { i64, %struct.TYPE_4__*, %struct.mvpp2* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvpp2 = type { i32, %struct.mvpp2_port**, i64 }

@.str = private unnamed_addr constant [35 x i8] c"illegal MTU value %d, round to %d\0A\00", align 1
@MVPP2_BM_LONG_PKT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"mtu %d too high, switching to shared buffers\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"all ports have a low MTU, switching to per-cpu buffers\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to change MTU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mvpp2_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvpp2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %11)
  store %struct.mvpp2_port* %12, %struct.mvpp2_port** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %16 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %15, i32 0, i32 2
  %17 = load %struct.mvpp2*, %struct.mvpp2** %16, align 8
  store %struct.mvpp2* %17, %struct.mvpp2** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @MVPP2_RX_PKT_SIZE(i32 %18)
  %20 = call i32 @IS_ALIGNED(i64 %19, i32 8)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @MVPP2_RX_PKT_SIZE(i32 %25)
  %27 = call i32 @ALIGN(i64 %26, i32 8)
  %28 = call i32 @netdev_info(%struct.net_device* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @MVPP2_RX_PKT_SIZE(i32 %29)
  %31 = call i32 @ALIGN(i64 %30, i32 8)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %22, %2
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @MVPP2_RX_PKT_SIZE(i32 %33)
  %35 = load i64, i64* @MVPP2_BM_LONG_PKT_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %39 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @netdev_warn(%struct.net_device* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %47 = call i32 @mvpp2_bm_switch_buffers(%struct.mvpp2* %46, i32 0)
  br label %48

48:                                               ; preds = %42, %37
  br label %100

49:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %83, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %53 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %50
  %57 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %58 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %57, i32 0, i32 1
  %59 = load %struct.mvpp2_port**, %struct.mvpp2_port*** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mvpp2_port*, %struct.mvpp2_port** %59, i64 %61
  %63 = load %struct.mvpp2_port*, %struct.mvpp2_port** %62, align 8
  %64 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %65 = icmp ne %struct.mvpp2_port* %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %56
  %67 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %68 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %67, i32 0, i32 1
  %69 = load %struct.mvpp2_port**, %struct.mvpp2_port*** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.mvpp2_port*, %struct.mvpp2_port** %69, i64 %71
  %73 = load %struct.mvpp2_port*, %struct.mvpp2_port** %72, align 8
  %74 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @MVPP2_RX_PKT_SIZE(i32 %77)
  %79 = load i64, i64* @MVPP2_BM_LONG_PKT_SIZE, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  br label %86

82:                                               ; preds = %66, %56
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %50

86:                                               ; preds = %81, %50
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %91 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_info(i32 %95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %98 = call i32 @mvpp2_bm_switch_buffers(%struct.mvpp2* %97, i32 1)
  br label %99

99:                                               ; preds = %89, %86
  br label %100

100:                                              ; preds = %99, %48
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %105 = call i32 @mvpp2_stop_dev(%struct.mvpp2_port* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @mvpp2_bm_update_mtu(%struct.net_device* %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = call i32 @netdev_err(%struct.net_device* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.net_device*, %struct.net_device** %3, align 8
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @mvpp2_bm_update_mtu(%struct.net_device* %115, i32 %118)
  br label %125

120:                                              ; preds = %106
  %121 = load i32, i32* %4, align 4
  %122 = call i64 @MVPP2_RX_PKT_SIZE(i32 %121)
  %123 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %124 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %120, %112
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %130 = call i32 @mvpp2_start_dev(%struct.mvpp2_port* %129)
  %131 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %132 = call i32 @mvpp2_egress_enable(%struct.mvpp2_port* %131)
  %133 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %134 = call i32 @mvpp2_ingress_enable(%struct.mvpp2_port* %133)
  br label %135

135:                                              ; preds = %128, %125
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i64 @MVPP2_RX_PKT_SIZE(i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @mvpp2_bm_switch_buffers(%struct.mvpp2*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @mvpp2_stop_dev(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_bm_update_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mvpp2_start_dev(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_egress_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_ingress_enable(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
