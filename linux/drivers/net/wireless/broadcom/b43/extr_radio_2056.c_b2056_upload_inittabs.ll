; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2056.c_b2056_upload_inittabs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2056.c_b2056_upload_inittabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.b2056_inittabs_pts = type { i32, i32, i32, i32, i32, i32 }

@B2056_SYN = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B2056_RX0 = common dso_local global i32 0, align 4
@B2056_RX1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b2056_upload_inittabs(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b2056_inittabs_pts*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %9 = call %struct.b2056_inittabs_pts* @b43_nphy_get_inittabs_rev3(%struct.b43_wldev* %8)
  store %struct.b2056_inittabs_pts* %9, %struct.b2056_inittabs_pts** %7, align 8
  %10 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %11 = icmp ne %struct.b2056_inittabs_pts* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 @B43_WARN_ON(i32 1)
  br label %70

14:                                               ; preds = %3
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @B2056_SYN, align 4
  %19 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %20 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %23 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %15, i32 %16, i32 %17, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @B2056_TX0, align 4
  %30 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %31 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %34 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %26, i32 %27, i32 %28, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @B2056_TX1, align 4
  %41 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %42 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %45 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %37, i32 %38, i32 %39, i32 %40, i32 %43, i32 %46)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @B2056_RX0, align 4
  %52 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %53 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %56 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %48, i32 %49, i32 %50, i32 %51, i32 %54, i32 %57)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @B2056_RX1, align 4
  %63 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %64 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %67 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %59, i32 %60, i32 %61, i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %14, %12
  ret void
}

declare dso_local %struct.b2056_inittabs_pts* @b43_nphy_get_inittabs_rev3(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b2056_upload_inittab(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
