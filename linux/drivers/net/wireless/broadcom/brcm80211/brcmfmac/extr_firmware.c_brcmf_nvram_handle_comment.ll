; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_nvram_handle_comment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_nvram_handle_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram_parser = type { i64, i32, i32, i32* }

@END = common dso_local global i32 0, align 4
@IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvram_parser*)* @brcmf_nvram_handle_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_nvram_handle_comment(%struct.nvram_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvram_parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.nvram_parser* %0, %struct.nvram_parser** %3, align 8
  %6 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %7 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %10 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 10)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 0)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @END, align 4
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %28 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %32 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = add nsw i64 %37, 1
  %39 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %40 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* @IDLE, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %26, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
