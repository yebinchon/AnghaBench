; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_pull_pdev_stats_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_pull_pdev_stats_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_pdev_stats_rx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_fw_stats_pdev = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_pull_pdev_stats_rx(%struct.wmi_pdev_stats_rx* %0, %struct.ath10k_fw_stats_pdev* %1) #0 {
  %3 = alloca %struct.wmi_pdev_stats_rx*, align 8
  %4 = alloca %struct.ath10k_fw_stats_pdev*, align 8
  store %struct.wmi_pdev_stats_rx* %0, %struct.wmi_pdev_stats_rx** %3, align 8
  store %struct.ath10k_fw_stats_pdev* %1, %struct.ath10k_fw_stats_pdev** %4, align 8
  %5 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %6 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %5, i32 0, i32 13
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @__le32_to_cpu(i32 %7)
  %9 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %9, i32 0, i32 13
  store i8* %8, i8** %10, align 8
  %11 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %12 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @__le32_to_cpu(i32 %13)
  %15 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %16 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %15, i32 0, i32 12
  store i8* %14, i8** %16, align 8
  %17 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %18 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @__le32_to_cpu(i32 %19)
  %21 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %22 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %21, i32 0, i32 11
  store i8* %20, i8** %22, align 8
  %23 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %24 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @__le32_to_cpu(i32 %25)
  %27 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %28 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %27, i32 0, i32 10
  store i8* %26, i8** %28, align 8
  %29 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %30 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @__le32_to_cpu(i32 %31)
  %33 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %34 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %33, i32 0, i32 9
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %36 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @__le32_to_cpu(i32 %37)
  %39 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %40 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %42 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @__le32_to_cpu(i32 %43)
  %45 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %46 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %48 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @__le32_to_cpu(i32 %49)
  %51 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %52 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %54 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @__le32_to_cpu(i32 %55)
  %57 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %58 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %60 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @__le32_to_cpu(i32 %61)
  %63 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %64 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %66 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @__le32_to_cpu(i32 %67)
  %69 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %70 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %72 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @__le32_to_cpu(i32 %73)
  %75 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %76 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %78 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @__le32_to_cpu(i32 %79)
  %81 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %82 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.wmi_pdev_stats_rx*, %struct.wmi_pdev_stats_rx** %3, align 8
  %84 = getelementptr inbounds %struct.wmi_pdev_stats_rx, %struct.wmi_pdev_stats_rx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @__le32_to_cpu(i32 %85)
  %87 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %88 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  ret void
}

declare dso_local i8* @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
