; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_write_page_sub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_write_page_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mtd_info = type { i32, i32 }
%struct.nand_sdr_timings = type { i32 }
%struct.meson_nfc_nand_chip = type { i32, i32 }
%struct.meson_nfc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PER_INFO_BYTE = common dso_local global i32 0, align 4
@DIRWRITE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@NFC_CMD_SCRAMBLER_ENABLE = common dso_local global i32 0, align 4
@NFC_CMD_SCRAMBLER_DISABLE = common dso_local global i32 0, align 4
@NFC_CMD_CLE = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32)* @meson_nfc_write_page_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_write_page_sub(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.nand_sdr_timings*, align 8
  %10 = alloca %struct.meson_nfc_nand_chip*, align 8
  %11 = alloca %struct.meson_nfc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %16)
  store %struct.mtd_info* %17, %struct.mtd_info** %8, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 3
  %20 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %19)
  store %struct.nand_sdr_timings* %20, %struct.nand_sdr_timings** %9, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %22 = call %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip* %21)
  store %struct.meson_nfc_nand_chip* %22, %struct.meson_nfc_nand_chip** %10, align 8
  %23 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %24 = call %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip* %23)
  store %struct.meson_nfc* %24, %struct.meson_nfc** %11, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @meson_nfc_select_chip(%struct.nand_chip* %25, i32 %28)
  %30 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PER_INFO_BYTE, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %13, align 4
  %43 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @DIRWRITE, align 4
  %46 = call i32 @meson_nfc_rw_cmd_prepare_and_execute(%struct.nand_chip* %43, i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %4, align 4
  br label %117

51:                                               ; preds = %3
  %52 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %53 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %10, align 8
  %54 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %10, align 8
  %58 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i32 @meson_nfc_dma_buffer_setup(%struct.nand_chip* %52, i32 %55, i32 %56, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %4, align 4
  br label %117

67:                                               ; preds = %51
  %68 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.meson_nfc*, %struct.meson_nfc** %11, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @meson_nfc_cmd_seed(%struct.meson_nfc* %75, i32 %76)
  %78 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @DIRWRITE, align 4
  %81 = load i32, i32* @NFC_CMD_SCRAMBLER_ENABLE, align 4
  %82 = call i32 @meson_nfc_cmd_access(%struct.nand_chip* %78, i32 %79, i32 %80, i32 %81)
  br label %89

83:                                               ; preds = %67
  %84 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @DIRWRITE, align 4
  %87 = load i32, i32* @NFC_CMD_SCRAMBLER_DISABLE, align 4
  %88 = call i32 @meson_nfc_cmd_access(%struct.nand_chip* %84, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %74
  %90 = load %struct.meson_nfc*, %struct.meson_nfc** %11, align 8
  %91 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NFC_CMD_CLE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.meson_nfc*, %struct.meson_nfc** %11, align 8
  %100 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @NFC_REG_CMD, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  %105 = load %struct.meson_nfc*, %struct.meson_nfc** %11, align 8
  %106 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %107 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PSEC_TO_MSEC(i32 %108)
  %110 = call i32 @meson_nfc_queue_rb(%struct.meson_nfc* %105, i32 %109)
  %111 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @DMA_TO_DEVICE, align 4
  %115 = call i32 @meson_nfc_dma_buffer_release(%struct.nand_chip* %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %89, %65, %49
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip*) #1

declare dso_local %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @meson_nfc_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @meson_nfc_rw_cmd_prepare_and_execute(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @meson_nfc_dma_buffer_setup(%struct.nand_chip*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @meson_nfc_cmd_seed(%struct.meson_nfc*, i32) #1

declare dso_local i32 @meson_nfc_cmd_access(%struct.nand_chip*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @meson_nfc_queue_rb(%struct.meson_nfc*, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i32 @meson_nfc_dma_buffer_release(%struct.nand_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
