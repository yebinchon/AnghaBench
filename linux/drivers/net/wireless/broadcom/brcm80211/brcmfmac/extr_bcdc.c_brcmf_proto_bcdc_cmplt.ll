; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_cmplt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_cmplt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.brcmf_bcdc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BCDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, i32, i32)* @brcmf_proto_bcdc_cmplt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_proto_bcdc_cmplt(%struct.brcmf_pub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcmf_bcdc*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.brcmf_bcdc*
  store %struct.brcmf_bcdc* %14, %struct.brcmf_bcdc** %8, align 8
  %15 = load i32, i32* @BCDC, align 4
  %16 = call i32 @brcmf_dbg(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %34, %3
  %22 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %23 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %8, align 8
  %26 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %25, i32 0, i32 0
  %27 = bitcast %struct.TYPE_4__* %26 to i8*
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @brcmf_bus_rxctl(i32 %24, i8* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %43

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %8, align 8
  %36 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = call i32 @BCDC_DCMD_ID(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %21, label %43

43:                                               ; preds = %34, %32
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_bus_rxctl(i32, i8*, i32) #1

declare dso_local i32 @BCDC_DCMD_ID(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
