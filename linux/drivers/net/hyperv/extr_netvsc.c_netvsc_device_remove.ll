; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.net_device = type { i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WIN10 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"net device safe to remove\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netvsc_device_remove(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device_context*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %7 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %8 = call %struct.net_device* @hv_get_drvdata(%struct.hv_device* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %9)
  store %struct.net_device_context* %10, %struct.net_device_context** %4, align 8
  %11 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %12 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.netvsc_device* @rtnl_dereference(i32 %13)
  store %struct.netvsc_device* %14, %struct.netvsc_device** %5, align 8
  %15 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %16 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netvsc_revoke_recv_buf(%struct.hv_device* %15, %struct.netvsc_device* %16, %struct.net_device* %17)
  %19 = load i64, i64* @vmbus_proto_version, align 8
  %20 = load i64, i64* @VERSION_WIN10, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %24 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netvsc_teardown_recv_gpadl(%struct.hv_device* %23, %struct.netvsc_device* %24, %struct.net_device* %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @netvsc_revoke_send_buf(%struct.hv_device* %28, %struct.netvsc_device* %29, %struct.net_device* %30)
  %32 = load i64, i64* @vmbus_proto_version, align 8
  %33 = load i64, i64* @VERSION_WIN10, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %37 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @netvsc_teardown_send_gpadl(%struct.hv_device* %36, %struct.netvsc_device* %37, %struct.net_device* %38)
  br label %40

40:                                               ; preds = %35, %27
  %41 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %42 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RCU_INIT_POINTER(i32 %43, i32* null)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %60, %40
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %48 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %53 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @netif_napi_del(i32* %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @netdev_dbg(%struct.net_device* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %67 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @vmbus_close(i32 %68)
  %70 = load i64, i64* @vmbus_proto_version, align 8
  %71 = load i64, i64* @VERSION_WIN10, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %75 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @netvsc_teardown_recv_gpadl(%struct.hv_device* %74, %struct.netvsc_device* %75, %struct.net_device* %76)
  %78 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %79 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 @netvsc_teardown_send_gpadl(%struct.hv_device* %78, %struct.netvsc_device* %79, %struct.net_device* %80)
  br label %82

82:                                               ; preds = %73, %63
  %83 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %84 = call i32 @free_netvsc_device_rcu(%struct.netvsc_device* %83)
  ret void
}

declare dso_local %struct.net_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

declare dso_local i32 @netvsc_revoke_recv_buf(%struct.hv_device*, %struct.netvsc_device*, %struct.net_device*) #1

declare dso_local i32 @netvsc_teardown_recv_gpadl(%struct.hv_device*, %struct.netvsc_device*, %struct.net_device*) #1

declare dso_local i32 @netvsc_revoke_send_buf(%struct.hv_device*, %struct.netvsc_device*, %struct.net_device*) #1

declare dso_local i32 @netvsc_teardown_send_gpadl(%struct.hv_device*, %struct.netvsc_device*, %struct.net_device*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @vmbus_close(i32) #1

declare dso_local i32 @free_netvsc_device_rcu(%struct.netvsc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
