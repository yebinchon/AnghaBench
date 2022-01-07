; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32, i32)*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.can_bittiming, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@XCAN_SR_OFFSET = common dso_local global i32 0, align 4
@XCAN_SR_CONFIG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"BUG! Cannot set bittiming - CAN is not in config mode\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@XCAN_BRPR_OFFSET = common dso_local global i32 0, align 4
@XCAN_BTR_OFFSET = common dso_local global i32 0, align 4
@XAXI_CANFD = common dso_local global i64 0, align 8
@XAXI_CANFD_2_0 = common dso_local global i64 0, align 8
@XCAN_F_BRPR_OFFSET = common dso_local global i32 0, align 4
@XCAN_F_BTR_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"BRPR=0x%08x, BTR=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xcan_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xcan_priv*, align 8
  %5 = alloca %struct.can_bittiming*, align 8
  %6 = alloca %struct.can_bittiming*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.xcan_priv* %11, %struct.xcan_priv** %4, align 8
  %12 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %13 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store %struct.can_bittiming* %14, %struct.can_bittiming** %5, align 8
  %15 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %16 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.can_bittiming* %17, %struct.can_bittiming** %6, align 8
  %18 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %19 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %18, i32 0, i32 0
  %20 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %19, align 8
  %21 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %22 = load i32, i32* @XCAN_SR_OFFSET, align 4
  %23 = call i32 %20(%struct.xcan_priv* %21, i32 %22)
  %24 = load i32, i32* @XCAN_SR_CONFIG_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netdev_alert(%struct.net_device* %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %159

33:                                               ; preds = %1
  %34 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %35 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %39 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %42 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %47 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %51 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 %49, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %58 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %62 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %60, %64
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %69 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %68, i32 0, i32 1
  %70 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %69, align 8
  %71 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %72 = load i32, i32* @XCAN_BRPR_OFFSET, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 %70(%struct.xcan_priv* %71, i32 %72, i32 %73)
  %75 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %76 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %75, i32 0, i32 1
  %77 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %76, align 8
  %78 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %79 = load i32, i32* @XCAN_BTR_OFFSET, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 %77(%struct.xcan_priv* %78, i32 %79, i32 %80)
  %82 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %83 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @XAXI_CANFD, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %33
  %89 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %90 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @XAXI_CANFD_2_0, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %144

95:                                               ; preds = %88, %33
  %96 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %97 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  %100 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %101 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %104 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %109 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %113 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %111, %115
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  %119 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %120 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %124 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %122, %126
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %131 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %130, i32 0, i32 1
  %132 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %131, align 8
  %133 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %134 = load i32, i32* @XCAN_F_BRPR_OFFSET, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 %132(%struct.xcan_priv* %133, i32 %134, i32 %135)
  %137 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %138 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %137, i32 0, i32 1
  %139 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %138, align 8
  %140 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %141 = load i32, i32* @XCAN_F_BTR_OFFSET, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 %139(%struct.xcan_priv* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %95, %88
  %145 = load %struct.net_device*, %struct.net_device** %3, align 8
  %146 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %147 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %146, i32 0, i32 0
  %148 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %147, align 8
  %149 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %150 = load i32, i32* @XCAN_BRPR_OFFSET, align 4
  %151 = call i32 %148(%struct.xcan_priv* %149, i32 %150)
  %152 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %153 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %152, i32 0, i32 0
  %154 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %153, align 8
  %155 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %156 = load i32, i32* @XCAN_BTR_OFFSET, align 4
  %157 = call i32 %154(%struct.xcan_priv* %155, i32 %156)
  %158 = call i32 @netdev_dbg(%struct.net_device* %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %144, %28
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_alert(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
