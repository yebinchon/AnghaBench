; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_set_packet_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_set_packet_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ET131X_PACKET_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@ET131X_PACKET_TYPE_ALL_MULTICAST = common dso_local global i32 0, align 4
@ET131X_PACKET_TYPE_DIRECTED = common dso_local global i32 0, align 4
@ET131X_PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*)* @et131x_set_packet_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_set_packet_filter(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %6 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @readl(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = call i32 @readl(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, 4
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ET131X_PACKET_TYPE_PROMISCUOUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, -8
  store i32 %32, i32* %5, align 4
  br label %88

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ET131X_PACKET_TYPE_ALL_MULTICAST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, -3
  store i32 %40, i32* %5, align 4
  br label %48

41:                                               ; preds = %33
  %42 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %43 = call i32 @et1310_setup_device_for_multicast(%struct.et131x_adapter* %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, 2
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, -5
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ET131X_PACKET_TYPE_DIRECTED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %55 = call i32 @et1310_setup_device_for_unicast(%struct.et131x_adapter* %54)
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, -5
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ET131X_PACKET_TYPE_BROADCAST, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, -5
  store i32 %69, i32* %4, align 4
  br label %73

70:                                               ; preds = %60
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, -2
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = call i32 @writel(i32 %74, i32* %79)
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @writel(i32 %81, i32* %86)
  br label %88

88:                                               ; preds = %73, %30
  ret i32 0
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @et1310_setup_device_for_multicast(%struct.et131x_adapter*) #1

declare dso_local i32 @et1310_setup_device_for_unicast(%struct.et131x_adapter*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
