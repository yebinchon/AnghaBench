; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@BTR_BRP_MASK = common dso_local global i32 0, align 4
@BTR_SJW_SHIFT = common dso_local global i32 0, align 4
@BTR_TSEG1_SHIFT = common dso_local global i32 0, align 4
@BTR_TSEG2_SHIFT = common dso_local global i32 0, align 4
@BRP_EXT_BRPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"setting BTR=%04x BRPE=%04x\0A\00", align 1
@C_CAN_CTRL_REG = common dso_local global i32 0, align 4
@CONTROL_INIT = common dso_local global i32 0, align 4
@CONTROL_CCE = common dso_local global i32 0, align 4
@C_CAN_BTR_REG = common dso_local global i32 0, align 4
@C_CAN_BRPEXT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @c_can_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.c_can_priv*, align 8
  %14 = alloca %struct.can_bittiming*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.c_can_priv* %17, %struct.c_can_priv** %13, align 8
  %18 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %19 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.can_bittiming* %20, %struct.can_bittiming** %14, align 8
  %21 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %22 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @BTR_BRP_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %12, align 4
  %29 = ashr i32 %28, 6
  store i32 %29, i32* %8, align 4
  %30 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %31 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %35 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %38 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %36, %39
  %41 = sub i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %43 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @BTR_SJW_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @BTR_TSEG1_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @BTR_TSEG2_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %54, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @BRP_EXT_BRPE_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %5, align 4
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @netdev_info(%struct.net_device* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %67 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %66, i32 0, i32 0
  %68 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %67, align 8
  %69 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %70 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %71 = call i32 %68(%struct.c_can_priv* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @CONTROL_INIT, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %77 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %76, i32 0, i32 1
  %78 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %77, align 8
  %79 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %80 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %81 = load i32, i32* @CONTROL_CCE, align 4
  %82 = load i32, i32* @CONTROL_INIT, align 4
  %83 = or i32 %81, %82
  %84 = call i32 %78(%struct.c_can_priv* %79, i32 %80, i32 %83)
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %87 = load i32, i32* @CONTROL_INIT, align 4
  %88 = call i32 @c_can_wait_for_ctrl_init(%struct.net_device* %85, %struct.c_can_priv* %86, i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %1
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %2, align 4
  br label %118

93:                                               ; preds = %1
  %94 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %95 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %94, i32 0, i32 1
  %96 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %95, align 8
  %97 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %98 = load i32, i32* @C_CAN_BTR_REG, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 %96(%struct.c_can_priv* %97, i32 %98, i32 %99)
  %101 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %102 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %101, i32 0, i32 1
  %103 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %102, align 8
  %104 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %105 = load i32, i32* @C_CAN_BRPEXT_REG, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 %103(%struct.c_can_priv* %104, i32 %105, i32 %106)
  %108 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %109 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %108, i32 0, i32 1
  %110 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %109, align 8
  %111 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %112 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 %110(%struct.c_can_priv* %111, i32 %112, i32 %113)
  %115 = load %struct.net_device*, %struct.net_device** %3, align 8
  %116 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %117 = call i32 @c_can_wait_for_ctrl_init(%struct.net_device* %115, %struct.c_can_priv* %116, i32 0)
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %93, %91
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @c_can_wait_for_ctrl_init(%struct.net_device*, %struct.c_can_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
