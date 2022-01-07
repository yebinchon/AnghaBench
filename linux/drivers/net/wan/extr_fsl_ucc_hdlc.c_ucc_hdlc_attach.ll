; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_ucc_hdlc_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_ucc_hdlc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ucc_hdlc_private = type { i16, i16 }
%struct.TYPE_2__ = type { %struct.ucc_hdlc_private* }

@ENCODING_NRZ = common dso_local global i16 0, align 2
@ENCODING_NRZI = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@PARITY_NONE = common dso_local global i16 0, align 2
@PARITY_CRC32_PR1_CCITT = common dso_local global i16 0, align 2
@PARITY_CRC16_PR0_CCITT = common dso_local global i16 0, align 2
@PARITY_CRC16_PR1_CCITT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i16, i16)* @ucc_hdlc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_hdlc_attach(%struct.net_device* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.ucc_hdlc_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.TYPE_2__* @dev_to_hdlc(%struct.net_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %11, align 8
  store %struct.ucc_hdlc_private* %12, %struct.ucc_hdlc_private** %8, align 8
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @ENCODING_NRZ, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i16, i16* %6, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @ENCODING_NRZI, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %61

27:                                               ; preds = %18, %3
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @PARITY_NONE, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load i16, i16* %7, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @PARITY_CRC32_PR1_CCITT, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load i16, i16* %7, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @PARITY_CRC16_PR0_CCITT, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @PARITY_CRC16_PR1_CCITT, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %61

54:                                               ; preds = %45, %39, %33, %27
  %55 = load i16, i16* %6, align 2
  %56 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %8, align 8
  %57 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %56, i32 0, i32 0
  store i16 %55, i16* %57, align 2
  %58 = load i16, i16* %7, align 2
  %59 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %8, align 8
  %60 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %59, i32 0, i32 1
  store i16 %58, i16* %60, align 2
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %51, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_2__* @dev_to_hdlc(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
