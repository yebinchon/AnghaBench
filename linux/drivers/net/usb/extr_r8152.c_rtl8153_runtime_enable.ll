; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8153_runtime_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8153_runtime_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, i32)* @rtl8153_runtime_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8153_runtime_enable(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.r8152*, %struct.r8152** %3, align 8
  %9 = call i32 @r8153_u1u2en(%struct.r8152* %8, i32 0)
  %10 = load %struct.r8152*, %struct.r8152** %3, align 8
  %11 = call i32 @r8153_u2p3en(%struct.r8152* %10, i32 0)
  %12 = load %struct.r8152*, %struct.r8152** %3, align 8
  %13 = call i32 @r8153_mac_clk_spd(%struct.r8152* %12, i32 1)
  %14 = load %struct.r8152*, %struct.r8152** %3, align 8
  %15 = call i32 @rtl_runtime_suspend_enable(%struct.r8152* %14, i32 1)
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.r8152*, %struct.r8152** %3, align 8
  %18 = call i32 @rtl_runtime_suspend_enable(%struct.r8152* %17, i32 0)
  %19 = load %struct.r8152*, %struct.r8152** %3, align 8
  %20 = call i32 @r8153_mac_clk_spd(%struct.r8152* %19, i32 0)
  %21 = load %struct.r8152*, %struct.r8152** %3, align 8
  %22 = getelementptr inbounds %struct.r8152, %struct.r8152* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %26 [
    i32 131, label %24
    i32 130, label %24
    i32 129, label %25
    i32 128, label %25
  ]

24:                                               ; preds = %16, %16
  br label %29

25:                                               ; preds = %16, %16
  br label %26

26:                                               ; preds = %16, %25
  %27 = load %struct.r8152*, %struct.r8152** %3, align 8
  %28 = call i32 @r8153_u2p3en(%struct.r8152* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %24
  %30 = load %struct.r8152*, %struct.r8152** %3, align 8
  %31 = call i32 @r8153_u1u2en(%struct.r8152* %30, i32 1)
  br label %32

32:                                               ; preds = %29, %7
  ret void
}

declare dso_local i32 @r8153_u1u2en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153_u2p3en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153_mac_clk_spd(%struct.r8152*, i32) #1

declare dso_local i32 @rtl_runtime_suspend_enable(%struct.r8152*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
