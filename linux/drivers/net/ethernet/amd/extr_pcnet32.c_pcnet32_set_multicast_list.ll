; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.pcnet32_private = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i64, i32)*, i32 (i64, i32, i32)* }
%struct.TYPE_3__ = type { i8* }

@CSR15 = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Promiscuous mode enabled\0A\00", align 1
@PCNET32_PORT_PORTSEL = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@CSR0_STOP = common dso_local global i32 0, align 4
@CSR0_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pcnet32_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pcnet32_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %11)
  store %struct.pcnet32_private* %12, %struct.pcnet32_private** %5, align 8
  %13 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %14 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %13, i32 0, i32 1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @pcnet32_suspend(%struct.net_device* %17, i64* %4, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %20 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i64, i32)*, i32 (i64, i32)** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* @CSR15, align 4
  %26 = call i32 %23(i64 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IFF_PROMISC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %1
  %34 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %35 = load i32, i32* @hw, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @netif_info(%struct.pcnet32_private* %34, i32 %35, %struct.net_device* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %39 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCNET32_PORT_PORTSEL, align 4
  %42 = and i32 %40, %41
  %43 = shl i32 %42, 7
  %44 = or i32 32768, %43
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %47 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  %50 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %51 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* @CSR15, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, 32768
  %59 = call i32 %54(i64 %55, i32 %56, i32 %58)
  br label %84

60:                                               ; preds = %1
  %61 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %62 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PCNET32_PORT_PORTSEL, align 4
  %65 = and i32 %63, %64
  %66 = shl i32 %65, 7
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %69 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8* %67, i8** %71, align 8
  %72 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %73 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %75, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load i32, i32* @CSR15, align 4
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 32767
  %81 = call i32 %76(i64 %77, i32 %78, i32 %80)
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = call i32 @pcnet32_load_multicast(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %60, %33
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @pcnet32_clr_suspend(%struct.pcnet32_private* %88, i64 %89)
  br label %106

91:                                               ; preds = %84
  %92 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %93 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %95, align 8
  %97 = load i64, i64* %3, align 8
  %98 = load i32, i32* @CSR0, align 4
  %99 = load i32, i32* @CSR0_STOP, align 4
  %100 = call i32 %96(i64 %97, i32 %98, i32 %99)
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load i32, i32* @CSR0_NORMAL, align 4
  %103 = call i32 @pcnet32_restart(%struct.net_device* %101, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = call i32 @netif_wake_queue(%struct.net_device* %104)
  br label %106

106:                                              ; preds = %91, %87
  %107 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %108 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %107, i32 0, i32 1
  %109 = load i64, i64* %4, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  ret void
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pcnet32_suspend(%struct.net_device*, i64*, i32) #1

declare dso_local i32 @netif_info(%struct.pcnet32_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @pcnet32_load_multicast(%struct.net_device*) #1

declare dso_local i32 @pcnet32_clr_suspend(%struct.pcnet32_private*, i64) #1

declare dso_local i32 @pcnet32_restart(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
