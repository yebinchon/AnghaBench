; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_vnd.c_rmnet_vnd_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_vnd.c_rmnet_vnd_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmnet_port = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.rmnet_endpoint = type { i8*, %struct.net_device* }
%struct.rmnet_priv = type { i8*, %struct.net_device* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@rmnet_link_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"rmnet dev created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmnet_vnd_newlink(i8* %0, %struct.net_device* %1, %struct.rmnet_port* %2, %struct.net_device* %3, %struct.rmnet_endpoint* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.rmnet_port*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.rmnet_endpoint*, align 8
  %12 = alloca %struct.rmnet_priv*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.rmnet_port* %2, %struct.rmnet_port** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store %struct.rmnet_endpoint* %4, %struct.rmnet_endpoint** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.rmnet_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.rmnet_priv* %15, %struct.rmnet_priv** %12, align 8
  %16 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %11, align 8
  %17 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %74

23:                                               ; preds = %5
  %24 = load %struct.rmnet_port*, %struct.rmnet_port** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @rmnet_get_endpoint(%struct.rmnet_port* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %74

31:                                               ; preds = %23
  %32 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %36 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @NETIF_F_SG, align 4
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.net_device*, %struct.net_device** %10, align 8
  %48 = load %struct.rmnet_priv*, %struct.rmnet_priv** %12, align 8
  %49 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %48, i32 0, i32 1
  store %struct.net_device* %47, %struct.net_device** %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = call i32 @register_netdevice(%struct.net_device* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %31
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %11, align 8
  %57 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %56, i32 0, i32 1
  store %struct.net_device* %55, %struct.net_device** %57, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %11, align 8
  %60 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.rmnet_port*, %struct.rmnet_port** %9, align 8
  %62 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.net_device*, %struct.net_device** %8, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  store i32* @rmnet_link_ops, i32** %66, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.rmnet_priv*, %struct.rmnet_priv** %12, align 8
  %69 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.net_device*, %struct.net_device** %8, align 8
  %71 = call i32 @netdev_dbg(%struct.net_device* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %54, %31
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %28, %20
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.rmnet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @rmnet_get_endpoint(%struct.rmnet_port*, i8*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
