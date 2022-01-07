; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_umem_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_umem_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.xdp_umem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i32)* @i40e_xsk_umem_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_xsk_umem_disable(%struct.i40e_vsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.xdp_umem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.xdp_umem* @xdp_get_umem_from_qid(%struct.net_device* %13, i32 %14)
  store %struct.xdp_umem* %15, %struct.xdp_umem** %7, align 8
  %16 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %17 = icmp ne %struct.xdp_umem* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %23 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %22, i32 0, i32 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = call i64 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %29 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi i1 [ false, %21 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @i40e_queue_pair_disable(%struct.i40e_vsi* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %66

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %48 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clear_bit(i32 %46, i32 %49)
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %52 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %53 = call i32 @i40e_xsk_umem_dma_unmap(%struct.i40e_vsi* %51, %struct.xdp_umem* %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @i40e_queue_pair_enable(%struct.i40e_vsi* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %45
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62, %42, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.xdp_umem* @xdp_get_umem_from_qid(%struct.net_device*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_queue_pair_disable(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @i40e_xsk_umem_dma_unmap(%struct.i40e_vsi*, %struct.xdp_umem*) #1

declare dso_local i32 @i40e_queue_pair_enable(%struct.i40e_vsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
