; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_fil_cmd_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_fil_cmd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i64, i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BRCMF_BUS_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"bus is down. we have nothing to do.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@BRCMF_DCMD_MAXLEN = common dso_local global i32 0, align 4
@FIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed: error=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Firmware error: %s (%d)\0A\00", align 1
@EBADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, i32, i8*, i32, i32)* @brcmf_fil_cmd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_fil_cmd_data(%struct.brcmf_if* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_if*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.brcmf_pub*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %16 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %15, i32 0, i32 2
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %16, align 8
  store %struct.brcmf_pub* %17, %struct.brcmf_pub** %12, align 8
  %18 = load %struct.brcmf_pub*, %struct.brcmf_pub** %12, align 8
  %19 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BRCMF_BUS_UP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.brcmf_pub*, %struct.brcmf_pub** %12, align 8
  %27 = call i32 @bphy_err(%struct.brcmf_pub* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %88

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @uint, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @BRCMF_DCMD_MAXLEN, align 4
  %37 = call i32 @min_t(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.brcmf_pub*, %struct.brcmf_pub** %12, align 8
  %43 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %44 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @brcmf_proto_set_dcmd(%struct.brcmf_pub* %42, i32 %45, i32 %46, i8* %47, i32 %48, i32* %14)
  store i32 %49, i32* %13, align 4
  br label %59

50:                                               ; preds = %38
  %51 = load %struct.brcmf_pub*, %struct.brcmf_pub** %12, align 8
  %52 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %53 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @brcmf_proto_query_dcmd(%struct.brcmf_pub* %51, i32 %54, i32 %55, i8* %56, i32 %57, i32* %14)
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %50, %41
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @FIL, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %79

66:                                               ; preds = %59
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* @FIL, align 4
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @brcmf_fil_get_errstr(i32 %72)
  %74 = load i32, i32* %14, align 4
  %75 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* @EBADE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %69, %66
  br label %79

79:                                               ; preds = %78, %62
  %80 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %81 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %6, align 4
  br label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %84, %25
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @brcmf_proto_set_dcmd(%struct.brcmf_pub*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @brcmf_proto_query_dcmd(%struct.brcmf_pub*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @brcmf_fil_get_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
