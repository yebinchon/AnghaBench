; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_nvram_handle_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_nvram_handle_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram_parser = type { i8*, i64, i64, i64, i8*, i32 }

@BRCMF_FW_MAX_NVRAM_SIZE = common dso_local global i64 0, align 8
@END = common dso_local global i32 0, align 4
@IDLE = common dso_local global i32 0, align 4
@VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvram_parser*)* @brcmf_nvram_handle_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_nvram_handle_value(%struct.nvram_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvram_parser*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.nvram_parser* %0, %struct.nvram_parser** %3, align 8
  %8 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %9 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %12 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %4, align 1
  %16 = load i8, i8* %4, align 1
  %17 = call i32 @is_nvram_char(i8 signext %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %1
  %20 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %21 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %24 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %6, align 8
  %27 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %28 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %31 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  store i64 %38, i64* %7, align 8
  %39 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %40 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %41, %42
  %44 = add nsw i64 %43, 1
  %45 = load i64, i64* @BRCMF_FW_MAX_NVRAM_SIZE, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %19
  %48 = load i32, i32* @END, align 4
  store i32 %48, i32* %2, align 4
  br label %87

49:                                               ; preds = %19
  %50 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %51 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %54 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @memcpy(i8* %56, i8* %57, i64 %58)
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %62 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %66 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %69 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %73 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load i32, i32* @IDLE, align 4
  store i32 %76, i32* %2, align 4
  br label %87

77:                                               ; preds = %1
  %78 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %79 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %83 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* @VALUE, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %77, %49, %47
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @is_nvram_char(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
