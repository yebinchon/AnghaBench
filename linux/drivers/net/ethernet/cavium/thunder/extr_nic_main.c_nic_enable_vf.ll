; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_enable_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_enable_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32*, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i32, i32)* @nic_enable_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_enable_vf(%struct.nicpf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %11 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32 %9, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %18 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %24 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %32 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %40 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @bgx_lmac_rx_tx_enable(i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @bgx_lmac_rx_tx_enable(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
