; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_config_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_config_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i64, i32, i32* }
%struct.set_loopback = type { i64, i32 }

@NIC_PF_CQ_AVG_CFG = common dso_local global i32 0, align 4
@NIC_PF_RRM_AVG_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicpf*, %struct.set_loopback*)* @nic_config_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_config_loopback(%struct.nicpf* %0, %struct.set_loopback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca %struct.set_loopback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %4, align 8
  store %struct.set_loopback* %1, %struct.set_loopback** %5, align 8
  %8 = load %struct.set_loopback*, %struct.set_loopback** %5, align 8
  %9 = getelementptr inbounds %struct.set_loopback, %struct.set_loopback* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %12 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %18 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.set_loopback*, %struct.set_loopback** %5, align 8
  %21 = getelementptr inbounds %struct.set_loopback, %struct.set_loopback* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %27 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.set_loopback*, %struct.set_loopback** %5, align 8
  %30 = getelementptr inbounds %struct.set_loopback, %struct.set_loopback* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %36 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.set_loopback*, %struct.set_loopback** %5, align 8
  %41 = getelementptr inbounds %struct.set_loopback, %struct.set_loopback* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bgx_lmac_internal_loopback(i32 %37, i32 %38, i32 %39, i32 %42)
  %44 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %45 = load i32, i32* @NIC_PF_CQ_AVG_CFG, align 4
  %46 = call i32 @BIT_ULL(i32 20)
  %47 = sext i32 %46 to i64
  %48 = or i64 %47, 32768
  %49 = or i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = call i32 @nic_reg_write(%struct.nicpf* %44, i32 %45, i32 %50)
  %52 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %53 = load i32, i32* @NIC_PF_RRM_AVG_CFG, align 4
  %54 = call i32 @BIT_ULL(i32 20)
  %55 = sext i32 %54 to i64
  %56 = or i64 %55, 49152
  %57 = or i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i32 @nic_reg_write(%struct.nicpf* %52, i32 %53, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %16, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @bgx_lmac_internal_loopback(i32, i32, i32, i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
