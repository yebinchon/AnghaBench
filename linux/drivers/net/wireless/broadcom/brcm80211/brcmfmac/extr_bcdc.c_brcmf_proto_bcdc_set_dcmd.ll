; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_set_dcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_set_dcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.brcmf_bcdc = type { i32, %struct.brcmf_proto_bcdc_dcmd }
%struct.brcmf_proto_bcdc_dcmd = type { i32, i32 }

@BCDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Enter, cmd %d len %d\0A\00", align 1
@BCDC_DCMD_ID_MASK = common dso_local global i32 0, align 4
@BCDC_DCMD_ID_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: unexpected request id %d (expected %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BCDC_DCMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, i32, i32, i8*, i32, i32*)* @brcmf_proto_bcdc_set_dcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_proto_bcdc_set_dcmd(%struct.brcmf_pub* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.brcmf_bcdc*, align 8
  %14 = alloca %struct.brcmf_proto_bcdc_dcmd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %19 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.brcmf_bcdc*
  store %struct.brcmf_bcdc* %23, %struct.brcmf_bcdc** %13, align 8
  %24 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %25 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %24, i32 0, i32 1
  store %struct.brcmf_proto_bcdc_dcmd* %25, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %26 = load i32, i32* @BCDC, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @brcmf_dbg(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32*, i32** %12, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @brcmf_proto_bcdc_msg(%struct.brcmf_pub* %31, i32 %32, i32 %33, i8* %34, i32 %35, i32 1)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %6
  br label %90

40:                                               ; preds = %6
  %41 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %42 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %43 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @brcmf_proto_bcdc_cmplt(%struct.brcmf_pub* %41, i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %90

50:                                               ; preds = %40
  %51 = load %struct.brcmf_proto_bcdc_dcmd*, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %52 = getelementptr inbounds %struct.brcmf_proto_bcdc_dcmd, %struct.brcmf_proto_bcdc_dcmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @BCDC_DCMD_ID_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @BCDC_DCMD_ID_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %62 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %50
  %66 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %67 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @brcmf_get_ifp(%struct.brcmf_pub* %67, i32 %68)
  %70 = call i32 @brcmf_ifname(i32 %69)
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %73 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bphy_err(%struct.brcmf_pub* %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %15, align 4
  br label %90

78:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @BCDC_DCMD_ERROR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.brcmf_proto_bcdc_dcmd*, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %85 = getelementptr inbounds %struct.brcmf_proto_bcdc_dcmd, %struct.brcmf_proto_bcdc_dcmd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = load i32*, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %65, %49, %39
  %91 = load i32, i32* %15, align 4
  ret i32 %91
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @brcmf_proto_bcdc_msg(%struct.brcmf_pub*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @brcmf_proto_bcdc_cmplt(%struct.brcmf_pub*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32, i32, i32) #1

declare dso_local i32 @brcmf_ifname(i32) #1

declare dso_local i32 @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
