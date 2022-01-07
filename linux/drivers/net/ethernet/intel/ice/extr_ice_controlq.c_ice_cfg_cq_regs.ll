; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_cfg_cq_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_cfg_cq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_ctl_q_ring = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ICE_ERR_AQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_ctl_q_ring*, i32)* @ice_cfg_cq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_cfg_cq_regs(%struct.ice_hw* %0, %struct.ice_ctl_q_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca %struct.ice_ctl_q_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store %struct.ice_ctl_q_ring* %1, %struct.ice_ctl_q_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %9 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %10 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @wr32(%struct.ice_hw* %8, i32 %11, i32 0)
  %13 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %14 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %15 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wr32(%struct.ice_hw* %13, i32 %16, i32 0)
  %18 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %19 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %20 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %24 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = call i32 @wr32(%struct.ice_hw* %18, i32 %21, i32 %26)
  %28 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %29 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %30 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %33 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @lower_32_bits(i32 %35)
  %37 = call i32 @wr32(%struct.ice_hw* %28, i32 %31, i32 %36)
  %38 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %39 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %40 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %43 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = call i32 @wr32(%struct.ice_hw* %38, i32 %41, i32 %46)
  %48 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %49 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %50 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rd32(%struct.ice_hw* %48, i32 %51)
  %53 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %6, align 8
  %54 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lower_32_bits(i32 %56)
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %3
  %60 = load i32, i32* @ICE_ERR_AQ_ERROR, align 4
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %59
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
