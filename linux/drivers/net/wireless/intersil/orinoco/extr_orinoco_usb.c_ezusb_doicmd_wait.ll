; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_doicmd_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_doicmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.ezusb_priv* }
%struct.ezusb_priv = type { i32 }
%struct.hermes_response = type { i32 }
%struct.request_context = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"0x%04X, parm0 0x%04X, parm1 0x%04X, parm2 0x%04X\0A\00", align 1
@EZUSB_RID_DOCMD = common dso_local global i32 0, align 4
@EZUSB_RID_ACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EZUSB_FRAME_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32, i32, i32, i32, %struct.hermes_response*)* @ezusb_doicmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_doicmd_wait(%struct.hermes* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.hermes_response* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hermes*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hermes_response*, align 8
  %14 = alloca %struct.ezusb_priv*, align 8
  %15 = alloca %struct.request_context*, align 8
  %16 = alloca [4 x i32], align 16
  store %struct.hermes* %0, %struct.hermes** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.hermes_response* %5, %struct.hermes_response** %13, align 8
  %17 = load %struct.hermes*, %struct.hermes** %8, align 8
  %18 = getelementptr inbounds %struct.hermes, %struct.hermes* %17, i32 0, i32 0
  %19 = load %struct.ezusb_priv*, %struct.ezusb_priv** %18, align 8
  store %struct.ezusb_priv* %19, %struct.ezusb_priv** %14, align 8
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds i32, i32* %20, i64 1
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds i32, i32* %23, i64 1
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @cpu_to_le16(i32 %27)
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds i32, i32* %26, i64 1
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @cpu_to_le16(i32 %30)
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ezusb_priv*, %struct.ezusb_priv** %14, align 8
  %33 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @netdev_dbg(i32 %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.ezusb_priv*, %struct.ezusb_priv** %14, align 8
  %41 = load i32, i32* @EZUSB_RID_DOCMD, align 4
  %42 = load i32, i32* @EZUSB_RID_ACK, align 4
  %43 = call %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv* %40, i32 %41, i32 %42)
  store %struct.request_context* %43, %struct.request_context** %15, align 8
  %44 = load %struct.request_context*, %struct.request_context** %15, align 8
  %45 = icmp ne %struct.request_context* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %6
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %55

49:                                               ; preds = %6
  %50 = load %struct.ezusb_priv*, %struct.ezusb_priv** %14, align 8
  %51 = load %struct.request_context*, %struct.request_context** %15, align 8
  %52 = bitcast [4 x i32]* %16 to i32**
  %53 = load i32, i32* @EZUSB_FRAME_CONTROL, align 4
  %54 = call i32 @ezusb_access_ltv(%struct.ezusb_priv* %50, %struct.request_context* %51, i32 16, i32** %52, i32 %53, i32* null, i32 0, i32* null)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv*, i32, i32) #1

declare dso_local i32 @ezusb_access_ltv(%struct.ezusb_priv*, %struct.request_context*, i32, i32**, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
