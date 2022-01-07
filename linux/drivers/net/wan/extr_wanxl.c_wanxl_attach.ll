; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port = type { i32 }
%struct.TYPE_2__ = type { i16, i16 }

@ENCODING_NRZ = common dso_local global i16 0, align 2
@ENCODING_NRZI = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@PARITY_NONE = common dso_local global i16 0, align 2
@PARITY_CRC32_PR1_CCITT = common dso_local global i16 0, align 2
@PARITY_CRC16_PR1_CCITT = common dso_local global i16 0, align 2
@PARITY_CRC32_PR0_CCITT = common dso_local global i16 0, align 2
@PARITY_CRC16_PR0_CCITT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i16, i16)* @wanxl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wanxl_attach(%struct.net_device* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.port*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.port* @dev_to_port(%struct.net_device* %9)
  store %struct.port* %10, %struct.port** %8, align 8
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* @ENCODING_NRZ, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @ENCODING_NRZI, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %67

25:                                               ; preds = %16, %3
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @PARITY_NONE, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @PARITY_CRC32_PR1_CCITT, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @PARITY_CRC16_PR1_CCITT, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @PARITY_CRC32_PR0_CCITT, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i16, i16* %7, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @PARITY_CRC16_PR0_CCITT, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %67

58:                                               ; preds = %49, %43, %37, %31, %25
  %59 = load i16, i16* %6, align 2
  %60 = load %struct.port*, %struct.port** %8, align 8
  %61 = call %struct.TYPE_2__* @get_status(%struct.port* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i16 %59, i16* %62, align 2
  %63 = load i16, i16* %7, align 2
  %64 = load %struct.port*, %struct.port** %8, align 8
  %65 = call %struct.TYPE_2__* @get_status(%struct.port* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i16 %63, i16* %66, align 2
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %58, %55, %22
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.port* @dev_to_port(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @get_status(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
