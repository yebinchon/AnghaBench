; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_rtr_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_rtr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.cc770_priv = type { i32 }

@CC770_MAX_MSG = common dso_local global i32 0, align 4
@msgobj = common dso_local global %struct.TYPE_2__* null, align 8
@INTPND_SET = common dso_local global i32 0, align 4
@MSGVAL_SET = common dso_local global i32 0, align 4
@TXIE_RES = common dso_local global i32 0, align 4
@RXIE_SET = common dso_local global i32 0, align 4
@INTPND_RES = common dso_local global i32 0, align 4
@NEWDAT_RES = common dso_local global i32 0, align 4
@CPUUPD_SET = common dso_local global i32 0, align 4
@TXRQST_RES = common dso_local global i32 0, align 4
@RMTPND_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @cc770_rtr_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc770_rtr_interrupt(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cc770_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.cc770_priv* %11, %struct.cc770_priv** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @obj2msgobj(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @CC770_MAX_MSG, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %33, %2
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %15
  %20 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cc770_read_reg(%struct.cc770_priv* %20, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @INTPND_SET, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %76

33:                                               ; preds = %19
  %34 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cc770_read_reg(%struct.cc770_priv* %34, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @cc770_rx(%struct.net_device* %42, i32 %43, i32 %44)
  %46 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MSGVAL_SET, align 4
  %54 = load i32, i32* @TXIE_RES, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RXIE_SET, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @INTPND_RES, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @cc770_write_reg(%struct.cc770_priv* %46, i32 %52, i32 %59)
  %61 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NEWDAT_RES, align 4
  %69 = load i32, i32* @CPUUPD_SET, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @TXRQST_RES, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RMTPND_RES, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @cc770_write_reg(%struct.cc770_priv* %61, i32 %67, i32 %74)
  br label %15

76:                                               ; preds = %32, %15
  ret void
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @obj2msgobj(i32) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i32 @cc770_rx(%struct.net_device*, i32, i32) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
