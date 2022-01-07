; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc.c_detach_hdlc_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc.c_detach_hdlc_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.net_device*)* }

@NETDEV_PRE_TYPE_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Refused to change device type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detach_hdlc_protocol(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device* %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load i32, i32* @NETDEV_PRE_TYPE_CHANGE, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @call_netdevice_notifiers(i32 %13, %struct.net_device* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @notifier_to_errno(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netdev_err(%struct.net_device* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %57

24:                                               ; preds = %12
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %28, align 8
  %30 = icmp ne i32 (%struct.net_device*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %35, align 8
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 %36(%struct.net_device* %37)
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @module_put(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %47, align 8
  br label %48

48:                                               ; preds = %39, %1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @hdlc_setup_dev(%struct.net_device* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %48, %20
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @hdlc_setup_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
