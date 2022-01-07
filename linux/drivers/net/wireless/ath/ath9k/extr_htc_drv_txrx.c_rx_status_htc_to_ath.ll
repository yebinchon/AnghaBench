; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_rx_status_htc_to_ath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_rx_status_htc_to_ath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_htc_rx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_rx_status*, %struct.ath_htc_rx_status*)* @rx_status_htc_to_ath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_status_htc_to_ath(%struct.ath_rx_status* %0, %struct.ath_htc_rx_status* %1) #0 {
  %3 = alloca %struct.ath_rx_status*, align 8
  %4 = alloca %struct.ath_htc_rx_status*, align 8
  store %struct.ath_rx_status* %0, %struct.ath_rx_status** %3, align 8
  store %struct.ath_htc_rx_status* %1, %struct.ath_htc_rx_status** %4, align 8
  %5 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %6 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %5, i32 0, i32 12
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @be16_to_cpu(i32 %7)
  %9 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %10 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %9, i32 0, i32 12
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %12 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %15 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %17 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %20 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %22 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %25 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %27 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %30 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %32 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %35 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %37 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %40 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %42 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %45 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %47 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %50 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %48, i32 %51, i32 4)
  %53 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %54 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %57 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %55, i32 %58, i32 4)
  %60 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %61 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %64 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %66 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %69 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %71 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %74 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %76 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %77 = call i32 @convert_htc_flag(%struct.ath_rx_status* %75, %struct.ath_htc_rx_status* %76)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @convert_htc_flag(%struct.ath_rx_status*, %struct.ath_htc_rx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
