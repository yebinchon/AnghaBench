; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_nvram_handle_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_nvram_handle_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram_parser = type { i8*, i64, i64, i32, i32 }

@COMMENT = common dso_local global i32 0, align 4
@KEY = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"warning: ln=%d:col=%d: ignoring invalid character\0A\00", align 1
@IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvram_parser*)* @brcmf_nvram_handle_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_nvram_handle_idle(%struct.nvram_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvram_parser*, align 8
  %4 = alloca i8, align 1
  store %struct.nvram_parser* %0, %struct.nvram_parser** %3, align 8
  %5 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %6 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %9 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %4, align 1
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @COMMENT, align 4
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load i8, i8* %4, align 1
  %20 = call i64 @is_whitespace(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %4, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  br label %53

27:                                               ; preds = %22
  %28 = load i8, i8* %4, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @COMMENT, align 4
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %27
  %34 = load i8, i8* %4, align 1
  %35 = call i64 @is_nvram_char(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %39 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %42 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @KEY, align 4
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %33
  %45 = load i32, i32* @INFO, align 4
  %46 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %47 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %50 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @brcmf_dbg(i32 %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %44, %26
  %54 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %55 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %59 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load i32, i32* @IDLE, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %53, %37, %31, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @is_whitespace(i8 signext) #1

declare dso_local i64 @is_nvram_char(i8 signext) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
