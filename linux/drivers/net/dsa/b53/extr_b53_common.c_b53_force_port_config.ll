; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_force_port_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_force_port_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, i32 }

@B53_PORT_OVERRIDE_CTRL = common dso_local global i32 0, align 4
@PORT_OVERRIDE_EN = common dso_local global i32 0, align 4
@GMII_PO_EN = common dso_local global i32 0, align 4
@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@PORT_OVERRIDE_FULL_DUPLEX = common dso_local global i32 0, align 4
@PORT_OVERRIDE_SPEED_2000M = common dso_local global i32 0, align 4
@PORT_OVERRIDE_SPEED_1000M = common dso_local global i32 0, align 4
@PORT_OVERRIDE_SPEED_100M = common dso_local global i32 0, align 4
@PORT_OVERRIDE_SPEED_10M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unknown speed: %d\0A\00", align 1
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@PORT_OVERRIDE_RX_FLOW = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@PORT_OVERRIDE_TX_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b53_device*, i32, i32, i32, i32)* @b53_force_port_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_force_port_config(%struct.b53_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.b53_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %16 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @PORT_OVERRIDE_EN, align 4
  store i32 %21, i32* %12, align 4
  br label %26

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @B53_GMII_PORT_OVERRIDE_CTRL(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @GMII_PO_EN, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %28 = load i32, i32* @B53_CTRL_PAGE, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @b53_read8(%struct.b53_device* %27, i32 %28, i32 %29, i32* %11)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @DUPLEX_FULL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @PORT_OVERRIDE_FULL_DUPLEX, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %46

41:                                               ; preds = %26
  %42 = load i32, i32* @PORT_OVERRIDE_FULL_DUPLEX, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %64 [
    i32 2000, label %48
    i32 128, label %52
    i32 129, label %56
    i32 130, label %60
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @PORT_OVERRIDE_SPEED_2000M, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %46, %48
  %53 = load i32, i32* @PORT_OVERRIDE_SPEED_1000M, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %70

56:                                               ; preds = %46
  %57 = load i32, i32* @PORT_OVERRIDE_SPEED_100M, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %70

60:                                               ; preds = %46
  %61 = load i32, i32* @PORT_OVERRIDE_SPEED_10M, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %70

64:                                               ; preds = %46
  %65 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %66 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %94

70:                                               ; preds = %60, %56, %52
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @MLO_PAUSE_RX, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @PORT_OVERRIDE_RX_FLOW, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @MLO_PAUSE_TX, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @PORT_OVERRIDE_TX_FLOW, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %90 = load i32, i32* @B53_CTRL_PAGE, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @b53_write8(%struct.b53_device* %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %64
  ret void
}

declare dso_local i32 @B53_GMII_PORT_OVERRIDE_CTRL(i32) #1

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
