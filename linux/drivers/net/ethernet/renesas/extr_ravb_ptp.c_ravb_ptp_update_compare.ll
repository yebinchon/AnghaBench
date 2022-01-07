; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_update_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_update_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ravb_private = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@GCCR = common dso_local global i32 0, align 4
@GCCR_LPTC = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GPTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ravb_private*, i64)* @ravb_ptp_update_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_ptp_update_compare(%struct.ravb_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ravb_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ravb_private* %0, %struct.ravb_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %10 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %13 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 20
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %5, align 8
  br label %33

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 0, %26
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load i32, i32* @GCCR, align 4
  %36 = call i64 @ravb_read(%struct.net_device* %34, i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @GCCR_LPTC, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %55

44:                                               ; preds = %33
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* @GPTC, align 4
  %48 = call i32 @ravb_write(%struct.net_device* %45, i64 %46, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @GCCR_LPTC, align 8
  %52 = or i64 %50, %51
  %53 = load i32, i32* @GCCR, align 4
  %54 = call i32 @ravb_write(%struct.net_device* %49, i64 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %44, %41
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
