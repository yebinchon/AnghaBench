; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_host_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_host_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }
%struct.ar5523_cmd_host_available = type { i8*, i8*, i8*, i8* }

@ATH_SW_VER_MAJOR = common dso_local global i32 0, align 4
@ATH_SW_VER_MINOR = common dso_local global i32 0, align 4
@ATH_SW_VER_PATCH = common dso_local global i32 0, align 4
@ATH_SW_VER_BUILD = common dso_local global i32 0, align 4
@WDCMSG_HOST_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*)* @ar5523_host_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_host_available(%struct.ar5523* %0) #0 {
  %2 = alloca %struct.ar5523*, align 8
  %3 = alloca %struct.ar5523_cmd_host_available, align 8
  store %struct.ar5523* %0, %struct.ar5523** %2, align 8
  %4 = load i32, i32* @ATH_SW_VER_MAJOR, align 4
  %5 = call i8* @cpu_to_be32(i32 %4)
  %6 = getelementptr inbounds %struct.ar5523_cmd_host_available, %struct.ar5523_cmd_host_available* %3, i32 0, i32 3
  store i8* %5, i8** %6, align 8
  %7 = load i32, i32* @ATH_SW_VER_MINOR, align 4
  %8 = call i8* @cpu_to_be32(i32 %7)
  %9 = getelementptr inbounds %struct.ar5523_cmd_host_available, %struct.ar5523_cmd_host_available* %3, i32 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = load i32, i32* @ATH_SW_VER_PATCH, align 4
  %11 = call i8* @cpu_to_be32(i32 %10)
  %12 = getelementptr inbounds %struct.ar5523_cmd_host_available, %struct.ar5523_cmd_host_available* %3, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* @ATH_SW_VER_BUILD, align 4
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = getelementptr inbounds %struct.ar5523_cmd_host_available, %struct.ar5523_cmd_host_available* %3, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %17 = load i32, i32* @WDCMSG_HOST_AVAILABLE, align 4
  %18 = call i32 @ar5523_cmd_read(%struct.ar5523* %16, i32 %17, %struct.ar5523_cmd_host_available* %3, i32 32, i32* null, i32 0, i32 0)
  ret i32 %18
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ar5523_cmd_read(%struct.ar5523*, i32, %struct.ar5523_cmd_host_available*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
