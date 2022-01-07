; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_read_selftest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_read_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32 }

@MBIR_TXMBF = common dso_local global i32 0, align 4
@MBIR_RXMBF = common dso_local global i32 0, align 4
@KS_MBIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Memory selftest not finished\0A\00", align 1
@MBIR_TXMBFA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"TX memory selftest fails\0A\00", align 1
@MBIR_RXMBFA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"RX memory selftest fails\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"the selftest passes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_net*)* @ks_read_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_read_selftest(%struct.ks_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ks_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %3, align 8
  %7 = load i32, i32* @MBIR_TXMBF, align 4
  %8 = load i32, i32* @MBIR_RXMBF, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %11 = load i32, i32* @KS_MBIR, align 4
  %12 = call i32 @ks_rdreg16(%struct.ks_net* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %20 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_warn(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MBIR_TXMBFA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %30 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netdev_err(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MBIR_RXMBFA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %42 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netdev_err(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, 2
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %49 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netdev_info(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
