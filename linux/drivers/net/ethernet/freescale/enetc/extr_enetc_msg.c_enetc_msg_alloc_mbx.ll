; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_msg.c_enetc_msg_alloc_mbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_msg.c_enetc_msg_alloc_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { %struct.enetc_hw, %struct.TYPE_2__* }
%struct.enetc_hw = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.enetc_pf = type { %struct.enetc_msg_swbd* }
%struct.enetc_msg_swbd = type { i32, i32, i32 }

@ENETC_DEFAULT_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"msg: fail to alloc dma buffer of size: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_si*, i32)* @enetc_msg_alloc_mbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_msg_alloc_mbx(%struct.enetc_si* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enetc_si*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.enetc_pf*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.enetc_hw*, align 8
  %9 = alloca %struct.enetc_msg_swbd*, align 8
  %10 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %12 = call %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si* %11)
  store %struct.enetc_pf* %12, %struct.enetc_pf** %6, align 8
  %13 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %14 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %18 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %17, i32 0, i32 0
  store %struct.enetc_hw* %18, %struct.enetc_hw** %8, align 8
  %19 = load %struct.enetc_pf*, %struct.enetc_pf** %6, align 8
  %20 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %19, i32 0, i32 0
  %21 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %21, i64 %23
  store %struct.enetc_msg_swbd* %24, %struct.enetc_msg_swbd** %9, align 8
  %25 = load i32, i32* @ENETC_DEFAULT_MSG_SIZE, align 4
  %26 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %9, align 8
  %27 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %9, align 8
  %30 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %9, align 8
  %33 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @dma_alloc_coherent(%struct.device* %28, i32 %31, i32* %33, i32 %34)
  %36 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %9, align 8
  %37 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %9, align 8
  %39 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %2
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %9, align 8
  %45 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %69

50:                                               ; preds = %2
  %51 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %9, align 8
  %52 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lower_32_bits(i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.enetc_hw*, %struct.enetc_hw** %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ENETC_PSIVMSGRCVAR0(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @enetc_wr(%struct.enetc_hw* %55, i32 %57, i32 %58)
  %60 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %9, align 8
  %61 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @upper_32_bits(i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.enetc_hw*, %struct.enetc_hw** %8, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ENETC_PSIVMSGRCVAR1(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @enetc_wr(%struct.enetc_hw* %64, i32 %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %50, %42
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @enetc_wr(%struct.enetc_hw*, i32, i32) #1

declare dso_local i32 @ENETC_PSIVMSGRCVAR0(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @ENETC_PSIVMSGRCVAR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
