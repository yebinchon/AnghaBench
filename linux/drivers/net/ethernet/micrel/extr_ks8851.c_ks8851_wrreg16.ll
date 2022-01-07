; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_wrreg16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_wrreg16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8851_net = type { i32, i32, %struct.spi_message, %struct.spi_transfer }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@KS_SPIOP_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"spi_sync() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8851_net*, i32, i32)* @ks8851_wrreg16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8851_wrreg16(%struct.ks8851_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ks8851_net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.spi_message*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.ks8851_net* %0, %struct.ks8851_net** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ks8851_net*, %struct.ks8851_net** %4, align 8
  %12 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %11, i32 0, i32 3
  store %struct.spi_transfer* %12, %struct.spi_transfer** %7, align 8
  %13 = load %struct.ks8851_net*, %struct.ks8851_net** %4, align 8
  %14 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %13, i32 0, i32 2
  store %struct.spi_message* %14, %struct.spi_message** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 12, i32 3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @MK_OP(i32 %19, i32 %20)
  %22 = load i32, i32* @KS_SPIOP_WR, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @cpu_to_le16(i32 %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  %36 = load %struct.ks8851_net*, %struct.ks8851_net** %4, align 8
  %37 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spi_message*, %struct.spi_message** %8, align 8
  %40 = call i32 @spi_sync(i32 %38, %struct.spi_message* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.ks8851_net*, %struct.ks8851_net** %4, align 8
  %45 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @netdev_err(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %3
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @MK_OP(i32, i32) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
