; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_read_qmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_read_qmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32, i32, i32 }

@KS_RXFDPR = common dso_local global i32 0, align 4
@RXFDPR_RXFPAI = common dso_local global i32 0, align 4
@KS_RXQCR = common dso_local global i32 0, align 4
@RXQCR_SDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*, i32*, i32)* @ks_read_qmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_read_qmu(%struct.ks_net* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ks_net*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %10 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %14 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %19 = load i32, i32* @KS_RXFDPR, align 4
  %20 = load i32, i32* @RXFDPR_RXFPAI, align 4
  %21 = call i32 @ks_wrreg16(%struct.ks_net* %18, i32 %19, i32 %20)
  %22 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %23 = load i32, i32* @KS_RXQCR, align 4
  %24 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %25 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RXQCR_SDA, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %28, 255
  %30 = call i32 @ks_wrreg8(%struct.ks_net* %22, i32 %23, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %36 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ioread8(i32 %37)
  br label %39

39:                                               ; preds = %34, %3
  %40 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 2
  %44 = add nsw i32 %43, 2
  %45 = call i32 @ks_inblk(%struct.ks_net* %40, i32* %41, i32 %44)
  %46 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ALIGN(i32 %48, i32 4)
  %50 = call i32 @ks_inblk(%struct.ks_net* %46, i32* %47, i32 %49)
  %51 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %52 = load i32, i32* @KS_RXQCR, align 4
  %53 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %54 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ks_wrreg8(%struct.ks_net* %51, i32 %52, i32 %55)
  ret void
}

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i32 @ks_wrreg8(%struct.ks_net*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ks_inblk(%struct.ks_net*, i32*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
