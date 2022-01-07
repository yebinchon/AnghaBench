; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TSU_ADRH0 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TSU_TEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @sh_eth_tsu_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_tsu_add_entry(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sh_eth_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.sh_eth_private* %11, %struct.sh_eth_private** %6, align 8
  %12 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %13 = load i32, i32* @TSU_ADRH0, align 4
  %14 = call i64 @sh_eth_tsu_get_offset(%struct.sh_eth_private* %12, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %16 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @sh_eth_tsu_find_entry(%struct.net_device* %23, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @sh_eth_tsu_find_empty(%struct.net_device* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @sh_eth_tsu_write_entry(%struct.net_device* %37, i64 %42, i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %36
  %50 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %51 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %52 = load i32, i32* @TSU_TEN, align 4
  %53 = call i32 @sh_eth_tsu_read(%struct.sh_eth_private* %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 31, %54
  %56 = shl i32 1, %55
  %57 = or i32 %53, %56
  %58 = load i32, i32* @TSU_TEN, align 4
  %59 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %50, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %49, %22
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @sh_eth_tsu_enable_cam_entry_post(%struct.net_device* %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %47, %33, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sh_eth_tsu_get_offset(%struct.sh_eth_private*, i32) #1

declare dso_local i32 @sh_eth_tsu_find_entry(%struct.net_device*, i32*) #1

declare dso_local i32 @sh_eth_tsu_find_empty(%struct.net_device*) #1

declare dso_local i32 @sh_eth_tsu_write_entry(%struct.net_device*, i64, i32*) #1

declare dso_local i32 @sh_eth_tsu_write(%struct.sh_eth_private*, i32, i32) #1

declare dso_local i32 @sh_eth_tsu_read(%struct.sh_eth_private*, i32) #1

declare dso_local i32 @sh_eth_tsu_enable_cam_entry_post(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
