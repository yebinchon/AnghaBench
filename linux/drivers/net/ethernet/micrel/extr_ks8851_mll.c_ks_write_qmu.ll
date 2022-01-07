; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_write_qmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_write_qmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@KS_RXQCR = common dso_local global i32 0, align 4
@RXQCR_SDA = common dso_local global i32 0, align 4
@KS_TXQCR = common dso_local global i32 0, align 4
@TXQCR_METFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*, i32*, i64)* @ks_write_qmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_write_qmu(%struct.ks_net* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ks_net*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.ks_net* %0, %struct.ks_net** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %8 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 0, i64* %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @cpu_to_le16(i64 %12)
  %14 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %15 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  store i64 %13, i64* %18, align 8
  %19 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %20 = load i32, i32* @KS_RXQCR, align 4
  %21 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %22 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RXQCR_SDA, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %25, 255
  %27 = call i32 @ks_wrreg8(%struct.ks_net* %19, i32 %20, i32 %26)
  %28 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %29 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %30 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = call i32 @ks_outblk(%struct.ks_net* %28, i64* %32, i32 4)
  %34 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = bitcast i32* %35 to i64*
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @ALIGN(i64 %37, i32 4)
  %39 = call i32 @ks_outblk(%struct.ks_net* %34, i64* %36, i32 %38)
  %40 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %41 = load i32, i32* @KS_RXQCR, align 4
  %42 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %43 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ks_wrreg8(%struct.ks_net* %40, i32 %41, i32 %44)
  %46 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %47 = load i32, i32* @KS_TXQCR, align 4
  %48 = load i32, i32* @TXQCR_METFE, align 4
  %49 = call i32 @ks_wrreg16(%struct.ks_net* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %57, %3
  %51 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %52 = load i32, i32* @KS_TXQCR, align 4
  %53 = call i32 @ks_rdreg16(%struct.ks_net* %51, i32 %52)
  %54 = load i32, i32* @TXQCR_METFE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %50

58:                                               ; preds = %50
  ret void
}

declare dso_local i64 @cpu_to_le16(i64) #1

declare dso_local i32 @ks_wrreg8(%struct.ks_net*, i32, i32) #1

declare dso_local i32 @ks_outblk(%struct.ks_net*, i64*, i32) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
