; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_dumpregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_dumpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i64, %struct.TYPE_3__*, %struct.mmc_request* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mmc_request = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"sbc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"data blocks %x blksz %x - err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"=========== REGISTER DUMP ===========\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"SDCMD  0x%08x\0A\00", align 1
@SDCMD = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"SDARG  0x%08x\0A\00", align 1
@SDARG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"SDTOUT 0x%08x\0A\00", align 1
@SDTOUT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"SDCDIV 0x%08x\0A\00", align 1
@SDCDIV = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"SDRSP0 0x%08x\0A\00", align 1
@SDRSP0 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"SDRSP1 0x%08x\0A\00", align 1
@SDRSP1 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"SDRSP2 0x%08x\0A\00", align 1
@SDRSP2 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"SDRSP3 0x%08x\0A\00", align 1
@SDRSP3 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"SDHSTS 0x%08x\0A\00", align 1
@SDHSTS = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"SDVDD  0x%08x\0A\00", align 1
@SDVDD = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"SDEDM  0x%08x\0A\00", align 1
@SDEDM = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"SDHCFG 0x%08x\0A\00", align 1
@SDHCFG = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"SDHBCT 0x%08x\0A\00", align 1
@SDHBCT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"SDHBLC 0x%08x\0A\00", align 1
@SDHBLC = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [45 x i8] c"===========================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_dumpregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_dumpregs(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  %5 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %6 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %5, i32 0, i32 2
  %7 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  store %struct.mmc_request* %7, %struct.mmc_request** %3, align 8
  %8 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %9 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %13 = icmp ne %struct.mmc_request* %12, null
  br i1 %13, label %14, label %53

14:                                               ; preds = %1
  %15 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %16 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bcm2835_dumpcmd(%struct.bcm2835_host* %15, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %21 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bcm2835_dumpcmd(%struct.bcm2835_host* %20, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %14
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %29, %14
  %48 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %49 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %50 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bcm2835_dumpcmd(%struct.bcm2835_host* %48, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %1
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %58 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SDCMD, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  %63 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %66 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SDARG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  %71 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %74 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SDTOUT, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl(i64 %77)
  %79 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %82 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SDCDIV, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl(i64 %85)
  %87 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %90 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SDRSP0, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @readl(i64 %93)
  %95 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %94)
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %98 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SDRSP1, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @readl(i64 %101)
  %103 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %102)
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %106 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SDRSP2, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @readl(i64 %109)
  %111 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %110)
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %114 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SDRSP3, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @readl(i64 %117)
  %119 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %118)
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %122 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SDHSTS, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @readl(i64 %125)
  %127 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %126)
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %130 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SDVDD, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @readl(i64 %133)
  %135 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %134)
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %138 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SDEDM, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @readl(i64 %141)
  %143 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %142)
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %146 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SDHCFG, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @readl(i64 %149)
  %151 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %150)
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %154 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SDHBCT, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @readl(i64 %157)
  %159 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %158)
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %162 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SDHBLC, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @readl(i64 %165)
  %167 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %166)
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %168, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bcm2835_dumpcmd(%struct.bcm2835_host*, i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
