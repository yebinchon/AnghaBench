; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.brcmf_bcdc = type { i32, %struct.brcmf_proto_bcdc_dcmd, i32 }
%struct.brcmf_proto_bcdc_dcmd = type { i8*, i8*, i8* }

@BCDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BCDC_DCMD_ID_SHIFT = common dso_local global i32 0, align 4
@BCDC_DCMD_SET = common dso_local global i32 0, align 4
@BCDC_DCMD_IF_MASK = common dso_local global i32 0, align 4
@BCDC_DCMD_IF_SHIFT = common dso_local global i32 0, align 4
@BRCMF_TX_IOCTL_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, i32, i32, i8*, i32, i32)* @brcmf_proto_bcdc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_proto_bcdc_msg(%struct.brcmf_pub* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.brcmf_bcdc*, align 8
  %14 = alloca %struct.brcmf_proto_bcdc_dcmd*, align 8
  %15 = alloca i32, align 4
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %17 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.brcmf_bcdc*
  store %struct.brcmf_bcdc* %21, %struct.brcmf_bcdc** %13, align 8
  %22 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %23 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %22, i32 0, i32 1
  store %struct.brcmf_proto_bcdc_dcmd* %23, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %24 = load i32, i32* @BCDC, align 4
  %25 = call i32 @brcmf_dbg(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.brcmf_proto_bcdc_dcmd*, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %27 = call i32 @memset(%struct.brcmf_proto_bcdc_dcmd* %26, i32 0, i32 24)
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.brcmf_proto_bcdc_dcmd*, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %31 = getelementptr inbounds %struct.brcmf_proto_bcdc_dcmd, %struct.brcmf_proto_bcdc_dcmd* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.brcmf_proto_bcdc_dcmd*, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %35 = getelementptr inbounds %struct.brcmf_proto_bcdc_dcmd, %struct.brcmf_proto_bcdc_dcmd* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %37 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @BCDC_DCMD_ID_SHIFT, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %6
  %45 = load i32, i32* @BCDC_DCMD_SET, align 4
  %46 = load i32, i32* %15, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %44, %6
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @BCDC_DCMD_IF_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @BCDC_DCMD_IF_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.brcmf_proto_bcdc_dcmd*, %struct.brcmf_proto_bcdc_dcmd** %14, align 8
  %60 = getelementptr inbounds %struct.brcmf_proto_bcdc_dcmd, %struct.brcmf_proto_bcdc_dcmd* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %48
  %64 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %65 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @memcpy(i32 %66, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %48
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, 24
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @BRCMF_TX_IOCTL_MAX_MSG_SIZE, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @BRCMF_TX_IOCTL_MAX_MSG_SIZE, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %78, %70
  %81 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %82 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %13, align 8
  %85 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %84, i32 0, i32 1
  %86 = bitcast %struct.brcmf_proto_bcdc_dcmd* %85 to i8*
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @brcmf_bus_txctl(i32 %83, i8* %86, i32 %87)
  ret i32 %88
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @memset(%struct.brcmf_proto_bcdc_dcmd*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @brcmf_bus_txctl(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
