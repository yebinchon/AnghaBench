; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_docmd_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_docmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.ezusb_priv* }
%struct.ezusb_priv = type { i32 }
%struct.hermes_response = type { i32 }
%struct.request_context = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"0x%04X, parm0 0x%04X\0A\00", align 1
@EZUSB_RID_DOCMD = common dso_local global i32 0, align 4
@EZUSB_RID_ACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EZUSB_FRAME_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32, i32, %struct.hermes_response*)* @ezusb_docmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_docmd_wait(%struct.hermes* %0, i32 %1, i32 %2, %struct.hermes_response* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hermes*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hermes_response*, align 8
  %10 = alloca %struct.ezusb_priv*, align 8
  %11 = alloca %struct.request_context*, align 8
  %12 = alloca [4 x i32], align 16
  store %struct.hermes* %0, %struct.hermes** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hermes_response* %3, %struct.hermes_response** %9, align 8
  %13 = load %struct.hermes*, %struct.hermes** %6, align 8
  %14 = getelementptr inbounds %struct.hermes, %struct.hermes* %13, i32 0, i32 0
  %15 = load %struct.ezusb_priv*, %struct.ezusb_priv** %14, align 8
  store %struct.ezusb_priv* %15, %struct.ezusb_priv** %10, align 8
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds i32, i32* %16, i64 1
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.ezusb_priv*, %struct.ezusb_priv** %10, align 8
  %25 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @netdev_dbg(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.ezusb_priv*, %struct.ezusb_priv** %10, align 8
  %31 = load i32, i32* @EZUSB_RID_DOCMD, align 4
  %32 = load i32, i32* @EZUSB_RID_ACK, align 4
  %33 = call %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv* %30, i32 %31, i32 %32)
  store %struct.request_context* %33, %struct.request_context** %11, align 8
  %34 = load %struct.request_context*, %struct.request_context** %11, align 8
  %35 = icmp ne %struct.request_context* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %4
  %40 = load %struct.ezusb_priv*, %struct.ezusb_priv** %10, align 8
  %41 = load %struct.request_context*, %struct.request_context** %11, align 8
  %42 = bitcast [4 x i32]* %12 to i32**
  %43 = load i32, i32* @EZUSB_FRAME_CONTROL, align 4
  %44 = call i32 @ezusb_access_ltv(%struct.ezusb_priv* %40, %struct.request_context* %41, i32 16, i32** %42, i32 %43, i32* null, i32 0, i32* null)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv*, i32, i32) #1

declare dso_local i32 @ezusb_access_ltv(%struct.ezusb_priv*, %struct.request_context*, i32, i32**, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
