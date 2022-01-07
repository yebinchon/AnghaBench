; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_config_set_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_config_set_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.msg = type { i32, i64, i32, i32 }

@PORT_CONFIG_WRITE = common dso_local global i32 0, align 4
@MAX_CHANNELS = common dso_local global i32 0, align 4
@TDMMAP_HDLC = common dso_local global i32 0, align 4
@HSS_CONFIG_TX_LUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"HSS_SET_TX_LUT\00", align 1
@HSS_CONFIG_RX_LUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"HSS_SET_RX_LUT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @hss_config_set_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hss_config_set_lut(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.msg, align 8
  %4 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %2, align 8
  %5 = call i32 @memset(%struct.msg* %3, i32 0, i32 24)
  %6 = load i32, i32* @PORT_CONFIG_WRITE, align 4
  %7 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = load %struct.port*, %struct.port** %2, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %47, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MAX_CHANNELS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 2
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @TDMMAP_HDLC, align 4
  %21 = shl i32 %20, 30
  %22 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %4, align 4
  %26 = srem i32 %25, 16
  %27 = icmp eq i32 %26, 15
  br i1 %27, label %28, label %46

28:                                               ; preds = %16
  %29 = load i64, i64* @HSS_CONFIG_TX_LUT, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sdiv i32 %30, 4
  %32 = and i32 %31, -4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load %struct.port*, %struct.port** %2, align 8
  %37 = call i32 @hss_npe_send(%struct.port* %36, %struct.msg* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @HSS_CONFIG_RX_LUT, align 8
  %39 = load i64, i64* @HSS_CONFIG_TX_LUT, align 8
  %40 = sub nsw i64 %38, %39
  %41 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %40
  store i64 %43, i64* %41, align 8
  %44 = load %struct.port*, %struct.port** %2, align 8
  %45 = call i32 @hss_npe_send(%struct.port* %44, %struct.msg* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %28, %16
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %12

50:                                               ; preds = %12
  ret void
}

declare dso_local i32 @memset(%struct.msg*, i32, i32) #1

declare dso_local i32 @hss_npe_send(%struct.port*, %struct.msg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
