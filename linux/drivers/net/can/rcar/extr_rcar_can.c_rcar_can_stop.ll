; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rcar_can_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@RCAR_CAN_CTLR_CANM_FORCE_RESET = common dso_local global i32 0, align 4
@MAX_STR_READS = common dso_local global i32 0, align 4
@RCAR_CAN_STR_RSTST = common dso_local global i32 0, align 4
@RCAR_CAN_CTLR_SLPM = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rcar_can_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_can_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_can_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.rcar_can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.rcar_can_priv* %7, %struct.rcar_can_priv** %3, align 8
  %8 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @readw(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RCAR_CAN_CTLR_CANM_FORCE_RESET, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @writew(i32 %16, i32* %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %37, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAX_STR_READS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = call i32 @readw(i32* %30)
  %32 = load i32, i32* @RCAR_CAN_STR_RSTST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %22

40:                                               ; preds = %35, %22
  %41 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = call i32 @writel(i32 0, i32* %44)
  %46 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %47 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = call i32 @writel(i32 0, i32* %49)
  %51 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %52 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = call i32 @writeb(i32 0, i32* %54)
  %56 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = call i32 @writeb(i32 0, i32* %59)
  %61 = load i32, i32* @RCAR_CAN_CTLR_SLPM, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %66 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 @writew(i32 %64, i32* %68)
  %70 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %71 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  ret void
}

declare dso_local %struct.rcar_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readw(i32*) #1

declare dso_local i32 @writew(i32, i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
