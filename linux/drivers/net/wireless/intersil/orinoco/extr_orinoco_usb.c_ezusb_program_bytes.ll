; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_program_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_program_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.ezusb_priv* }
%struct.ezusb_priv = type { i32 }
%struct.request_context = type { i32 }

@EZUSB_RID_PROG_SET_ADDR = common dso_local global i32 0, align 4
@EZUSB_RID_ACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EZUSB_FRAME_CONTROL = common dso_local global i32 0, align 4
@EZUSB_RID_PROG_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i8*, i32, i32)* @ezusb_program_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_program_bytes(%struct.hermes* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hermes*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ezusb_priv*, align 8
  %11 = alloca %struct.request_context*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hermes*, %struct.hermes** %6, align 8
  %15 = getelementptr inbounds %struct.hermes, %struct.hermes* %14, i32 0, i32 0
  %16 = load %struct.ezusb_priv*, %struct.ezusb_priv** %15, align 8
  store %struct.ezusb_priv* %16, %struct.ezusb_priv** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call signext i8 @cpu_to_le32(i32 %17)
  store i8 %18, i8* %12, align 1
  %19 = load %struct.ezusb_priv*, %struct.ezusb_priv** %10, align 8
  %20 = load i32, i32* @EZUSB_RID_PROG_SET_ADDR, align 4
  %21 = load i32, i32* @EZUSB_RID_ACK, align 4
  %22 = call %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv* %19, i32 %20, i32 %21)
  store %struct.request_context* %22, %struct.request_context** %11, align 8
  %23 = load %struct.request_context*, %struct.request_context** %11, align 8
  %24 = icmp ne %struct.request_context* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %54

28:                                               ; preds = %4
  %29 = load %struct.ezusb_priv*, %struct.ezusb_priv** %10, align 8
  %30 = load %struct.request_context*, %struct.request_context** %11, align 8
  %31 = load i32, i32* @EZUSB_FRAME_CONTROL, align 4
  %32 = call i32 @ezusb_access_ltv(%struct.ezusb_priv* %29, %struct.request_context* %30, i32 1, i8* %12, i32 %31, i32* null, i32 0, i32* null)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %54

37:                                               ; preds = %28
  %38 = load %struct.ezusb_priv*, %struct.ezusb_priv** %10, align 8
  %39 = load i32, i32* @EZUSB_RID_PROG_BYTES, align 4
  %40 = load i32, i32* @EZUSB_RID_ACK, align 4
  %41 = call %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv* %38, i32 %39, i32 %40)
  store %struct.request_context* %41, %struct.request_context** %11, align 8
  %42 = load %struct.request_context*, %struct.request_context** %11, align 8
  %43 = icmp ne %struct.request_context* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %54

47:                                               ; preds = %37
  %48 = load %struct.ezusb_priv*, %struct.ezusb_priv** %10, align 8
  %49 = load %struct.request_context*, %struct.request_context** %11, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @EZUSB_FRAME_CONTROL, align 4
  %53 = call i32 @ezusb_access_ltv(%struct.ezusb_priv* %48, %struct.request_context* %49, i32 %50, i8* %51, i32 %52, i32* null, i32 0, i32* null)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %44, %35, %25
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local signext i8 @cpu_to_le32(i32) #1

declare dso_local %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv*, i32, i32) #1

declare dso_local i32 @ezusb_access_ltv(%struct.ezusb_priv*, %struct.request_context*, i32, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
