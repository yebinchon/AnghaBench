; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32, i32, i32, i32, i64 }
%struct.device = type { i32 }

@MMCIF_CE_INT = common dso_local global i32 0, align 4
@MMCIF_CE_INT_MASK = common dso_local global i32 0, align 4
@INT_CCS = common dso_local global i32 0, align 4
@MASK_CLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"IRQ state = 0x%08x incompletely cleared\0A\00", align 1
@INT_ERR_STS = common dso_local global i32 0, align 4
@INT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"int err state = 0x%08x\0A\00", align 1
@INT_CMD12RBE = common dso_local global i32 0, align 4
@INT_CMD12CRE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"NULL IRQ state = 0x%08x\0A\00", align 1
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Unexpected IRQ 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_mmcif_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mmcif_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sh_mmcif_host*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sh_mmcif_host*
  store %struct.sh_mmcif_host* %11, %struct.sh_mmcif_host** %6, align 8
  %12 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %13 = call %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host* %12)
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %15 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MMCIF_CE_INT, align 4
  %18 = call i32 @sh_mmcif_readl(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %20 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MMCIF_CE_INT_MASK, align 4
  %23 = call i32 @sh_mmcif_readl(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %25 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %30 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MMCIF_CE_INT, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = call i32 @sh_mmcif_writel(i32 %31, i32 %32, i32 %36)
  br label %50

38:                                               ; preds = %2
  %39 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %40 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MMCIF_CE_INT, align 4
  %43 = load i32, i32* @INT_CCS, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = or i32 %43, %47
  %49 = call i32 @sh_mmcif_writel(i32 %41, i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %38, %28
  %51 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %52 = load i32, i32* @MMCIF_CE_INT_MASK, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MASK_CLEAN, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @sh_mmcif_bitclr(%struct.sh_mmcif_host* %51, i32 %52, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MASK_CLEAN, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %50
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @INT_ERR_STS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @INT_ALL, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71, %66
  %78 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %79 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @INT_CMD12RBE, align 4
  %86 = load i32, i32* @INT_CMD12CRE, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %83
  %92 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %93 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %91
  %101 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %102 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %106, i32* %3, align 4
  br label %123

107:                                              ; preds = %100
  %108 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %109 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %6, align 8
  %114 = call i32 @sh_mmcif_dma_complete(%struct.sh_mmcif_host* %113)
  br label %115

115:                                              ; preds = %112, %107
  br label %116

116:                                              ; preds = %115
  br label %121

117:                                              ; preds = %83
  %118 = load %struct.device*, %struct.device** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %116
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %105
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host*) #1

declare dso_local i32 @sh_mmcif_readl(i32, i32) #1

declare dso_local i32 @sh_mmcif_writel(i32, i32, i32) #1

declare dso_local i32 @sh_mmcif_bitclr(%struct.sh_mmcif_host*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sh_mmcif_dma_complete(%struct.sh_mmcif_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
