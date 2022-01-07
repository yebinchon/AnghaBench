; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i64, i32, i32 }
%struct.pxamci_host = type { i64, i64, i32, i32, i32 }

@CLKRT_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"unable to set power\0A\00", align 1
@MMC_POWER_ON = common dso_local global i32 0, align 4
@CMDAT_INIT = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@CMDAT_SD_4DAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"PXAMCI: clkrt = %x cmdat = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @pxamci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxamci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.pxamci_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.pxamci_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.pxamci_host* %10, %struct.pxamci_host** %5, align 8
  %11 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %2
  %16 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %17 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %19, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %27 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CLKRT_OFF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %33 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_prepare_enable(i32 %34)
  br label %36

36:                                               ; preds = %31, %15
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 26000000
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %43 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %42, i32 0, i32 1
  store i64 7, i64* %43, align 8
  br label %68

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = udiv i64 %49, %51
  %53 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %48
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @fls(i32 %62)
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %67 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %41
  br label %86

69:                                               ; preds = %2
  %70 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %71 = call i32 @pxamci_stop_clock(%struct.pxamci_host* %70)
  %72 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %73 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CLKRT_OFF, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load i64, i64* @CLKRT_OFF, align 8
  %79 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %80 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %82 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @clk_disable_unprepare(i32 %83)
  br label %85

85:                                               ; preds = %77, %69
  br label %86

86:                                               ; preds = %85, %68
  %87 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %88 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %86
  %95 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %99 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %101 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %102 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %105 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pxamci_set_power(%struct.pxamci_host* %100, i32 %103, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %94
  %111 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %112 = call i32 @mmc_dev(%struct.mmc_host* %111)
  %113 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %156

114:                                              ; preds = %94
  %115 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %116 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MMC_POWER_ON, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i32, i32* @CMDAT_INIT, align 4
  %122 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %123 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %120, %114
  br label %127

127:                                              ; preds = %126, %86
  %128 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %129 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32, i32* @CMDAT_SD_4DAT, align 4
  %135 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %136 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %146

139:                                              ; preds = %127
  %140 = load i32, i32* @CMDAT_SD_4DAT, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %143 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %139, %133
  %147 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %148 = call i32 @mmc_dev(%struct.mmc_host* %147)
  %149 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %150 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %153 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_dbg(i32 %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %151, i32 %154)
  br label %156

156:                                              ; preds = %146, %110
  ret void
}

declare dso_local %struct.pxamci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @pxamci_stop_clock(%struct.pxamci_host*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pxamci_set_power(%struct.pxamci_host*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
