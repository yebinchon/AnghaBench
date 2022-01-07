; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_prepare_desc64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_prepare_desc64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.idmac_desc_64addr*, i32 }
%struct.idmac_desc_64addr = type { i32, i32, i32 }
%struct.mmc_data = type { i32* }

@DW_MCI_DESC_DATA_LENGTH = common dso_local global i32 0, align 4
@IDMAC_DES0_OWN = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@IDMAC_DES0_DIC = common dso_local global i32 0, align 4
@IDMAC_DES0_CH = common dso_local global i32 0, align 4
@IDMAC_DES0_FD = common dso_local global i32 0, align 4
@IDMAC_DES0_LD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"descriptor is still owned by IDMAC.\0A\00", align 1
@DESC_RING_BUF_SZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*, %struct.mmc_data*, i32)* @dw_mci_prepare_desc64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_prepare_desc64(%struct.dw_mci* %0, %struct.mmc_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_mci*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.idmac_desc_64addr*, align 8
  %10 = alloca %struct.idmac_desc_64addr*, align 8
  %11 = alloca %struct.idmac_desc_64addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %5, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %17 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %16, i32 0, i32 0
  %18 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %17, align 8
  store %struct.idmac_desc_64addr* %18, %struct.idmac_desc_64addr** %11, align 8
  store %struct.idmac_desc_64addr* %18, %struct.idmac_desc_64addr** %10, align 8
  store %struct.idmac_desc_64addr* %18, %struct.idmac_desc_64addr** %9, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %94, %3
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %19
  %24 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @sg_dma_len(i32* %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @sg_dma_address(i32* %36)
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %90, %23
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %38
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @DW_MCI_DESC_DATA_LENGTH, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %14, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @DW_MCI_DESC_DATA_LENGTH, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %14, align 4
  %54 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %11, align 8
  %55 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %54, i32 0, i32 0
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @IDMAC_DES0_OWN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @USEC_PER_MSEC, align 4
  %64 = mul nsw i32 100, %63
  %65 = call i64 @readl_poll_timeout_atomic(i32* %55, i32 %56, i32 %62, i32 10, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %116

68:                                               ; preds = %49
  %69 = load i32, i32* @IDMAC_DES0_OWN, align 4
  %70 = load i32, i32* @IDMAC_DES0_DIC, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @IDMAC_DES0_CH, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %11, align 8
  %75 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @IDMAC_64ADDR_SET_BUFFER1_SIZE(%struct.idmac_desc_64addr* %76, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %11, align 8
  %81 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %15, align 4
  %83 = ashr i32 %82, 32
  %84 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %11, align 8
  %85 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %11, align 8
  store %struct.idmac_desc_64addr* %89, %struct.idmac_desc_64addr** %10, align 8
  br label %90

90:                                               ; preds = %68
  %91 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %11, align 8
  %92 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %91, i32 1
  store %struct.idmac_desc_64addr* %92, %struct.idmac_desc_64addr** %11, align 8
  br label %38

93:                                               ; preds = %38
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %19

97:                                               ; preds = %19
  %98 = load i32, i32* @IDMAC_DES0_FD, align 4
  %99 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %9, align 8
  %100 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @IDMAC_DES0_CH, align 4
  %104 = load i32, i32* @IDMAC_DES0_DIC, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %10, align 8
  %108 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @IDMAC_DES0_LD, align 4
  %112 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %10, align 8
  %113 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  store i32 0, i32* %4, align 4
  br label %130

116:                                              ; preds = %67
  %117 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %118 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dev_dbg(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %121 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %122 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %121, i32 0, i32 0
  %123 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %122, align 8
  %124 = load i32, i32* @DESC_RING_BUF_SZ, align 4
  %125 = call i32 @memset(%struct.idmac_desc_64addr* %123, i32 0, i32 %124)
  %126 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %127 = call i32 @dw_mci_idmac_init(%struct.dw_mci* %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %116, %97
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @sg_dma_len(i32*) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i64 @readl_poll_timeout_atomic(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IDMAC_64ADDR_SET_BUFFER1_SIZE(%struct.idmac_desc_64addr*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @memset(%struct.idmac_desc_64addr*, i32, i32) #1

declare dso_local i32 @dw_mci_idmac_init(%struct.dw_mci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
