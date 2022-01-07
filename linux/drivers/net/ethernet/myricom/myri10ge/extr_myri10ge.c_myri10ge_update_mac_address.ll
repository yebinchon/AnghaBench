; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_update_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_update_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32 }
%struct.myri10ge_cmd = type { i32, i32 }

@MXGEFW_SET_MAC_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*, i32*)* @myri10ge_update_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_update_mac_address(%struct.myri10ge_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.myri10ge_cmd, align 4
  %6 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 24
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 16
  %15 = or i32 %10, %14
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %15, %19
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  %25 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %36 = load i32, i32* @MXGEFW_SET_MAC_ADDRESS, align 4
  %37 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %35, i32 %36, %struct.myri10ge_cmd* %5, i32 0)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @myri10ge_send_cmd(%struct.myri10ge_priv*, i32, %struct.myri10ge_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
