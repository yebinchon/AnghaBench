; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.macsec_dev = type { %struct.macsec_secy, i32, i32 }
%struct.macsec_secy = type { i32, i32, i32 }
%struct.pcpu_secy_stats = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @macsec_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.macsec_dev*, align 8
  %7 = alloca %struct.macsec_secy*, align 8
  %8 = alloca %struct.pcpu_secy_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.macsec_dev* @netdev_priv(%struct.net_device* %11)
  store %struct.macsec_dev* %12, %struct.macsec_dev** %6, align 8
  %13 = load %struct.macsec_dev*, %struct.macsec_dev** %6, align 8
  %14 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %13, i32 0, i32 0
  store %struct.macsec_secy* %14, %struct.macsec_secy** %7, align 8
  %15 = load %struct.macsec_secy*, %struct.macsec_secy** %7, align 8
  %16 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %2
  %20 = load %struct.macsec_dev*, %struct.macsec_dev** %6, align 8
  %21 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pcpu_secy_stats* @this_cpu_ptr(i32 %22)
  store %struct.pcpu_secy_stats* %23, %struct.pcpu_secy_stats** %8, align 8
  %24 = load %struct.pcpu_secy_stats*, %struct.pcpu_secy_stats** %8, align 8
  %25 = getelementptr inbounds %struct.pcpu_secy_stats, %struct.pcpu_secy_stats* %24, i32 0, i32 0
  %26 = call i32 @u64_stats_update_begin(i32* %25)
  %27 = load %struct.pcpu_secy_stats*, %struct.pcpu_secy_stats** %8, align 8
  %28 = getelementptr inbounds %struct.pcpu_secy_stats, %struct.pcpu_secy_stats* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.pcpu_secy_stats*, %struct.pcpu_secy_stats** %8, align 8
  %33 = getelementptr inbounds %struct.pcpu_secy_stats, %struct.pcpu_secy_stats* %32, i32 0, i32 0
  %34 = call i32 @u64_stats_update_end(i32* %33)
  %35 = load %struct.macsec_dev*, %struct.macsec_dev** %6, align 8
  %36 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @dev_queue_xmit(%struct.sk_buff* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @count_tx(%struct.net_device* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %108

50:                                               ; preds = %2
  %51 = load %struct.macsec_secy*, %struct.macsec_secy** %7, align 8
  %52 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %108

64:                                               ; preds = %50
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = call %struct.sk_buff* @macsec_encrypt(%struct.sk_buff* %65, %struct.net_device* %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %4, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i64 @IS_ERR(%struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @PTR_ERR(%struct.sk_buff* %72)
  %74 = load i32, i32* @EINPROGRESS, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %84, i32* %3, align 4
  br label %108

85:                                               ; preds = %64
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.macsec_dev*, %struct.macsec_dev** %6, align 8
  %88 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %88, i32 0, i32 0
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call %struct.TYPE_6__* @macsec_skb_cb(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @macsec_count_tx(%struct.sk_buff* %86, i32* %89, i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = call i32 @macsec_encrypt_finish(%struct.sk_buff* %95, %struct.net_device* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %10, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @dev_queue_xmit(%struct.sk_buff* %101)
  store i32 %102, i32* %9, align 4
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @count_tx(%struct.net_device* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %85, %83, %55, %19
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.macsec_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.pcpu_secy_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @count_tx(%struct.net_device*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @macsec_encrypt(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @macsec_count_tx(%struct.sk_buff*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @macsec_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @macsec_encrypt_finish(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
