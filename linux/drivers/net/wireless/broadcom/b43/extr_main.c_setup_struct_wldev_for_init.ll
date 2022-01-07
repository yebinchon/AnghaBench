; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_setup_struct_wldev_for_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_setup_struct_wldev_for_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, i32, i32, i32, i32, i32*, i64, i32, i32 }

@B43_IRQ_MASKTEMPLATE = common dso_local global i32 0, align 4
@b43_modparam_verbose = common dso_local global i64 0, align 8
@B43_VERBOSITY_DEBUG = common dso_local global i64 0, align 8
@B43_IRQ_PHY_TXERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @setup_struct_wldev_for_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_struct_wldev_for_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 8
  %9 = call i32 @memset(i32* %8, i32 0, i32 4)
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 7
  %13 = call i32 @setup_struct_phy_for_init(%struct.b43_wldev* %10, i32* %12)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @memset(i32* %18, i32 0, i32 8)
  %20 = load i32, i32* @B43_IRQ_MASKTEMPLATE, align 4
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* @b43_modparam_verbose, align 8
  %24 = load i64, i64* @B43_VERBOSITY_DEBUG, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @B43_IRQ_PHY_TXERR, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 3
  %38 = call i32 @memset(i32* %37, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @setup_struct_phy_for_init(%struct.b43_wldev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
