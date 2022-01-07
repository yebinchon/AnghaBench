; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_resp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_resp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_command* }
%struct.mmc_command = type { i32*, i64 }

@MMC_RSP_NONE = common dso_local global i32 0, align 4
@USDHI6_SD_INFO1_RSP_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"CMD%d: response expected but is missing!\0A\00", align 1
@MMC_RSP_136 = common dso_local global i32 0, align 4
@USDHI6_SD_RSP10 = common dso_local global i64 0, align 8
@MMC_READ_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@USDHI6_SD_RSP54 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Response 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usdhi6_host*)* @usdhi6_resp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usdhi6_resp_read(%struct.usdhi6_host* %0) #0 {
  %2 = alloca %struct.usdhi6_host*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %2, align 8
  %7 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %8 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  store %struct.mmc_command* %11, %struct.mmc_command** %3, align 8
  %12 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %16 = call i32 @mmc_resp_type(%struct.mmc_command* %15)
  %17 = load i32, i32* @MMC_RSP_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %112

20:                                               ; preds = %1
  %21 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %22 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @USDHI6_SD_INFO1_RSP_END, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %29 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mmc_dev(i32 %30)
  %32 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %112

36:                                               ; preds = %20
  %37 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %38 = call i32 @mmc_resp_type(%struct.mmc_command* %37)
  %39 = load i32, i32* @MMC_RSP_136, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 24
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 3, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %46
  %58 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %59 = load i64, i64* @USDHI6_SD_RSP10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %60, 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = call i32 @usdhi6_read(%struct.usdhi6_host* %58, i64 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = shl i32 %65, 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 3, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %66
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %43

77:                                               ; preds = %43
  br label %103

78:                                               ; preds = %36
  %79 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MMC_READ_MULTIPLE_BLOCK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %86 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MMC_WRITE_MULTIPLE_BLOCK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84, %78
  %91 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %92 = load i64, i64* @USDHI6_SD_RSP54, align 8
  %93 = call i32 @usdhi6_read(%struct.usdhi6_host* %91, i64 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  br label %102

96:                                               ; preds = %84
  %97 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %98 = load i64, i64* @USDHI6_SD_RSP10, align 8
  %99 = call i32 @usdhi6_read(%struct.usdhi6_host* %97, i64 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %96, %90
  br label %103

103:                                              ; preds = %102, %77
  %104 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %105 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mmc_dev(i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %103, %27, %19
  ret void
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @usdhi6_read(%struct.usdhi6_host*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
