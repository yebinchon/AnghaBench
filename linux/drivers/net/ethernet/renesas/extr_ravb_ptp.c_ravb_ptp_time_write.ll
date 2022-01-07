; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_time_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_time_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ravb_private = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.timespec64 = type { i32, i32 }

@GCCR_TCR_RESET = common dso_local global i32 0, align 4
@GCCR = common dso_local global i32 0, align 4
@GCCR_LTO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GTO0 = common dso_local global i32 0, align 4
@GTO1 = common dso_local global i32 0, align 4
@GTO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ravb_private*, %struct.timespec64*)* @ravb_ptp_time_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_ptp_time_write(%struct.ravb_private* %0, %struct.timespec64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ravb_private*, align 8
  %5 = alloca %struct.timespec64*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ravb_private* %0, %struct.ravb_private** %4, align 8
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  %9 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %10 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %13 = load i32, i32* @GCCR_TCR_RESET, align 4
  %14 = call i32 @ravb_ptp_tcr_request(%struct.ravb_private* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = load i32, i32* @GCCR, align 4
  %22 = call i32 @ravb_read(%struct.net_device* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GCCR_LTO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %19
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %33 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GTO0, align 4
  %36 = call i32 @ravb_write(%struct.net_device* %31, i32 %34, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %39 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GTO1, align 4
  %42 = call i32 @ravb_write(%struct.net_device* %37, i32 %40, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %45 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 32
  %48 = and i32 %47, 65535
  %49 = load i32, i32* @GTO2, align 4
  %50 = call i32 @ravb_write(%struct.net_device* %43, i32 %48, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @GCCR_LTO, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @GCCR, align 4
  %56 = call i32 @ravb_write(%struct.net_device* %51, i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %30, %27, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ravb_ptp_tcr_request(%struct.ravb_private*, i32) #1

declare dso_local i32 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
