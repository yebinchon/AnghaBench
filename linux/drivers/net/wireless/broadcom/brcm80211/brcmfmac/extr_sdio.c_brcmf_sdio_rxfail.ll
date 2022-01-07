; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_rxfail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_rxfail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.brcmf_sdio_dev*, %struct.brcmf_core* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.brcmf_sdio_dev = type { i32 }
%struct.brcmf_core = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"%sterminate frame%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"abort command, \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c", send NAK\00", align 1
@SBSDIO_FUNC1_FRAMECTRL = common dso_local global i32 0, align 4
@SFC_RF_TERM = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_RFRAMEBCHI = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_RFRAMEBCLO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"count growing: last 0x%04x now 0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"count never zeroed: last 0x%04x\0A\00", align 1
@SDIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"flush took %d iterations\0A\00", align 1
@tosbmailbox = common dso_local global i32 0, align 4
@SMB_NAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_sdio*, i32, i32)* @brcmf_sdio_rxfail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_rxfail(%struct.brcmf_sdio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_sdio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_sdio_dev*, align 8
  %8 = alloca %struct.brcmf_core*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %15 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %14, i32 0, i32 3
  %16 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %15, align 8
  store %struct.brcmf_sdio_dev* %16, %struct.brcmf_sdio_dev** %7, align 8
  %17 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %17, i32 0, i32 4
  %19 = load %struct.brcmf_core*, %struct.brcmf_core** %18, align 8
  store %struct.brcmf_core* %19, %struct.brcmf_core** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %33 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %32, i32 0, i32 3
  %34 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %33, align 8
  %35 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %36 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %35, i32 0, i32 3
  %37 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %36, align 8
  %38 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @brcmf_sdiod_abort(%struct.brcmf_sdio_dev* %34, i32 %39)
  br label %41

41:                                               ; preds = %31, %3
  %42 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %43 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %42, i32 0, i32 3
  %44 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %43, align 8
  %45 = load i32, i32* @SBSDIO_FUNC1_FRAMECTRL, align 4
  %46 = load i32, i32* @SFC_RF_TERM, align 4
  %47 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %44, i32 %45, i32 %46, i32* %13)
  %48 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %49 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  store i32 65535, i32* %9, align 4
  store i32 65535, i32* %10, align 4
  br label %53

53:                                               ; preds = %100, %41
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %53
  %57 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %58 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %57, i32 0, i32 3
  %59 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %58, align 8
  %60 = load i32, i32* @SBSDIO_FUNC1_RFRAMEBCHI, align 4
  %61 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %59, i32 %60, i32* %13)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %63 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %62, i32 0, i32 3
  %64 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %63, align 8
  %65 = load i32, i32* @SBSDIO_FUNC1_RFRAMEBCLO, align 4
  %66 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %64, i32 %65, i32* %13)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %68 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 2
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %56
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %103

78:                                               ; preds = %74, %56
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = ashr i32 %80, 8
  %82 = icmp sgt i32 %79, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 255
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %88, %83, %78
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %9, align 4
  br label %53

103:                                              ; preds = %77, %53
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %114

109:                                              ; preds = %103
  %110 = load i32, i32* @SDIO, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 65535, %111
  %113 = call i32 @brcmf_dbg(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %114
  %118 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %119 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %124 = load %struct.brcmf_core*, %struct.brcmf_core** %8, align 8
  %125 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @tosbmailbox, align 4
  %128 = call i64 @SD_REG(i32 %127)
  %129 = add nsw i64 %126, %128
  %130 = load i32, i32* @SMB_NAK, align 4
  %131 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %123, i64 %129, i32 %130, i32* %13)
  %132 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %133 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %117
  %140 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %141 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %117
  br label %143

143:                                              ; preds = %142, %114
  %144 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %145 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  ret void
}

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @brcmf_sdiod_abort(%struct.brcmf_sdio_dev*, i32) #1

declare dso_local i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev*, i64, i32, i32*) #1

declare dso_local i64 @SD_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
