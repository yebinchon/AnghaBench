; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_put_start_scan_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_put_start_scan_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_start_scan_common = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wmi_start_scan_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WMI_HOST_SCAN_REQ_ID_PREFIX = common dso_local global i32 0, align 4
@WMI_HOST_SCAN_REQUESTOR_ID_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_put_start_scan_common(%struct.wmi_start_scan_common* %0, %struct.wmi_start_scan_arg* %1) #0 {
  %3 = alloca %struct.wmi_start_scan_common*, align 8
  %4 = alloca %struct.wmi_start_scan_arg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wmi_start_scan_common* %0, %struct.wmi_start_scan_common** %3, align 8
  store %struct.wmi_start_scan_arg* %1, %struct.wmi_start_scan_arg** %4, align 8
  %7 = load i32, i32* @WMI_HOST_SCAN_REQ_ID_PREFIX, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %9 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @WMI_HOST_SCAN_REQUESTOR_ID_PREFIX, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %15 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @__cpu_to_le32(i32 %19)
  %21 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %22 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %21, i32 0, i32 14
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @__cpu_to_le32(i32 %23)
  %25 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %26 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %25, i32 0, i32 13
  store i8* %24, i8** %26, align 8
  %27 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %28 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @__cpu_to_le32(i32 %29)
  %31 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %32 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %31, i32 0, i32 12
  store i8* %30, i8** %32, align 8
  %33 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %34 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @__cpu_to_le32(i32 %35)
  %37 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %38 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %40 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @__cpu_to_le32(i32 %41)
  %43 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %44 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %43, i32 0, i32 10
  store i8* %42, i8** %44, align 8
  %45 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %46 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @__cpu_to_le32(i32 %47)
  %49 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %50 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %52 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @__cpu_to_le32(i32 %53)
  %55 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %56 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %58 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @__cpu_to_le32(i32 %59)
  %61 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %62 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  %63 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %64 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @__cpu_to_le32(i32 %65)
  %67 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %68 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %70 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @__cpu_to_le32(i32 %71)
  %73 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %74 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %76 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @__cpu_to_le32(i32 %77)
  %79 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %80 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %82 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @__cpu_to_le32(i32 %83)
  %85 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %86 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %88 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @__cpu_to_le32(i32 %89)
  %91 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %92 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %94 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @__cpu_to_le32(i32 %95)
  %97 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %98 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %100 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @__cpu_to_le32(i32 %101)
  %103 = load %struct.wmi_start_scan_common*, %struct.wmi_start_scan_common** %3, align 8
  %104 = getelementptr inbounds %struct.wmi_start_scan_common, %struct.wmi_start_scan_common* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  ret void
}

declare dso_local i8* @__cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
