; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_chip_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_chip_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { i64, i64, i32, i32 (%struct.c_can_priv*, i32, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@C_CAN_CTRL_REG = common dso_local global i32 0, align 4
@CONTROL_ENABLE_AR = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CONTROL_TEST = common dso_local global i32 0, align 4
@C_CAN_TEST_REG = common dso_local global i32 0, align 4
@TEST_LBACK = common dso_local global i32 0, align 4
@TEST_SILENT = common dso_local global i32 0, align 4
@C_CAN_STS_REG = common dso_local global i32 0, align 4
@LEC_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @c_can_chip_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_chip_config(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.c_can_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.c_can_priv* %7, %struct.c_can_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @c_can_software_reset(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %121

14:                                               ; preds = %1
  %15 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %16 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %15, i32 0, i32 3
  %17 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %16, align 8
  %18 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %19 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %20 = load i32, i32* @CONTROL_ENABLE_AR, align 4
  %21 = call i32 %17(%struct.c_can_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %23 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %14
  %30 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %31 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %39 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %38, i32 0, i32 3
  %40 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %39, align 8
  %41 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %42 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %43 = load i32, i32* @CONTROL_TEST, align 4
  %44 = call i32 %40(%struct.c_can_priv* %41, i32 %42, i32 %43)
  %45 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %46 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %45, i32 0, i32 3
  %47 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %46, align 8
  %48 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %49 = load i32, i32* @C_CAN_TEST_REG, align 4
  %50 = load i32, i32* @TEST_LBACK, align 4
  %51 = load i32, i32* @TEST_SILENT, align 4
  %52 = or i32 %50, %51
  %53 = call i32 %47(%struct.c_can_priv* %48, i32 %49, i32 %52)
  br label %102

54:                                               ; preds = %29, %14
  %55 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %56 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %64 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %63, i32 0, i32 3
  %65 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %64, align 8
  %66 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %67 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %68 = load i32, i32* @CONTROL_TEST, align 4
  %69 = call i32 %65(%struct.c_can_priv* %66, i32 %67, i32 %68)
  %70 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %71 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %70, i32 0, i32 3
  %72 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %71, align 8
  %73 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %74 = load i32, i32* @C_CAN_TEST_REG, align 4
  %75 = load i32, i32* @TEST_LBACK, align 4
  %76 = call i32 %72(%struct.c_can_priv* %73, i32 %74, i32 %75)
  br label %101

77:                                               ; preds = %54
  %78 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %79 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %77
  %86 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %87 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %86, i32 0, i32 3
  %88 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %87, align 8
  %89 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %90 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %91 = load i32, i32* @CONTROL_TEST, align 4
  %92 = call i32 %88(%struct.c_can_priv* %89, i32 %90, i32 %91)
  %93 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %94 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %93, i32 0, i32 3
  %95 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %94, align 8
  %96 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %97 = load i32, i32* @C_CAN_TEST_REG, align 4
  %98 = load i32, i32* @TEST_SILENT, align 4
  %99 = call i32 %95(%struct.c_can_priv* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %85, %77
  br label %101

101:                                              ; preds = %100, %62
  br label %102

102:                                              ; preds = %101, %37
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = call i32 @c_can_configure_msg_objects(%struct.net_device* %103)
  %105 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %106 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %105, i32 0, i32 3
  %107 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %106, align 8
  %108 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %109 = load i32, i32* @C_CAN_STS_REG, align 4
  %110 = load i32, i32* @LEC_UNUSED, align 4
  %111 = call i32 %107(%struct.c_can_priv* %108, i32 %109, i32 %110)
  %112 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %113 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %112, i32 0, i32 2
  %114 = call i32 @atomic_set(i32* %113, i32 0)
  %115 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %116 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %118 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call i32 @c_can_set_bittiming(%struct.net_device* %119)
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %102, %12
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @c_can_software_reset(%struct.net_device*) #1

declare dso_local i32 @c_can_configure_msg_objects(%struct.net_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @c_can_set_bittiming(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
