; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_change_ring_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_change_ring_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BNX2_DRV_MSG_CODE_RESET = common dso_local global i32 0, align 4
@disable_msi = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_REGD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32, i32, i32)* @bnx2_change_ring_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_change_ring_size(%struct.bnx2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %12 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @netif_running(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %4
  %17 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %18 = call i32 @bnx2_save_stats(%struct.bnx2* %17)
  %19 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %20 = call i32 @bnx2_netif_stop(%struct.bnx2* %19, i32 1)
  %21 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %22 = load i32, i32* @BNX2_DRV_MSG_CODE_RESET, align 4
  %23 = call i32 @bnx2_reset_chip(%struct.bnx2* %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %28 = call i32 @bnx2_free_irq(%struct.bnx2* %27)
  %29 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %30 = call i32 @bnx2_del_napi(%struct.bnx2* %29)
  br label %34

31:                                               ; preds = %16
  %32 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %33 = call i32 @__bnx2_free_irq(%struct.bnx2* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %36 = call i32 @bnx2_free_skbs(%struct.bnx2* %35)
  %37 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %38 = call i32 @bnx2_free_mem(%struct.bnx2* %37)
  br label %39

39:                                               ; preds = %34, %4
  %40 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @bnx2_set_rx_ring_size(%struct.bnx2* %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %45 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @netif_running(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %56 = load i32, i32* @disable_msi, align 4
  %57 = call i32 @bnx2_setup_int_mode(%struct.bnx2* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %59 = call i32 @bnx2_init_napi(%struct.bnx2* %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %65 = call i32 @bnx2_alloc_mem(%struct.bnx2* %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %71 = call i32 @bnx2_request_irq(%struct.bnx2* %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %77 = call i32 @bnx2_init_nic(%struct.bnx2* %76, i32 0)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %83 = call i32 @bnx2_napi_enable(%struct.bnx2* %82)
  %84 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %85 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_close(i32 %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %93

89:                                               ; preds = %78
  %90 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %91 = call i32 @bnx2_netif_start(%struct.bnx2* %90, i32 1)
  br label %92

92:                                               ; preds = %89, %39
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %81
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @bnx2_save_stats(%struct.bnx2*) #1

declare dso_local i32 @bnx2_netif_stop(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_reset_chip(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_free_irq(%struct.bnx2*) #1

declare dso_local i32 @bnx2_del_napi(%struct.bnx2*) #1

declare dso_local i32 @__bnx2_free_irq(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_skbs(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_set_rx_ring_size(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_setup_int_mode(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_init_napi(%struct.bnx2*) #1

declare dso_local i32 @bnx2_alloc_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_request_irq(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_nic(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_napi_enable(%struct.bnx2*) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @bnx2_netif_start(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
