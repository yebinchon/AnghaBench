; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.geneve_dev = type { i32, i32, i32, %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { i32 }
%struct.geneve_sock = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @geneve_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geneve_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.geneve_dev*, align 8
  %11 = alloca %struct.geneve_sock*, align 8
  %12 = alloca %struct.geneve_sock*, align 8
  %13 = alloca %struct.ip_tunnel_info, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.geneve_dev* @netdev_priv(%struct.net_device* %19)
  store %struct.geneve_dev* %20, %struct.geneve_dev** %10, align 8
  %21 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %22 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %80

28:                                               ; preds = %4
  %29 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %30 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %29, i32 0, i32 3
  %31 = call i32 @memcpy(%struct.ip_tunnel_info* %13, %struct.ip_tunnel_info* %30, i32 4)
  %32 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %33 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %36 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %39 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %17, align 4
  %41 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %42 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %44 = call i32 @geneve_nl2info(%struct.nlattr** %41, %struct.nlattr** %42, %struct.netlink_ext_ack* %43, %struct.ip_tunnel_info* %13, i32* %14, i32* %15, i32* %17, i32* %16, i32 1)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i32, i32* %18, align 4
  store i32 %48, i32* %5, align 4
  br label %80

49:                                               ; preds = %28
  %50 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %51 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %50, i32 0, i32 3
  %52 = call i32 @geneve_dst_addr_equal(%struct.ip_tunnel_info* %51, %struct.ip_tunnel_info* %13)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %13, i32 0, i32 0
  %56 = call i32 @dst_cache_reset(i32* %55)
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %59 = call i32 @geneve_link_config(%struct.net_device* %57, %struct.ip_tunnel_info* %13, %struct.nlattr** %58)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %62 = call i32 @geneve_quiesce(%struct.geneve_dev* %61, %struct.geneve_sock** %11, %struct.geneve_sock** %12)
  %63 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %64 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %63, i32 0, i32 3
  %65 = bitcast %struct.ip_tunnel_info* %64 to i8*
  %66 = bitcast %struct.ip_tunnel_info* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %69 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %72 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %75 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.geneve_dev*, %struct.geneve_dev** %10, align 8
  %77 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %78 = load %struct.geneve_sock*, %struct.geneve_sock** %12, align 8
  %79 = call i32 @geneve_unquiesce(%struct.geneve_dev* %76, %struct.geneve_sock* %77, %struct.geneve_sock* %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %60, %47, %25
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.geneve_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(%struct.ip_tunnel_info*, %struct.ip_tunnel_info*, i32) #1

declare dso_local i32 @geneve_nl2info(%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*, %struct.ip_tunnel_info*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @geneve_dst_addr_equal(%struct.ip_tunnel_info*, %struct.ip_tunnel_info*) #1

declare dso_local i32 @dst_cache_reset(i32*) #1

declare dso_local i32 @geneve_link_config(%struct.net_device*, %struct.ip_tunnel_info*, %struct.nlattr**) #1

declare dso_local i32 @geneve_quiesce(%struct.geneve_dev*, %struct.geneve_sock**, %struct.geneve_sock**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @geneve_unquiesce(%struct.geneve_dev*, %struct.geneve_sock*, %struct.geneve_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
