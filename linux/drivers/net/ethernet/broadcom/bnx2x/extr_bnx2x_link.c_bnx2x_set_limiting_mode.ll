; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_limiting_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_limiting_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32 }
%struct.bnx2x_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.bnx2x_phy*, i32)* @bnx2x_set_limiting_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_limiting_mode(%struct.link_params* %0, %struct.bnx2x_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %8 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %29 [
    i32 130, label %10
    i32 129, label %17
    i32 131, label %17
    i32 128, label %24
  ]

10:                                               ; preds = %3
  %11 = load %struct.link_params*, %struct.link_params** %4, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @bnx2x_8726_set_limiting_mode(i32 %13, %struct.bnx2x_phy* %14, i32 %15)
  br label %29

17:                                               ; preds = %3, %3
  %18 = load %struct.link_params*, %struct.link_params** %4, align 8
  %19 = getelementptr inbounds %struct.link_params, %struct.link_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bnx2x_8727_set_limiting_mode(i32 %20, %struct.bnx2x_phy* %21, i32 %22)
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.link_params*, %struct.link_params** %4, align 8
  %26 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bnx2x_warpcore_set_limiting_mode(%struct.link_params* %25, %struct.bnx2x_phy* %26, i32 %27)
  br label %29

29:                                               ; preds = %3, %24, %17, %10
  ret void
}

declare dso_local i32 @bnx2x_8726_set_limiting_mode(i32, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_8727_set_limiting_mode(i32, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_warpcore_set_limiting_mode(%struct.link_params*, %struct.bnx2x_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
