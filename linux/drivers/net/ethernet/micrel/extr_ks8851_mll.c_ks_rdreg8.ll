; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_rdreg8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_rdreg8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32, i32, i32 }

@BE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_net*, i32)* @ks_rdreg8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_rdreg8(%struct.ks_net* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 3
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 1
  %12 = shl i32 %11, 3
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BE0, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %13, %16
  %18 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %19 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %21 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %24 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iowrite16(i32 %22, i32 %25)
  %27 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %28 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ioread16(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %31, %32
  ret i32 %33
}

declare dso_local i32 @iowrite16(i32, i32) #1

declare dso_local i32 @ioread16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
