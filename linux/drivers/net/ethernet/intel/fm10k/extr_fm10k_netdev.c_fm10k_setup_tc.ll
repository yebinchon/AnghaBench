; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@fm10k_mac_pf = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FM10K_FLAG_SWPRI_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_setup_tc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_intfc*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %8)
  store %struct.fm10k_intfc* %9, %struct.fm10k_intfc** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @fm10k_mac_pf, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %86

23:                                               ; preds = %12, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i64 @netif_running(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @fm10k_close(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %38 = call i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc* %37)
  %39 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %40 = call i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc* %39)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @netdev_reset_tc(%struct.net_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @netdev_set_num_tc(%struct.net_device* %43, i32 %44)
  %46 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %47 = call i32 @fm10k_init_queueing_scheme(%struct.fm10k_intfc* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %82

51:                                               ; preds = %36
  %52 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %53 = call i32 @fm10k_mbx_request_irq(%struct.fm10k_intfc* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %79

57:                                               ; preds = %51
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i64 @netif_running(%struct.net_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @fm10k_open(%struct.net_device* %62)
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 0, %64 ]
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @FM10K_FLAG_SWPRI_CONFIG, align 4
  %72 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %73 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @set_bit(i32 %71, i32 %74)
  store i32 0, i32* %3, align 4
  br label %86

76:                                               ; preds = %69
  %77 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %78 = call i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc* %77)
  br label %79

79:                                               ; preds = %76, %56
  %80 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %81 = call i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc* %80)
  br label %82

82:                                               ; preds = %79, %50
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = call i32 @netif_device_detach(%struct.net_device* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %70, %26, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @fm10k_close(%struct.net_device*) #1

declare dso_local i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc*) #1

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @fm10k_init_queueing_scheme(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_mbx_request_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_open(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
