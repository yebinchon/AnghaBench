; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init.h_bnx2x_init_cmng.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init.h_bnx2x_init_cmng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmng_init_input = type { i32, i32 }
%struct.cmng_init = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmng_init_input*, %struct.cmng_init*)* @bnx2x_init_cmng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_cmng(%struct.cmng_init_input* %0, %struct.cmng_init* %1) #0 {
  %3 = alloca %struct.cmng_init_input*, align 8
  %4 = alloca %struct.cmng_init*, align 8
  %5 = alloca i32, align 4
  store %struct.cmng_init_input* %0, %struct.cmng_init_input** %3, align 8
  store %struct.cmng_init* %1, %struct.cmng_init** %4, align 8
  %6 = load %struct.cmng_init*, %struct.cmng_init** %4, align 8
  %7 = call i32 @memset(%struct.cmng_init* %6, i32 0, i32 4)
  %8 = load %struct.cmng_init_input*, %struct.cmng_init_input** %3, align 8
  %9 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cmng_init*, %struct.cmng_init** %4, align 8
  %12 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.cmng_init_input*, %struct.cmng_init_input** %3, align 8
  %15 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BITS_TO_BYTES(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.cmng_init_input*, %struct.cmng_init_input** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.cmng_init*, %struct.cmng_init** %4, align 8
  %21 = call i32 @bnx2x_init_max(%struct.cmng_init_input* %18, i32 %19, %struct.cmng_init* %20)
  %22 = load %struct.cmng_init_input*, %struct.cmng_init_input** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.cmng_init*, %struct.cmng_init** %4, align 8
  %25 = call i32 @bnx2x_init_min(%struct.cmng_init_input* %22, i32 %23, %struct.cmng_init* %24)
  %26 = load %struct.cmng_init_input*, %struct.cmng_init_input** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.cmng_init*, %struct.cmng_init** %4, align 8
  %29 = call i32 @bnx2x_init_fw_wrr(%struct.cmng_init_input* %26, i32 %27, %struct.cmng_init* %28)
  %30 = load %struct.cmng_init_input*, %struct.cmng_init_input** %3, align 8
  %31 = load %struct.cmng_init*, %struct.cmng_init** %4, align 8
  %32 = call i32 @bnx2x_init_safc(%struct.cmng_init_input* %30, %struct.cmng_init* %31)
  ret void
}

declare dso_local i32 @memset(%struct.cmng_init*, i32, i32) #1

declare dso_local i32 @BITS_TO_BYTES(i32) #1

declare dso_local i32 @bnx2x_init_max(%struct.cmng_init_input*, i32, %struct.cmng_init*) #1

declare dso_local i32 @bnx2x_init_min(%struct.cmng_init_input*, i32, %struct.cmng_init*) #1

declare dso_local i32 @bnx2x_init_fw_wrr(%struct.cmng_init_input*, i32, %struct.cmng_init*) #1

declare dso_local i32 @bnx2x_init_safc(%struct.cmng_init_input*, %struct.cmng_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
