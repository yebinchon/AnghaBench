; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_set_wmm_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_set_wmm_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_wmm_params = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wmi_wmm_params_arg = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_set_wmm_param(%struct.wmi_wmm_params* %0, %struct.wmi_wmm_params_arg* %1) #0 {
  %3 = alloca %struct.wmi_wmm_params*, align 8
  %4 = alloca %struct.wmi_wmm_params_arg*, align 8
  store %struct.wmi_wmm_params* %0, %struct.wmi_wmm_params** %3, align 8
  store %struct.wmi_wmm_params_arg* %1, %struct.wmi_wmm_params_arg** %4, align 8
  %5 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %4, align 8
  %6 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @__cpu_to_le32(i32 %7)
  %9 = load %struct.wmi_wmm_params*, %struct.wmi_wmm_params** %3, align 8
  %10 = getelementptr inbounds %struct.wmi_wmm_params, %struct.wmi_wmm_params* %9, i32 0, i32 5
  store i8* %8, i8** %10, align 8
  %11 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %4, align 8
  %12 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @__cpu_to_le32(i32 %13)
  %15 = load %struct.wmi_wmm_params*, %struct.wmi_wmm_params** %3, align 8
  %16 = getelementptr inbounds %struct.wmi_wmm_params, %struct.wmi_wmm_params* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %4, align 8
  %18 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @__cpu_to_le32(i32 %19)
  %21 = load %struct.wmi_wmm_params*, %struct.wmi_wmm_params** %3, align 8
  %22 = getelementptr inbounds %struct.wmi_wmm_params, %struct.wmi_wmm_params* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %4, align 8
  %24 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @__cpu_to_le32(i32 %25)
  %27 = load %struct.wmi_wmm_params*, %struct.wmi_wmm_params** %3, align 8
  %28 = getelementptr inbounds %struct.wmi_wmm_params, %struct.wmi_wmm_params* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %4, align 8
  %30 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @__cpu_to_le32(i32 %31)
  %33 = load %struct.wmi_wmm_params*, %struct.wmi_wmm_params** %3, align 8
  %34 = getelementptr inbounds %struct.wmi_wmm_params, %struct.wmi_wmm_params* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %4, align 8
  %36 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @__cpu_to_le32(i32 %37)
  %39 = load %struct.wmi_wmm_params*, %struct.wmi_wmm_params** %3, align 8
  %40 = getelementptr inbounds %struct.wmi_wmm_params, %struct.wmi_wmm_params* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  ret void
}

declare dso_local i8* @__cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
