; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_addba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_addba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i64, i32, i64, i64 }
%struct.wmi_ring_ba_en_cmd = type { i32, i32, i32, i32 }

@WMI_FW_CAPABILITY_AMSDU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"addba: (ring %d size %d timeout %d amsdu %d)\0A\00", align 1
@WMI_RING_BA_EN_CMDID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_addba(%struct.wil6210_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wmi_ring_ba_en_cmd, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %5
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %19 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i32, i32* @WMI_FW_CAPABILITY_AMSDU, align 4
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @test_bit(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %31 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %22, %17, %5
  %35 = phi i1 [ false, %22 ], [ false, %17 ], [ false, %5 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = getelementptr inbounds %struct.wmi_ring_ba_en_cmd, %struct.wmi_ring_ba_en_cmd* %12, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.wmi_ring_ba_en_cmd, %struct.wmi_ring_ba_en_cmd* %12, i32 0, i32 1
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.wmi_ring_ba_en_cmd, %struct.wmi_ring_ba_en_cmd* %12, i32 0, i32 2
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.wmi_ring_ba_en_cmd, %struct.wmi_ring_ba_en_cmd* %12, i32 0, i32 3
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @cpu_to_le16(i32 %44)
  store i32 %45, i32* %43, align 4
  %46 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @wil_dbg_wmi(%struct.wil6210_priv* %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %53 = load i32, i32* @WMI_RING_BA_EN_CMDID, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @wmi_send(%struct.wil6210_priv* %52, i32 %53, i32 %54, %struct.wmi_ring_ba_en_cmd* %12, i32 16)
  ret i32 %55
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i32, %struct.wmi_ring_ba_en_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
