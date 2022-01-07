; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_program_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_program_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.ezusb_priv* }
%struct.ezusb_priv = type { i32 }
%struct.request_context = type { i32 }

@EZUSB_RID_PROG_END = common dso_local global i32 0, align 4
@EZUSB_RID_ACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EZUSB_FRAME_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*)* @ezusb_program_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_program_end(%struct.hermes* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hermes*, align 8
  %4 = alloca %struct.ezusb_priv*, align 8
  %5 = alloca %struct.request_context*, align 8
  store %struct.hermes* %0, %struct.hermes** %3, align 8
  %6 = load %struct.hermes*, %struct.hermes** %3, align 8
  %7 = getelementptr inbounds %struct.hermes, %struct.hermes* %6, i32 0, i32 0
  %8 = load %struct.ezusb_priv*, %struct.ezusb_priv** %7, align 8
  store %struct.ezusb_priv* %8, %struct.ezusb_priv** %4, align 8
  %9 = load %struct.ezusb_priv*, %struct.ezusb_priv** %4, align 8
  %10 = load i32, i32* @EZUSB_RID_PROG_END, align 4
  %11 = load i32, i32* @EZUSB_RID_ACK, align 4
  %12 = call %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv* %9, i32 %10, i32 %11)
  store %struct.request_context* %12, %struct.request_context** %5, align 8
  %13 = load %struct.request_context*, %struct.request_context** %5, align 8
  %14 = icmp ne %struct.request_context* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.ezusb_priv*, %struct.ezusb_priv** %4, align 8
  %20 = load %struct.request_context*, %struct.request_context** %5, align 8
  %21 = load i32, i32* @EZUSB_FRAME_CONTROL, align 4
  %22 = call i32 @ezusb_access_ltv(%struct.ezusb_priv* %19, %struct.request_context* %20, i32 0, i32* null, i32 %21, i32* null, i32 0, i32* null)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv*, i32, i32) #1

declare dso_local i32 @ezusb_access_ltv(%struct.ezusb_priv*, %struct.request_context*, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
