; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_specific_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_specific_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NIG_REG_LATCH_BC_0 = common dso_local global i32 0, align 4
@NIG_LATCH_BC_ENABLE_MI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i32)* @bnx2x_848xx_specific_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_848xx_specific_func(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.link_params*, %struct.link_params** %5, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %37 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %14 = call i32 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %19 = load %struct.link_params*, %struct.link_params** %5, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bnx2x_save_848xx_spirom_version(%struct.bnx2x_phy* %17, %struct.bnx2x* %18, i32 %21)
  br label %23

23:                                               ; preds = %16, %12
  %24 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %25 = load i32, i32* @NIG_REG_LATCH_BC_0, align 4
  %26 = load %struct.link_params*, %struct.link_params** %5, align 8
  %27 = getelementptr inbounds %struct.link_params, %struct.link_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 4
  %30 = add nsw i32 %25, %29
  %31 = load i32, i32* @NIG_LATCH_BC_ENABLE_MI_INT, align 4
  %32 = shl i32 1, %31
  %33 = call i32 @bnx2x_bits_en(%struct.bnx2x* %24, i32 %30, i32 %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %35 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %36 = call i32 @bnx2x_848xx_set_led(%struct.bnx2x* %34, %struct.bnx2x_phy* %35)
  br label %37

37:                                               ; preds = %3, %23
  ret void
}

declare dso_local i32 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_save_848xx_spirom_version(%struct.bnx2x_phy*, %struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_bits_en(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_848xx_set_led(%struct.bnx2x*, %struct.bnx2x_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
