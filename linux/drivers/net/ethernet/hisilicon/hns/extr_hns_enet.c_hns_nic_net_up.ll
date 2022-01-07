; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_net_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_net_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.hns_nic_priv = type { i32, i32, %struct.hnae_handle* }
%struct.hnae_handle = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*)* }

@NIC_STATE_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"hns init irq failed! ret=%d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@SERVICE_TIMER_HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hns_nic_net_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_net_up(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hns_nic_priv*, align 8
  %5 = alloca %struct.hnae_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hns_nic_priv* %10, %struct.hns_nic_priv** %4, align 8
  %11 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %12 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %11, i32 0, i32 2
  %13 = load %struct.hnae_handle*, %struct.hnae_handle** %12, align 8
  store %struct.hnae_handle* %13, %struct.hnae_handle** %5, align 8
  %14 = load i32, i32* @NIC_STATE_DOWN, align 4
  %15 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %16 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %15, i32 0, i32 0
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %139

20:                                               ; preds = %1
  %21 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %22 = call i32 @hns_nic_init_irq(%struct.hns_nic_priv* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %139

30:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %34 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 2
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @hns_nic_ring_open(%struct.net_device* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %115

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %51 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %55, align 8
  %57 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %56(%struct.hnae_handle* %57, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %114

65:                                               ; preds = %49
  %66 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %67 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %71, align 8
  %73 = icmp ne i32 (%struct.hnae_handle*)* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %76 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %80, align 8
  %82 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %83 = call i32 %81(%struct.hnae_handle* %82)
  br label %85

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84, %74
  %86 = phi i32 [ %83, %74 ], [ 0, %84 ]
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %111

90:                                               ; preds = %85
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @phy_start(i64 %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @NIC_STATE_DOWN, align 4
  %102 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %103 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %102, i32 0, i32 0
  %104 = call i32 @clear_bit(i32 %101, i32* %103)
  %105 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %106 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %105, i32 0, i32 1
  %107 = load i64, i64* @jiffies, align 8
  %108 = load i64, i64* @SERVICE_TIMER_HZ, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @mod_timer(i32* %106, i64 %109)
  store i32 0, i32* %2, align 4
  br label %139

111:                                              ; preds = %89
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = call i32 @netif_stop_queue(%struct.net_device* %112)
  br label %114

114:                                              ; preds = %111, %64
  br label %115

115:                                              ; preds = %114, %44
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %125, %115
  %119 = load i32, i32* %7, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @hns_nic_ring_close(%struct.net_device* %122, i32 %123)
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %7, align 4
  br label %118

128:                                              ; preds = %118
  %129 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %130 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %133 = call i32 @hns_nic_free_irq(i32 %131, %struct.hns_nic_priv* %132)
  %134 = load i32, i32* @NIC_STATE_DOWN, align 4
  %135 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %136 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %135, i32 0, i32 0
  %137 = call i32 @set_bit(i32 %134, i32* %136)
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %128, %100, %25, %19
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hns_nic_init_irq(%struct.hns_nic_priv*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @hns_nic_ring_open(%struct.net_device*, i32) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @hns_nic_ring_close(%struct.net_device*, i32) #1

declare dso_local i32 @hns_nic_free_irq(i32, %struct.hns_nic_priv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
