; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_tunnel_info = type { i32 }

@GENEVE_DF_UNSET = common dso_local global i32 0, align 4
@GENEVE_UDP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @geneve_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geneve_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_tunnel_info, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %18 = load i32, i32* @GENEVE_DF_UNSET, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* @GENEVE_UDP_PORT, align 4
  %20 = call i32 @init_tnl_info(%struct.ip_tunnel_info* %14, i32 %19)
  %21 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %24 = call i32 @geneve_nl2info(%struct.nlattr** %21, %struct.nlattr** %22, %struct.netlink_ext_ack* %23, %struct.ip_tunnel_info* %14, i32* %16, i32* %13, i32* %15, i32* %12, i32 0)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %6, align 4
  br label %46

29:                                               ; preds = %5
  %30 = load %struct.net*, %struct.net** %7, align 8
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @geneve_configure(%struct.net* %30, %struct.net_device* %31, %struct.netlink_ext_ack* %32, %struct.ip_tunnel_info* %14, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %17, align 4
  store i32 %41, i32* %6, align 4
  br label %46

42:                                               ; preds = %29
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %45 = call i32 @geneve_link_config(%struct.net_device* %43, %struct.ip_tunnel_info* %14, %struct.nlattr** %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %40, %27
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @init_tnl_info(%struct.ip_tunnel_info*, i32) #1

declare dso_local i32 @geneve_nl2info(%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*, %struct.ip_tunnel_info*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @geneve_configure(%struct.net*, %struct.net_device*, %struct.netlink_ext_ack*, %struct.ip_tunnel_info*, i32, i32, i32, i32) #1

declare dso_local i32 @geneve_link_config(%struct.net_device*, %struct.ip_tunnel_info*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
