; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.sockaddr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @mlx4_en_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx4_en_priv* %14, %struct.mlx4_en_priv** %6, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 0
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %16, align 8
  store %struct.mlx4_en_dev* %17, %struct.mlx4_en_dev** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %8, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = add nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @is_valid_ether_addr(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EADDRNOTAVAIL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %63

33:                                               ; preds = %2
  %34 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i8* %24, i32 %39, i32 %40)
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %43 = call i32 @mlx4_en_do_set_mac(%struct.mlx4_en_priv* %42, i8* %24)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %58

47:                                               ; preds = %33
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i8* %50, i32 %53, i32 %54)
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %57 = call i32 @mlx4_en_update_user_mac(%struct.mlx4_en_priv* %56, i8* %24)
  br label %58

58:                                               ; preds = %47, %46
  %59 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %58, %30
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mlx4_en_do_set_mac(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_update_user_mac(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
