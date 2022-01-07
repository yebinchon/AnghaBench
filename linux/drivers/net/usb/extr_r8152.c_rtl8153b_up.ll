; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8153b_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8153b_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_RX_BUF_TH = common dso_local global i32 0, align 4
@RX_THR_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @rtl8153b_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8153b_up(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %3 = load i32, i32* @RTL8152_UNPLUG, align 4
  %4 = load %struct.r8152*, %struct.r8152** %2, align 8
  %5 = getelementptr inbounds %struct.r8152, %struct.r8152* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.r8152*, %struct.r8152** %2, align 8
  %11 = call i32 @r8153b_u1u2en(%struct.r8152* %10, i32 0)
  %12 = load %struct.r8152*, %struct.r8152** %2, align 8
  %13 = call i32 @r8153_u2p3en(%struct.r8152* %12, i32 0)
  %14 = load %struct.r8152*, %struct.r8152** %2, align 8
  %15 = call i32 @r8153_aldps_en(%struct.r8152* %14, i32 0)
  %16 = load %struct.r8152*, %struct.r8152** %2, align 8
  %17 = call i32 @r8153_first_init(%struct.r8152* %16)
  %18 = load %struct.r8152*, %struct.r8152** %2, align 8
  %19 = load i32, i32* @MCU_TYPE_USB, align 4
  %20 = load i32, i32* @USB_RX_BUF_TH, align 4
  %21 = load i32, i32* @RX_THR_B, align 4
  %22 = call i32 @ocp_write_dword(%struct.r8152* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.r8152*, %struct.r8152** %2, align 8
  %24 = call i32 @r8153_aldps_en(%struct.r8152* %23, i32 1)
  %25 = load %struct.r8152*, %struct.r8152** %2, align 8
  %26 = call i32 @r8153_u2p3en(%struct.r8152* %25, i32 1)
  %27 = load %struct.r8152*, %struct.r8152** %2, align 8
  %28 = call i32 @r8153b_u1u2en(%struct.r8152* %27, i32 1)
  br label %29

29:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r8153b_u1u2en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153_u2p3en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153_aldps_en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153_first_init(%struct.r8152*) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
