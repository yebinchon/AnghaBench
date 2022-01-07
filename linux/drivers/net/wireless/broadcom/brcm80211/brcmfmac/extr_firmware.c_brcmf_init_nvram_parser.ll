; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_init_nvram_parser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_init_nvram_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram_parser = type { i32, i32, i32, i32* }

@BRCMF_FW_MAX_NVRAM_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvram_parser*, i32*, i64)* @brcmf_init_nvram_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_init_nvram_parser(%struct.nvram_parser* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvram_parser*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nvram_parser* %0, %struct.nvram_parser** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.nvram_parser*, %struct.nvram_parser** %5, align 8
  %10 = call i32 @memset(%struct.nvram_parser* %9, i32 0, i32 24)
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.nvram_parser*, %struct.nvram_parser** %5, align 8
  %13 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @BRCMF_FW_MAX_NVRAM_SIZE, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @BRCMF_FW_MAX_NVRAM_SIZE, align 8
  store i64 %18, i64* %8, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @kzalloc(i64 %24, i32 %25)
  %27 = load %struct.nvram_parser*, %struct.nvram_parser** %5, align 8
  %28 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nvram_parser*, %struct.nvram_parser** %5, align 8
  %30 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %21
  %37 = load %struct.nvram_parser*, %struct.nvram_parser** %5, align 8
  %38 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.nvram_parser*, %struct.nvram_parser** %5, align 8
  %40 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.nvram_parser*, i32, i32) #1

declare dso_local i32 @kzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
