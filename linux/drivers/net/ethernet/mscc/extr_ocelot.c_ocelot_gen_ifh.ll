; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_gen_ifh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_gen_ifh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32, i32, i32, i32 }

@IFH_INJ_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.frame_info*)* @ocelot_gen_ifh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_gen_ifh(i32* %0, %struct.frame_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.frame_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.frame_info* %1, %struct.frame_info** %4, align 8
  %5 = load i32, i32* @IFH_INJ_BYPASS, align 4
  %6 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %7 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 511, %8
  %10 = shl i32 %9, 21
  %11 = or i32 %5, %10
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %15 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 3840, %16
  %18 = ashr i32 %17, 8
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %22 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 255, %23
  %25 = shl i32 %24, 24
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %29 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %33 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %35, i32* %37, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
