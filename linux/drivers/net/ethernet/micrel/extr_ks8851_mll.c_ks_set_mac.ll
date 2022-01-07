; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i64, i32 }

@KS_MARH = common dso_local global i32 0, align 4
@KS_MARM = common dso_local global i32 0, align 4
@KS_MARL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*, i32*)* @ks_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_set_mac(%struct.ks_net* %0, i32* %1) #0 {
  %3 = alloca %struct.ks_net*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %10 = call i32 @ks_stop_rx(%struct.ks_net* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %11, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 255
  %16 = shl i32 %15, 8
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = or i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %22 = load i32, i32* @KS_MARH, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ks_wrreg16(%struct.ks_net* %21, i32 %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 8
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = or i32 %30, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %36 = load i32, i32* @KS_MARM, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ks_wrreg16(%struct.ks_net* %35, i32 %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 255
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = or i32 %43, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %49 = load i32, i32* @KS_MARL, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ks_wrreg16(%struct.ks_net* %48, i32 %49, i32 %50)
  %52 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %53 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %54, i32* %55, i32 %56)
  %58 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %59 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %2
  %63 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %64 = call i32 @ks_start_rx(%struct.ks_net* %63)
  br label %65

65:                                               ; preds = %62, %2
  ret void
}

declare dso_local i32 @ks_stop_rx(%struct.ks_net*) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ks_start_rx(%struct.ks_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
