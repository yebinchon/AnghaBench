; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_keep_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_keep_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfp_tun_active_tuns = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.neighbour = type { i32 }

@NFP_FL_MAX_ROUTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Tunnel keep-alive request exceeds max routes.\0A\00", align 1
@tun_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Corruption in tunnel keep-alive message.\0A\00", align 1
@arp_tbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_tunnel_keep_alive(%struct.nfp_app* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_tun_active_tuns*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.nfp_tun_active_tuns* @nfp_flower_cmsg_get_data(%struct.sk_buff* %13)
  store %struct.nfp_tun_active_tuns* %14, %struct.nfp_tun_active_tuns** %5, align 8
  %15 = load %struct.nfp_tun_active_tuns*, %struct.nfp_tun_active_tuns** %5, align 8
  %16 = getelementptr inbounds %struct.nfp_tun_active_tuns, %struct.nfp_tun_active_tuns* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @be32_to_cpu(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NFP_FL_MAX_ROUTES, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %25 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %84

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @nfp_flower_cmsg_get_data_len(%struct.sk_buff* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.nfp_tun_active_tuns*, %struct.nfp_tun_active_tuns** %5, align 8
  %31 = load i32, i32* @tun_info, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @struct_size(%struct.nfp_tun_active_tuns* %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %37 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %84

38:                                               ; preds = %26
  %39 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %79, %38
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %40
  %45 = load %struct.nfp_tun_active_tuns*, %struct.nfp_tun_active_tuns** %5, align 8
  %46 = getelementptr inbounds %struct.nfp_tun_active_tuns, %struct.nfp_tun_active_tuns* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.nfp_tun_active_tuns*, %struct.nfp_tun_active_tuns** %5, align 8
  %54 = getelementptr inbounds %struct.nfp_tun_active_tuns, %struct.nfp_tun_active_tuns* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @be32_to_cpu(i32 %60)
  store i8* %61, i8** %12, align 8
  %62 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call %struct.net_device* @nfp_app_dev_get(%struct.nfp_app* %62, i8* %63, i32* null)
  store %struct.net_device* %64, %struct.net_device** %6, align 8
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = icmp ne %struct.net_device* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %44
  br label %79

68:                                               ; preds = %44
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = call %struct.neighbour* @neigh_lookup(i32* @arp_tbl, i32* %11, %struct.net_device* %69)
  store %struct.neighbour* %70, %struct.neighbour** %10, align 8
  %71 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %72 = icmp ne %struct.neighbour* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %79

74:                                               ; preds = %68
  %75 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %76 = call i32 @neigh_event_send(%struct.neighbour* %75, i32* null)
  %77 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %78 = call i32 @neigh_release(%struct.neighbour* %77)
  br label %79

79:                                               ; preds = %74, %73, %67
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %40

82:                                               ; preds = %40
  %83 = call i32 (...) @rcu_read_unlock()
  br label %84

84:                                               ; preds = %82, %35, %23
  ret void
}

declare dso_local %struct.nfp_tun_active_tuns* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*) #1

declare dso_local i32 @nfp_flower_cmsg_get_data_len(%struct.sk_buff*) #1

declare dso_local i32 @struct_size(%struct.nfp_tun_active_tuns*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @nfp_app_dev_get(%struct.nfp_app*, i8*, i32*) #1

declare dso_local %struct.neighbour* @neigh_lookup(i32*, i32*, %struct.net_device*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
