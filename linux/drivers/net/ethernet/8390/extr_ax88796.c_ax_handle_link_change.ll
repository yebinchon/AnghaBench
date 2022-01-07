; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_handle_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_handle_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i32 }
%struct.ax_device = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ax_handle_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax_handle_link_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ax_device*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %6)
  store %struct.ax_device* %7, %struct.ax_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %17 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %25 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %23, %15
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %36 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %41 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %31, %23, %1
  %43 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %47 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %42
  %51 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %57 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %59 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %65 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %42
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %71 = call i32 @phy_print_status(%struct.phy_device* %70)
  br label %72

72:                                               ; preds = %69, %66
  ret void
}

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
