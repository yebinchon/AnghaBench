; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_rxctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_rxctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { i64, %struct.brcmf_sdio* }
%struct.brcmf_sdio = type { %struct.TYPE_4__, i32, i64, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_SDIOD_DATA = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"resumed on rxctl frame, got %d expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"resumed on timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cancelled\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"resumed for unknown reason?\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i64)* @brcmf_sdio_bus_rxctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_bus_rxctl(%struct.device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.brcmf_bus*, align 8
  %13 = alloca %struct.brcmf_sdio_dev*, align 8
  %14 = alloca %struct.brcmf_sdio*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %15)
  store %struct.brcmf_bus* %16, %struct.brcmf_bus** %12, align 8
  %17 = load %struct.brcmf_bus*, %struct.brcmf_bus** %12, align 8
  %18 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %19, align 8
  store %struct.brcmf_sdio_dev* %20, %struct.brcmf_sdio_dev** %13, align 8
  %21 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %13, align 8
  %22 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %21, i32 0, i32 1
  %23 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %22, align 8
  store %struct.brcmf_sdio* %23, %struct.brcmf_sdio** %14, align 8
  %24 = load i32, i32* @TRACE, align 4
  %25 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %13, align 8
  %27 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BRCMF_SDIOD_DATA, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %122

34:                                               ; preds = %3
  %35 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %36 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %37 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %36, i32 0, i32 2
  %38 = call i32 @brcmf_sdio_dcmd_resp_wait(%struct.brcmf_sdio* %35, i64* %37, i32* %10)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %40 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %43 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %47 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @min(i64 %49, i64 %50)
  %52 = call i32 @memcpy(i8* %45, i32* %48, i32 %51)
  %53 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %54 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %56 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %11, align 8
  %58 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %59 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %61 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %63 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock_bh(i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @vfree(i32* %65)
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %34
  %70 = load i32, i32* @CTL, align 4
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %72)
  br label %96

74:                                               ; preds = %34
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = call i32 @brcmf_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %80 = call i32 @brcmf_sdio_checkdied(%struct.brcmf_sdio* %79)
  br label %95

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* @CTL, align 4
  %86 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @ERESTARTSYS, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %122

89:                                               ; preds = %81
  %90 = load i32, i32* @CTL, align 4
  %91 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %93 = call i32 @brcmf_sdio_checkdied(%struct.brcmf_sdio* %92)
  br label %94

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %77
  br label %96

96:                                               ; preds = %95, %69
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %101 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %111

105:                                              ; preds = %96
  %106 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %14, align 8
  %107 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %99
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i64, i64* %9, align 8
  %116 = trunc i64 %115 to i32
  br label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @ETIMEDOUT, align 4
  %119 = sub nsw i32 0, %118
  br label %120

120:                                              ; preds = %117, %114
  %121 = phi i32 [ %116, %114 ], [ %119, %117 ]
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %84, %31
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_sdio_dcmd_resp_wait(%struct.brcmf_sdio*, i64*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @brcmf_sdio_checkdied(%struct.brcmf_sdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
