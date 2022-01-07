; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_nvram_handle_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_nvram_handle_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram_parser = type { i32, i8*, i64, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"RAW1\00", align 1
@COMMENT = common dso_local global i32 0, align 4
@VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"devpath\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pcie/\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"boardrev\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"warning: ln=%d:col=%d: '=' expected, skip invalid key entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvram_parser*)* @brcmf_nvram_handle_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_nvram_handle_key(%struct.nvram_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvram_parser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.nvram_parser* %0, %struct.nvram_parser** %3, align 8
  %6 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %7 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %10 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %13 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %5, align 1
  %17 = load i8, i8* %5, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 61
  br i1 %19, label %20, label %74

20:                                               ; preds = %1
  %21 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %22 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %25 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @COMMENT, align 4
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @VALUE, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %36 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %39 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %46 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %45, i32 0, i32 4
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %49 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %52 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %59 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %58, i32 0, i32 5
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %47
  %61 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %62 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %65 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = call i64 @strncmp(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %72 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %71, i32 0, i32 6
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %60
  br label %93

74:                                               ; preds = %1
  %75 = load i8, i8* %5, align 1
  %76 = call i32 @is_nvram_char(i8 signext %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8, i8* %5, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %92

82:                                               ; preds = %78, %74
  %83 = load i32, i32* @INFO, align 4
  %84 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %85 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %88 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @brcmf_dbg(i32 %83, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load i32, i32* @COMMENT, align 4
  store i32 %91, i32* %2, align 4
  br label %103

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %95 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.nvram_parser*, %struct.nvram_parser** %3, align 8
  %99 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %93, %82
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @is_nvram_char(i8 signext) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
