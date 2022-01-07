; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i32, %struct.brcms_hardware* }
%struct.brcms_hardware = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"DEVICEREMOVED detected in the ISR code path\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_isr(%struct.brcms_c_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.brcms_hardware*, align 8
  %5 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 2
  %8 = load %struct.brcms_hardware*, %struct.brcms_hardware** %7, align 8
  store %struct.brcms_hardware* %8, %struct.brcms_hardware** %4, align 8
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %10 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %15 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %37

19:                                               ; preds = %13
  %20 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %21 = call i32 @wlc_intstatus(%struct.brcms_c_info* %20, i32 1)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %26 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @brcms_err(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %36 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %32, %24, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @wlc_intstatus(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
