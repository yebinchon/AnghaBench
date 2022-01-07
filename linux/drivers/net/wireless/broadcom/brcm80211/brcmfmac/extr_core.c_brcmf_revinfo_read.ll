; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_revinfo_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_revinfo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.brcmf_rev_info }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BRCMU_DOTREV_LEN = common dso_local global i32 0, align 4
@BRCMU_BOARDREV_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vendorid: 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"deviceid: 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"radiorev: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"chip: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"chippkg: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"corerev: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"boardid: 0x%04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"boardvendor: 0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"boardrev: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"driverrev: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ucoderev: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"bus: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"phytype: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"phyrev: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"anarev: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"nvramrev: %08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"clmver: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @brcmf_revinfo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_revinfo_read(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_bus*, align 8
  %6 = alloca %struct.brcmf_rev_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.brcmf_bus* @dev_get_drvdata(i32 %12)
  store %struct.brcmf_bus* %13, %struct.brcmf_bus** %5, align 8
  %14 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.brcmf_rev_info* %17, %struct.brcmf_rev_info** %6, align 8
  %18 = load i32, i32* @BRCMU_DOTREV_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @BRCMU_BOARDREV_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %27 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %32 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %37 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @brcmu_dotrev_str(i32 %38, i8* %21)
  %40 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %43 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %48 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %53 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %58 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %63 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %68 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @brcmu_boardrev_str(i32 %69, i8* %24)
  %71 = call i32 @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %74 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @brcmu_dotrev_str(i32 %75, i8* %21)
  %77 = call i32 @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %80 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %81)
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %85 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %86)
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %90 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %91)
  %93 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %94 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %95 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %96)
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %100 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %101)
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %6, align 8
  %105 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %106)
  %108 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %109 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %110 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %113)
  %115 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %115)
  ret i32 0
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @brcmu_dotrev_str(i32, i8*) #1

declare dso_local i32 @brcmu_boardrev_str(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
