; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_error_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_error_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@USDHI6_SD_STOP = common dso_local global i32 0, align 4
@USDHI6_SD_STOP_STP = common dso_local global i32 0, align 4
@USDHI6_SD_INFO2_RSP_TOUT = common dso_local global i32 0, align 4
@USDHI6_SD_INFO2_TOUT = common dso_local global i32 0, align 4
@USDHI6_SD_RSP54 = common dso_local global i32 0, align 4
@USDHI6_SD_ERR_STS2 = common dso_local global i32 0, align 4
@USDHI6_WAIT_FOR_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"T-out sts 0x%x, resp 0x%x, state %u, CMD%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@USDHI6_SD_ERR_STS1 = common dso_local global i32 0, align 4
@USDHI6_SD_ERR_STS1_CRC_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Err sts 0x%x, state %u, CMD%d\0A\00", align 1
@USDHI6_SD_INFO2_ILA = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usdhi6_host*)* @usdhi6_error_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_error_code(%struct.usdhi6_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usdhi6_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %3, align 8
  %7 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %8 = load i32, i32* @USDHI6_SD_STOP, align 4
  %9 = load i32, i32* @USDHI6_SD_STOP_STP, align 4
  %10 = call i32 @usdhi6_write(%struct.usdhi6_host* %7, i32 %8, i32 %9)
  %11 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %12 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @USDHI6_SD_INFO2_RSP_TOUT, align 4
  %15 = load i32, i32* @USDHI6_SD_INFO2_TOUT, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %1
  %20 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %21 = load i32, i32* @USDHI6_SD_RSP54, align 4
  %22 = call i64 @usdhi6_read(%struct.usdhi6_host* %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %24 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %29 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %36

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi i32 [ %34, %27 ], [ -1, %35 ]
  store i32 %37, i32* %6, align 4
  %38 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %39 = load i32, i32* @USDHI6_SD_ERR_STS2, align 4
  %40 = call i64 @usdhi6_read(%struct.usdhi6_host* %38, i32 %39)
  store i64 %40, i64* %4, align 8
  %41 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %42 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @USDHI6_WAIT_FOR_CMD, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %36
  %47 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %48 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mmc_dev(i32 %49)
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %54 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52, i32 %55, i32 %56)
  br label %70

58:                                               ; preds = %36
  %59 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %60 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mmc_dev(i32 %61)
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %66 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32, i8*, i64, i64, i32, ...) @dev_warn(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %46
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %119

73:                                               ; preds = %1
  %74 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %75 = load i32, i32* @USDHI6_SD_ERR_STS1, align 4
  %76 = call i64 @usdhi6_read(%struct.usdhi6_host* %74, i32 %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @USDHI6_SD_ERR_STS1_CRC_NO_ERROR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %73
  %81 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %82 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mmc_dev(i32 %83)
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %87 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %91 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = icmp ne %struct.TYPE_4__* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %80
  %95 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %96 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  br label %103

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102, %94
  %104 = phi i32 [ %101, %94 ], [ -1, %102 ]
  %105 = call i32 (i32, i8*, i64, i64, i32, ...) @dev_warn(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %89, i32 %104)
  br label %106

106:                                              ; preds = %103, %73
  %107 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %108 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @USDHI6_SD_INFO2_ILA, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @EILSEQ, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %119

116:                                              ; preds = %106
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %116, %113, %70
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @usdhi6_write(%struct.usdhi6_host*, i32, i32) #1

declare dso_local i64 @usdhi6_read(%struct.usdhi6_host*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
