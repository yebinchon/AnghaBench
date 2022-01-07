; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_cmd_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_cmd_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_8dev_priv = type { i32 }
%struct.usb_8dev_cmd_msg = type { i64, i32, i32, i32, i32 }

@USB_8DEV_GET_SOFTW_HARDW_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_8dev_priv*, i32*)* @usb_8dev_cmd_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_8dev_cmd_version(%struct.usb_8dev_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_8dev_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_8dev_cmd_msg, align 8
  %7 = alloca %struct.usb_8dev_cmd_msg, align 8
  %8 = alloca i32, align 4
  store %struct.usb_8dev_priv* %0, %struct.usb_8dev_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = bitcast %struct.usb_8dev_cmd_msg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %7, i32 0, i32 3
  %11 = load i32, i32* @USB_8DEV_GET_SOFTW_HARDW_VER, align 4
  store i32 %11, i32* %10, align 8
  %12 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %13 = call i32 @usb_8dev_send_cmd(%struct.usb_8dev_priv* %12, %struct.usb_8dev_cmd_msg* %7, %struct.usb_8dev_cmd_msg* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @be32_to_cpup(i32* %21)
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @usb_8dev_send_cmd(%struct.usb_8dev_priv*, %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg*) #2

declare dso_local i32 @be32_to_cpup(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
