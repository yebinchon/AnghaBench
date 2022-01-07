; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qede_dev = type { i64 }
%struct.qede_reload_args = type { i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)*, %struct.TYPE_2__ }
%struct.qede_dev.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@NETIF_F_GRO_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qede_reload_args, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.qede_dev* %11, %struct.qede_dev** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %12, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds %struct.qede_reload_args, %struct.qede_reload_args* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.qede_reload_args, %struct.qede_reload_args* %9, i32 0, i32 0
  store i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)* bitcast (i32 (%struct.qede_dev*, %struct.qede_reload_args*)* @qede_set_features_reload to i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)*), i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)** %29, align 8
  %30 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %31 = call i32 @__qede_lock(%struct.qede_dev* %30)
  %32 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %33 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.qede_reload_args, %struct.qede_reload_args* %9, i32 0, i32 0
  %38 = load i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)*, i32 (%struct.qede_dev.0*, %struct.qede_reload_args*)** %37, align 8
  %39 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %40 = bitcast %struct.qede_dev* %39 to %struct.qede_dev.0*
  %41 = call i32 %38(%struct.qede_dev.0* %40, %struct.qede_reload_args* %9)
  br label %45

42:                                               ; preds = %25
  %43 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %44 = call i32 @qede_reload(%struct.qede_dev* %43, %struct.qede_reload_args* %9, i32 1)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %47 = call i32 @__qede_unlock(%struct.qede_dev* %46)
  store i32 1, i32* %3, align 4
  br label %49

48:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qede_set_features_reload(%struct.qede_dev*, %struct.qede_reload_args*) #1

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local i32 @qede_reload(%struct.qede_dev*, %struct.qede_reload_args*, i32) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
