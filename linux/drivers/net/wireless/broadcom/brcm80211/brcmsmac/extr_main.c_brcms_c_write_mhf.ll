; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_write_mhf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_write_mhf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32 }

@M_HOST_FLAGS1 = common dso_local global i32 0, align 4
@M_HOST_FLAGS2 = common dso_local global i32 0, align 4
@M_HOST_FLAGS3 = common dso_local global i32 0, align 4
@M_HOST_FLAGS4 = common dso_local global i32 0, align 4
@M_HOST_FLAGS5 = common dso_local global i32 0, align 4
@MHFMAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i32*)* @brcms_c_write_mhf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_write_mhf(%struct.brcms_hardware* %0, i32* %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [5 x i32], align 16
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* @M_HOST_FLAGS1, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @M_HOST_FLAGS2, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @M_HOST_FLAGS3, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @M_HOST_FLAGS4, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @M_HOST_FLAGS5, align 4
  store i32 %16, i32* %15, align 4
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %31, %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @MHFMAX, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %22, i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %17

34:                                               ; preds = %17
  ret void
}

declare dso_local i32 @brcms_b_write_shm(%struct.brcms_hardware*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
