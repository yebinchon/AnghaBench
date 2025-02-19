; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.r8152 = type { i32, i32 }

@SELECTIVE_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @rtl8152_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.r8152* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.r8152* %6, %struct.r8152** %3, align 8
  %7 = load %struct.r8152*, %struct.r8152** %3, align 8
  %8 = getelementptr inbounds %struct.r8152, %struct.r8152* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* @SELECTIVE_SUSPEND, align 4
  %11 = load %struct.r8152*, %struct.r8152** %3, align 8
  %12 = getelementptr inbounds %struct.r8152, %struct.r8152* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.r8152*, %struct.r8152** %3, align 8
  %17 = call i32 @rtl8152_runtime_resume(%struct.r8152* %16)
  store i32 %17, i32* %4, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.r8152*, %struct.r8152** %3, align 8
  %20 = call i32 @rtl8152_system_resume(%struct.r8152* %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.r8152*, %struct.r8152** %3, align 8
  %23 = getelementptr inbounds %struct.r8152, %struct.r8152* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.r8152* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rtl8152_runtime_resume(%struct.r8152*) #1

declare dso_local i32 @rtl8152_system_resume(%struct.r8152*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
