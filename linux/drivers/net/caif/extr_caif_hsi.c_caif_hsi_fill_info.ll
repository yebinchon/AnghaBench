; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_caif_hsi_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_caif_hsi_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.cfhsi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@__IFLA_CAIF_HSI_INACTIVITY_TOUT = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_AGGREGATION_TOUT = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_HEAD_ALIGN = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_TAIL_ALIGN = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_QHIGH_WATERMARK = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_QLOW_WATERMARK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @caif_hsi_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caif_hsi_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfhsi*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.cfhsi* @netdev_priv(%struct.net_device* %7)
  store %struct.cfhsi* %8, %struct.cfhsi** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @__IFLA_CAIF_HSI_INACTIVITY_TOUT, align 4
  %11 = load %struct.cfhsi*, %struct.cfhsi** %6, align 8
  %12 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nla_put_u32(%struct.sk_buff* %9, i32 %10, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @__IFLA_CAIF_HSI_AGGREGATION_TOUT, align 4
  %20 = load %struct.cfhsi*, %struct.cfhsi** %6, align 8
  %21 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @nla_put_u32(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @__IFLA_CAIF_HSI_HEAD_ALIGN, align 4
  %29 = load %struct.cfhsi*, %struct.cfhsi** %6, align 8
  %30 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nla_put_u32(%struct.sk_buff* %27, i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @__IFLA_CAIF_HSI_TAIL_ALIGN, align 4
  %38 = load %struct.cfhsi*, %struct.cfhsi** %6, align 8
  %39 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @__IFLA_CAIF_HSI_QHIGH_WATERMARK, align 4
  %47 = load %struct.cfhsi*, %struct.cfhsi** %6, align 8
  %48 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %45, i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %44
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load i32, i32* @__IFLA_CAIF_HSI_QLOW_WATERMARK, align 4
  %56 = load %struct.cfhsi*, %struct.cfhsi** %6, align 8
  %57 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nla_put_u32(%struct.sk_buff* %54, i32 %55, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53, %44, %35, %26, %17, %2
  %63 = load i32, i32* @EMSGSIZE, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.cfhsi* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
