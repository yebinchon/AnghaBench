; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c___rtl_ephy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c___rtl_ephy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }
%struct.ephy_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, %struct.ephy_info*, i32)* @__rtl_ephy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rtl_ephy_init(%struct.rtl8169_private* %0, %struct.ephy_info* %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca %struct.ephy_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store %struct.ephy_info* %1, %struct.ephy_info** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %14 = load %struct.ephy_info*, %struct.ephy_info** %5, align 8
  %15 = getelementptr inbounds %struct.ephy_info, %struct.ephy_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rtl_ephy_read(%struct.rtl8169_private* %13, i32 %16)
  %18 = load %struct.ephy_info*, %struct.ephy_info** %5, align 8
  %19 = getelementptr inbounds %struct.ephy_info, %struct.ephy_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = load %struct.ephy_info*, %struct.ephy_info** %5, align 8
  %24 = getelementptr inbounds %struct.ephy_info, %struct.ephy_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %28 = load %struct.ephy_info*, %struct.ephy_info** %5, align 8
  %29 = getelementptr inbounds %struct.ephy_info, %struct.ephy_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @rtl_ephy_write(%struct.rtl8169_private* %27, i32 %30, i32 %31)
  %33 = load %struct.ephy_info*, %struct.ephy_info** %5, align 8
  %34 = getelementptr inbounds %struct.ephy_info, %struct.ephy_info* %33, i32 1
  store %struct.ephy_info* %34, %struct.ephy_info** %5, align 8
  br label %8

35:                                               ; preds = %8
  ret void
}

declare dso_local i32 @rtl_ephy_read(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_ephy_write(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
