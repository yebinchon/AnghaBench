; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_fwd_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_fwd_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_fwd_adapter = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_ring** }
%struct.ixgbe_ring = type { i32*, %struct.ixgbe_q_vector* }
%struct.ixgbe_q_vector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*)* @ixgbe_fwd_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_fwd_del(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ixgbe_fwd_adapter*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_ring*, align 8
  %10 = alloca %struct.ixgbe_q_vector*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ixgbe_fwd_adapter*
  store %struct.ixgbe_fwd_adapter* %12, %struct.ixgbe_fwd_adapter** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.ixgbe_adapter* %14, %struct.ixgbe_adapter** %6, align 8
  %15 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %19 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @VMDQ_P(i32 %26)
  %28 = call i32 @ixgbe_del_mac_filter(%struct.ixgbe_adapter* %18, i32 %23, i32 %27)
  %29 = call i32 @usleep_range(i32 10000, i32 20000)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %61, %2
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 3
  %39 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %39, i64 %43
  %45 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %44, align 8
  store %struct.ixgbe_ring* %45, %struct.ixgbe_ring** %9, align 8
  %46 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %9, align 8
  %47 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %46, i32 0, i32 1
  %48 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %47, align 8
  store %struct.ixgbe_q_vector* %48, %struct.ixgbe_q_vector** %10, align 8
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @netif_running(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %10, align 8
  %56 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %55, i32 0, i32 0
  %57 = call i32 @napi_synchronize(i32* %56)
  br label %58

58:                                               ; preds = %54, %36
  %59 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %9, align 8
  %60 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %30

64:                                               ; preds = %30
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 @netdev_unbind_sb_channel(%struct.net_device* %65, %struct.TYPE_3__* %68)
  %70 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %71 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = call i32 @netdev_set_sb_channel(%struct.TYPE_3__* %72, i32 0)
  %74 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @clear_bit(i32 %76, i32 %79)
  %81 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %82 = call i32 @kfree(%struct.ixgbe_fwd_adapter* %81)
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_del_mac_filter(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @netdev_unbind_sb_channel(%struct.net_device*, %struct.TYPE_3__*) #1

declare dso_local i32 @netdev_set_sb_channel(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kfree(%struct.ixgbe_fwd_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
