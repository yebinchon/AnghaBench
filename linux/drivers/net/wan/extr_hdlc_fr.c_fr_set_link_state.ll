; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_set_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_set_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pvc_device = type { %struct.pvc_device*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__, i64, %struct.pvc_device* }
%struct.TYPE_4__ = type { i64, i32 }

@LMI_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.net_device*)* @fr_set_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fr_set_link_state(i32 %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pvc_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call i32* @dev_to_hdlc(%struct.net_device* %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_6__* @state(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = load %struct.pvc_device*, %struct.pvc_device** %11, align 8
  store %struct.pvc_device* %12, %struct.pvc_device** %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_6__* @state(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @netif_dormant_off(%struct.net_device* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.TYPE_6__* @state(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_6__* @state(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call %struct.TYPE_6__* @state(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LMI_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %39, %35
  %37 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %38 = icmp ne %struct.pvc_device* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %41 = call i32 @pvc_carrier(i32 1, %struct.pvc_device* %40)
  %42 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %43 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %46 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %49 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %52 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %51, i32 0, i32 0
  %53 = load %struct.pvc_device*, %struct.pvc_device** %52, align 8
  store %struct.pvc_device* %53, %struct.pvc_device** %6, align 8
  br label %36

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %19
  br label %89

56:                                               ; preds = %2
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @netif_dormant_on(%struct.net_device* %57)
  br label %59

59:                                               ; preds = %84, %56
  %60 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %61 = icmp ne %struct.pvc_device* %60, null
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %64 = call i32 @pvc_carrier(i32 0, %struct.pvc_device* %63)
  %65 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %66 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %69 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %72 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call %struct.TYPE_6__* @state(i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %62
  %81 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %82 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %62
  %85 = load %struct.pvc_device*, %struct.pvc_device** %6, align 8
  %86 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %85, i32 0, i32 0
  %87 = load %struct.pvc_device*, %struct.pvc_device** %86, align 8
  store %struct.pvc_device* %87, %struct.pvc_device** %6, align 8
  br label %59

88:                                               ; preds = %59
  br label %89

89:                                               ; preds = %88, %55
  ret void
}

declare dso_local i32* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @state(i32*) #1

declare dso_local i32 @netif_dormant_off(%struct.net_device*) #1

declare dso_local i32 @pvc_carrier(i32, %struct.pvc_device*) #1

declare dso_local i32 @netif_dormant_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
