; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_get_gpio_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_get_gpio_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NIG_REG_PORT_SWAP = common dso_local global i32 0, align 4
@NIG_REG_STRAP_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*)* @bnx2x_get_gpio_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_gpio_port(%struct.link_params* %0) #0 {
  %2 = alloca %struct.link_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %2, align 8
  %7 = load %struct.link_params*, %struct.link_params** %2, align 8
  %8 = getelementptr inbounds %struct.link_params, %struct.link_params* %7, i32 0, i32 1
  %9 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  store %struct.bnx2x* %9, %struct.bnx2x** %6, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %11 = call i64 @CHIP_IS_E2(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %15 = call i32 @BP_PATH(%struct.bnx2x* %14)
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.link_params*, %struct.link_params** %2, align 8
  %18 = getelementptr inbounds %struct.link_params, %struct.link_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %22 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %23 = call i64 @REG_RD(%struct.bnx2x* %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %25 = load i32, i32* @NIG_REG_STRAP_OVERRIDE, align 4
  %26 = call i64 @REG_RD(%struct.bnx2x* %24, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %20
  %34 = phi i1 [ false, %20 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = xor i32 %27, %35
  ret i32 %36
}

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
