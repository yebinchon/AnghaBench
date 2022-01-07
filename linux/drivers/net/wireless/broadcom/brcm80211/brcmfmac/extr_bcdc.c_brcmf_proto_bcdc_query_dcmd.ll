; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_query_dcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_query_dcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.brcmf_bcdc = type { i32, i32*, %struct.brcmf_proto_bcdc_dcmd }
%struct.brcmf_proto_bcdc_dcmd = type { i32, i32 }

@BCDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Enter, cmd %d len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"brcmf_proto_bcdc_msg failed w/status %d\0A\00", align 1
@BCDC_DCMD_ID_MASK = common dso_local global i32 0, align 4
@BCDC_DCMD_ID_SHIFT = common dso_local global i32 0, align 4
@RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: unexpected request id %d (expected %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BCDC_DCMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, i32, i32, i8*, i32, i32*)* @brcmf_proto_bcdc_query_dcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_proto_bcdc_query_dcmd(%struct.brcmf_pub* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.brcmf_bcdc*, align 8
  %14 = alloca %struct.brcmf_proto_bcdc_dcmd*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %21 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.brcmf_bcdc*
  store %struct.brcmf_bcdc* %25, %struct.brcmf_bcdc** %13, align 8
  %26 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %27 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %26, i32 0, i32 2
  store %struct.brcmf_proto_bcdc_dcmd* %27, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* @BCDC, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @brcmf_dbg(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32*, i32** %12, align 8
  store i32 0, i32* %32, align 4
  %33 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @brcmf_proto_bcdc_msg(%struct.brcmf_pub* %33, i32 %34, i32 %35, i8* %36, i32 %37, i32 0)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %6
  %42 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %43 = load i32, i32* %16, align 4
  %44 = call i32 (%struct.brcmf_pub*, i8*, i32, ...) @bphy_err(%struct.brcmf_pub* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %127

45:                                               ; preds = %6
  br label %46

46:                                               ; preds = %76, %45
  %47 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %48 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %49 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @brcmf_proto_bcdc_cmplt(%struct.brcmf_pub* %47, i32 %50, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %127

56:                                               ; preds = %46
  %57 = load %struct.brcmf_proto_bcdc_dcmd*, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %58 = getelementptr inbounds %struct.brcmf_proto_bcdc_dcmd, %struct.brcmf_proto_bcdc_dcmd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* @BCDC_DCMD_ID_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @BCDC_DCMD_ID_SHIFT, align 4
  %65 = ashr i32 %63, %64
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %68 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* @RETRIES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %46

77:                                               ; preds = %71, %56
  %78 = load i32, i32* %18, align 4
  %79 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %80 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %85 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @brcmf_get_ifp(%struct.brcmf_pub* %85, i32 %86)
  %88 = call i32 @brcmf_ifname(i32 %87)
  %89 = load i32, i32* %18, align 4
  %90 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %91 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (%struct.brcmf_pub*, i8*, i32, ...) @bphy_err(%struct.brcmf_pub* %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89, i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %16, align 4
  br label %127

96:                                               ; preds = %77
  %97 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %98 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = bitcast i32* %100 to i8*
  store i8* %101, i8** %15, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %96
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @memcpy(i8* %111, i8* %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %96
  store i32 0, i32* %16, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* @BCDC_DCMD_ERROR, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.brcmf_proto_bcdc_dcmd*, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %122 = getelementptr inbounds %struct.brcmf_proto_bcdc_dcmd, %struct.brcmf_proto_bcdc_dcmd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = load i32*, i32** %12, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %115
  br label %127

127:                                              ; preds = %126, %83, %55, %41
  %128 = load i32, i32* %16, align 4
  ret i32 %128
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @brcmf_proto_bcdc_msg(%struct.brcmf_pub*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32, ...) #1

declare dso_local i32 @brcmf_proto_bcdc_cmplt(%struct.brcmf_pub*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brcmf_ifname(i32) #1

declare dso_local i32 @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
