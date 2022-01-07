; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_7990.c_lance_set_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_7990.c_lance_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lance_private = type { i64, i64, %struct.lance_init_block* }
%struct.lance_init_block = type { i32 }

@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@LE_MO_PROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lance_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca %struct.lance_init_block*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.lance_private* @netdev_priv(%struct.net_device* %6)
  store %struct.lance_private* %7, %struct.lance_private** %3, align 8
  %8 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %9 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %8, i32 0, i32 2
  %10 = load %struct.lance_init_block*, %struct.lance_init_block** %9, align 8
  store %struct.lance_init_block* %10, %struct.lance_init_block** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_queue_stopped(%struct.net_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  br label %18

18:                                               ; preds = %15, %1
  br label %19

19:                                               ; preds = %27, %18
  %20 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %21 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %24 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 (...) @schedule()
  br label %19

29:                                               ; preds = %19
  %30 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %31 = load i32, i32* @LE_CSR0, align 4
  %32 = call i32 @WRITERAP(%struct.lance_private* %30, i32 %31)
  %33 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %34 = load i32, i32* @LE_C0_STOP, align 4
  %35 = call i32 @WRITERDP(%struct.lance_private* %33, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @lance_init_ring(%struct.net_device* %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load i32, i32* @LE_MO_PROM, align 4
  %46 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %47 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %46, i32 0, i32 0
  %48 = load volatile i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store volatile i32 %49, i32* %47, align 4
  br label %59

50:                                               ; preds = %29
  %51 = load i32, i32* @LE_MO_PROM, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %54 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %53, i32 0, i32 0
  %55 = load volatile i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store volatile i32 %56, i32* %54, align 4
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = call i32 @lance_load_multicast(%struct.net_device* %57)
  br label %59

59:                                               ; preds = %50, %44
  %60 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %61 = call i32 @load_csrs(%struct.lance_private* %60)
  %62 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %63 = call i32 @init_restart_lance(%struct.lance_private* %62)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = call i32 @netif_start_queue(%struct.net_device* %67)
  br label %69

69:                                               ; preds = %66, %59
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @WRITERAP(%struct.lance_private*, i32) #1

declare dso_local i32 @WRITERDP(%struct.lance_private*, i32) #1

declare dso_local i32 @lance_init_ring(%struct.net_device*) #1

declare dso_local i32 @lance_load_multicast(%struct.net_device*) #1

declare dso_local i32 @load_csrs(%struct.lance_private*) #1

declare dso_local i32 @init_restart_lance(%struct.lance_private*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
