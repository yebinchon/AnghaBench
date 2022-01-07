; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.meson_nfc_nand_chip = type { i32, i32, i32, i32, i8*, i8* }
%struct.nand_sdr_timings = type { i32, i32, i32, i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@NFC_CLK_CYCLE = common dso_local global i32 0, align 4
@NFC_DEFAULT_DELAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @meson_nfc_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.meson_nfc_nand_chip*, align 8
  %9 = alloca %struct.nand_sdr_timings*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %15 = call %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip* %14)
  store %struct.meson_nfc_nand_chip* %15, %struct.meson_nfc_nand_chip** %8, align 8
  %16 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %17 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface* %16)
  store %struct.nand_sdr_timings* %17, %struct.nand_sdr_timings** %9, align 8
  %18 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %19 = call i64 @IS_ERR(%struct.nand_sdr_timings* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %126

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %126

29:                                               ; preds = %24
  %30 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %31 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 1000
  %34 = load i32, i32* @NFC_CLK_CYCLE, align 4
  %35 = call i8* @DIV_ROUND_UP(i32 %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %38 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NFC_DEFAULT_DELAY, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @NFC_DEFAULT_DELAY, align 4
  %45 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %46 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %50 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 2
  %53 = add nsw i32 %48, %52
  %54 = load i32, i32* %10, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %57 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PSEC_TO_NSEC(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @NFC_CLK_CYCLE, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i8* @DIV_ROUND_UP(i32 %59, i32 %62)
  %64 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %65 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %67 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PSEC_TO_NSEC(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @NFC_CLK_CYCLE, align 4
  %72 = mul nsw i32 %70, %71
  %73 = call i8* @DIV_ROUND_UP(i32 %69, i32 %72)
  %74 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %75 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %77 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PSEC_TO_NSEC(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @NFC_CLK_CYCLE, align 4
  %82 = mul nsw i32 %80, %81
  %83 = call i32 @DIV_ROUND_UP_ULL(i32 %79, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @ilog2(i32 %84)
  %86 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %87 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @is_power_of_2(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %29
  %92 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %93 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %29
  %97 = load i32, i32* %11, align 4
  %98 = call i8* @DIV_ROUND_UP(i32 %97, i32 1000)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i8* @DIV_ROUND_UP(i32 %100, i32 1000)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %126

109:                                              ; preds = %96
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %112 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %114 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sdiv i32 1000000000, %115
  %117 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %118 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %119, %120
  %122 = sdiv i32 %121, 2
  %123 = add nsw i32 %122, 1
  %124 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %125 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %109, %106, %28, %21
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
