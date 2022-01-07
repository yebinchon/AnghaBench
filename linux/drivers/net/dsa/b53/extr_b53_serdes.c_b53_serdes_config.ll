; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }
%struct.phylink_link_state = type { i64 }

@B53_INVALID_LANE = common dso_local global i64 0, align 8
@SERDES_DIGITAL_BLK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_1000BASEX = common dso_local global i64 0, align 8
@FIBER_MODE_1000X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b53_serdes_config(%struct.b53_device* %0, i32 %1, i32 %2, %struct.phylink_link_state* %3) #0 {
  %5 = alloca %struct.b53_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phylink_link_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.phylink_link_state* %3, %struct.phylink_link_state** %8, align 8
  %11 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @b53_serdes_map_lane(%struct.b53_device* %11, i32 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @B53_INVALID_LANE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %45

18:                                               ; preds = %4
  %19 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @B53_SERDES_DIGITAL_CONTROL(i32 1)
  %22 = load i32, i32* @SERDES_DIGITAL_BLK, align 4
  %23 = call i32 @b53_serdes_read(%struct.b53_device* %19, i64 %20, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %25 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PHY_INTERFACE_MODE_1000BASEX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @FIBER_MODE_1000X, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %38

33:                                               ; preds = %18
  %34 = load i32, i32* @FIBER_MODE_1000X, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @B53_SERDES_DIGITAL_CONTROL(i32 1)
  %42 = load i32, i32* @SERDES_DIGITAL_BLK, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @b53_serdes_write(%struct.b53_device* %39, i64 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %17
  ret void
}

declare dso_local i64 @b53_serdes_map_lane(%struct.b53_device*, i32) #1

declare dso_local i32 @b53_serdes_read(%struct.b53_device*, i64, i32, i32) #1

declare dso_local i32 @B53_SERDES_DIGITAL_CONTROL(i32) #1

declare dso_local i32 @b53_serdes_write(%struct.b53_device*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
