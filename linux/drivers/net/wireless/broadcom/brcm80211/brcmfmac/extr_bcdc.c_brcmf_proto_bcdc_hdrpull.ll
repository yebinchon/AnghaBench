; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_hdrpull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_hdrpull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { i32 }
%struct.sk_buff = type { i64, i32, i32, i64 }
%struct.brcmf_if = type { i32 }
%struct.brcmf_proto_bcdc_header = type { i32, i32, i32 }

@BCDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BCDC_HEADER_LEN = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"rx data too short (%d <= %d)\0A\00", align 1
@EBADE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no matching ifp found\0A\00", align 1
@BCDC_FLAG_VER_MASK = common dso_local global i32 0, align 4
@BCDC_FLAG_VER_SHIFT = common dso_local global i32 0, align 4
@BCDC_PROTO_VER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: non-BCDC packet received, flags 0x%x\0A\00", align 1
@BCDC_FLAG_SUM_GOOD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: BDC rcv, good checksum, flags 0x%x\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@BCDC_PRIORITY_MASK = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, i32, %struct.sk_buff*, %struct.brcmf_if**)* @brcmf_proto_bcdc_hdrpull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_proto_bcdc_hdrpull(%struct.brcmf_pub* %0, i32 %1, %struct.sk_buff* %2, %struct.brcmf_if** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.brcmf_if**, align 8
  %10 = alloca %struct.brcmf_proto_bcdc_header*, align 8
  %11 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.brcmf_if** %3, %struct.brcmf_if*** %9, align 8
  %12 = load i32, i32* @BCDC, align 4
  %13 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BCDC_HEADER_LEN, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* @INFO, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BCDC_HEADER_LEN, align 8
  %25 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i32, i32* @EBADE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %130

28:                                               ; preds = %4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @trace_brcmf_bcdchdr(i64 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.brcmf_proto_bcdc_header*
  store %struct.brcmf_proto_bcdc_header* %36, %struct.brcmf_proto_bcdc_header** %10, align 8
  %37 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %38 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %10, align 8
  %39 = call i32 @BCDC_GET_IF_IDX(%struct.brcmf_proto_bcdc_header* %38)
  %40 = call %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %37, i32 %39)
  store %struct.brcmf_if* %40, %struct.brcmf_if** %11, align 8
  %41 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %42 = icmp ne %struct.brcmf_if* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @INFO, align 4
  %45 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EBADE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %130

48:                                               ; preds = %28
  %49 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %10, align 8
  %50 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BCDC_FLAG_VER_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @BCDC_FLAG_VER_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* @BCDC_PROTO_VER, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %60 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %61 = call i64 @brcmf_ifname(%struct.brcmf_if* %60)
  %62 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %10, align 8
  %63 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bphy_err(%struct.brcmf_pub* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %61, i32 %64)
  %66 = load i32, i32* @EBADE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %130

68:                                               ; preds = %48
  %69 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %10, align 8
  %70 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BCDC_FLAG_SUM_GOOD, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load i32, i32* @BCDC, align 4
  %77 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %78 = call i64 @brcmf_ifname(%struct.brcmf_if* %77)
  %79 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %10, align 8
  %80 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %78, i32 %81)
  %83 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %75, %68
  %87 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %10, align 8
  %88 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BCDC_PRIORITY_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = load i64, i64* @BCDC_HEADER_LEN, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @skb_pull(%struct.sk_buff* %94, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %86
  %101 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %102 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %10, align 8
  %103 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 2
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = call i32 @brcmf_fws_hdrpull(%struct.brcmf_if* %101, i32 %105, %struct.sk_buff* %106)
  br label %115

108:                                              ; preds = %86
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %10, align 8
  %111 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 2
  %114 = call i32 @skb_pull(%struct.sk_buff* %109, i32 %113)
  br label %115

115:                                              ; preds = %108, %100
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @ENODATA, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %130

123:                                              ; preds = %115
  %124 = load %struct.brcmf_if**, %struct.brcmf_if*** %9, align 8
  %125 = icmp ne %struct.brcmf_if** %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %128 = load %struct.brcmf_if**, %struct.brcmf_if*** %9, align 8
  store %struct.brcmf_if* %127, %struct.brcmf_if** %128, align 8
  br label %129

129:                                              ; preds = %126, %123
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %120, %58, %43, %19
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @trace_brcmf_bcdchdr(i64) #1

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local i32 @BCDC_GET_IF_IDX(%struct.brcmf_proto_bcdc_header*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64, i32) #1

declare dso_local i64 @brcmf_ifname(%struct.brcmf_if*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @brcmf_fws_hdrpull(%struct.brcmf_if*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
