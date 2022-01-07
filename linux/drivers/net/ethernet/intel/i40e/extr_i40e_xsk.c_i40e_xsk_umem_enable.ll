; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_umem_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_umem_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i64, %struct.net_device*, i32, %struct.TYPE_2__** }
%struct.net_device = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.xdp_umem_fq_reuse = type { i32 }

@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XDP_WAKEUP_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.xdp_umem*, i64)* @i40e_xsk_umem_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_xsk_umem_enable(%struct.i40e_vsi* %0, %struct.xdp_umem* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.xdp_umem_fq_reuse*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %5, align 8
  store %struct.xdp_umem* %1, %struct.xdp_umem** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I40E_VSI_MAIN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %122

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %26 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %122

32:                                               ; preds = %23
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.net_device*, %struct.net_device** %8, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %122

47:                                               ; preds = %38
  %48 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %49 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.xdp_umem_fq_reuse* @xsk_reuseq_prepare(i32 %54)
  store %struct.xdp_umem_fq_reuse* %55, %struct.xdp_umem_fq_reuse** %9, align 8
  %56 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %9, align 8
  %57 = icmp ne %struct.xdp_umem_fq_reuse* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %122

61:                                               ; preds = %47
  %62 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %63 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %9, align 8
  %64 = call i32 @xsk_reuseq_swap(%struct.xdp_umem* %62, %struct.xdp_umem_fq_reuse* %63)
  %65 = call i32 @xsk_reuseq_free(i32 %64)
  %66 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %67 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %68 = call i32 @i40e_xsk_umem_dma_map(%struct.i40e_vsi* %66, %struct.xdp_umem* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %122

73:                                               ; preds = %61
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %76 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @set_bit(i64 %74, i32 %77)
  %79 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %80 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %79, i32 0, i32 2
  %81 = load %struct.net_device*, %struct.net_device** %80, align 8
  %82 = call i64 @netif_running(%struct.net_device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %86 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %84, %73
  %89 = phi i1 [ false, %73 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %88
  %94 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @i40e_queue_pair_disable(%struct.i40e_vsi* %94, i64 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %122

101:                                              ; preds = %93
  %102 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @i40e_queue_pair_enable(%struct.i40e_vsi* %102, i64 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %4, align 4
  br label %122

109:                                              ; preds = %101
  %110 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %111 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %110, i32 0, i32 2
  %112 = load %struct.net_device*, %struct.net_device** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i32, i32* @XDP_WAKEUP_RX, align 4
  %115 = call i32 @i40e_xsk_wakeup(%struct.net_device* %112, i64 %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %122

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %88
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %118, %107, %99, %71, %58, %44, %29, %20
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.xdp_umem_fq_reuse* @xsk_reuseq_prepare(i32) #1

declare dso_local i32 @xsk_reuseq_free(i32) #1

declare dso_local i32 @xsk_reuseq_swap(%struct.xdp_umem*, %struct.xdp_umem_fq_reuse*) #1

declare dso_local i32 @i40e_xsk_umem_dma_map(%struct.i40e_vsi*, %struct.xdp_umem*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_queue_pair_disable(%struct.i40e_vsi*, i64) #1

declare dso_local i32 @i40e_queue_pair_enable(%struct.i40e_vsi*, i64) #1

declare dso_local i32 @i40e_xsk_wakeup(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
