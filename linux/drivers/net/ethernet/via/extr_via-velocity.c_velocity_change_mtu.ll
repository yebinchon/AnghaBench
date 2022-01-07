; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.velocity_info = type { i32, i32, i32, %struct.tx_info, %struct.rx_info, i32, i32, i32, %struct.net_device* }
%struct.tx_info = type { i32 }
%struct.rx_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VELOCITY_INIT_COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @velocity_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.velocity_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.velocity_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rx_info, align 4
  %10 = alloca %struct.tx_info, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %11)
  store %struct.velocity_info* %12, %struct.velocity_info** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %133

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %132

26:                                               ; preds = %20
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.velocity_info* @kzalloc(i32 40, i32 %27)
  store %struct.velocity_info* %28, %struct.velocity_info** %7, align 8
  %29 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %30 = icmp ne %struct.velocity_info* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %133

34:                                               ; preds = %26
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %37 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %36, i32 0, i32 8
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %39 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %42 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %44 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %47 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %49 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %52 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %54 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.tx_info, %struct.tx_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %58 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.tx_info, %struct.tx_info* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @velocity_init_rings(%struct.velocity_info* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %34
  br label %129

66:                                               ; preds = %34
  %67 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %68 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %67, i32 0, i32 2
  %69 = call i32 @napi_disable(i32* %68)
  %70 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %71 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %70, i32 0, i32 0
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @netif_stop_queue(%struct.net_device* %74)
  %76 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %77 = call i32 @velocity_shutdown(%struct.velocity_info* %76)
  %78 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %79 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %78, i32 0, i32 4
  %80 = bitcast %struct.rx_info* %9 to i8*
  %81 = bitcast %struct.rx_info* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 8 %81, i64 4, i1 false)
  %82 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %83 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %82, i32 0, i32 3
  %84 = bitcast %struct.tx_info* %10 to i8*
  %85 = bitcast %struct.tx_info* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  %86 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %87 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %86, i32 0, i32 4
  %88 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %89 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %88, i32 0, i32 4
  %90 = bitcast %struct.rx_info* %87 to i8*
  %91 = bitcast %struct.rx_info* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 4, i1 false)
  %92 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %93 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %92, i32 0, i32 3
  %94 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %95 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %94, i32 0, i32 3
  %96 = bitcast %struct.tx_info* %93 to i8*
  %97 = bitcast %struct.tx_info* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %99 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %98, i32 0, i32 4
  %100 = bitcast %struct.rx_info* %99 to i8*
  %101 = bitcast %struct.rx_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 4 %101, i64 4, i1 false)
  %102 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %103 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %102, i32 0, i32 3
  %104 = bitcast %struct.tx_info* %103 to i8*
  %105 = bitcast %struct.tx_info* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 4, i1 false)
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %110 = load i32, i32* @VELOCITY_INIT_COLD, align 4
  %111 = call i32 @velocity_init_registers(%struct.velocity_info* %109, i32 %110)
  %112 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %113 = call i32 @velocity_give_many_rx_descs(%struct.velocity_info* %112)
  %114 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %115 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %114, i32 0, i32 2
  %116 = call i32 @napi_enable(i32* %115)
  %117 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %118 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @mac_enable_int(i32 %119)
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = call i32 @netif_start_queue(%struct.net_device* %121)
  %123 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %124 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %123, i32 0, i32 0
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %128 = call i32 @velocity_free_rings(%struct.velocity_info* %127)
  br label %129

129:                                              ; preds = %66, %65
  %130 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %131 = call i32 @kfree(%struct.velocity_info* %130)
  br label %132

132:                                              ; preds = %129, %20
  br label %133

133:                                              ; preds = %132, %31, %16
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local %struct.velocity_info* @kzalloc(i32, i32) #1

declare dso_local i32 @velocity_init_rings(%struct.velocity_info*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @velocity_shutdown(%struct.velocity_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @velocity_init_registers(%struct.velocity_info*, i32) #1

declare dso_local i32 @velocity_give_many_rx_descs(%struct.velocity_info*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @mac_enable_int(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @velocity_free_rings(%struct.velocity_info*) #1

declare dso_local i32 @kfree(%struct.velocity_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
