; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_del_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_del_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64* }
%struct.macsec_rx_sc = type { i32 }
%struct.macsec_tx_sa = type { i32 }

@MACSEC_NUM_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macsec_dev*)* @macsec_del_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macsec_del_dev(%struct.macsec_dev* %0) #0 {
  %2 = alloca %struct.macsec_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.macsec_rx_sc*, align 8
  %5 = alloca %struct.macsec_tx_sa*, align 8
  store %struct.macsec_dev* %0, %struct.macsec_dev** %2, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.macsec_dev*, %struct.macsec_dev** %2, align 8
  %8 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = load %struct.macsec_dev*, %struct.macsec_dev** %2, align 8
  %14 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @rtnl_dereference(i64 %16)
  %18 = bitcast i8* %17 to %struct.macsec_rx_sc*
  store %struct.macsec_rx_sc* %18, %struct.macsec_rx_sc** %4, align 8
  %19 = load %struct.macsec_dev*, %struct.macsec_dev** %2, align 8
  %20 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %4, align 8
  %24 = getelementptr inbounds %struct.macsec_rx_sc, %struct.macsec_rx_sc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rcu_assign_pointer(i64 %22, i32 %25)
  %27 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %4, align 8
  %28 = call i32 @free_rx_sc(%struct.macsec_rx_sc* %27)
  br label %6

29:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MACSEC_NUM_AN, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %30
  %35 = load %struct.macsec_dev*, %struct.macsec_dev** %2, align 8
  %36 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @rtnl_dereference(i64 %43)
  %45 = bitcast i8* %44 to %struct.macsec_tx_sa*
  store %struct.macsec_tx_sa* %45, %struct.macsec_tx_sa** %5, align 8
  %46 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %5, align 8
  %47 = icmp ne %struct.macsec_tx_sa* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %34
  %49 = load %struct.macsec_dev*, %struct.macsec_dev** %2, align 8
  %50 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @RCU_INIT_POINTER(i64 %57, i32* null)
  %59 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %5, align 8
  %60 = call i32 @clear_tx_sa(%struct.macsec_tx_sa* %59)
  br label %61

61:                                               ; preds = %48, %34
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %30

65:                                               ; preds = %30
  ret void
}

declare dso_local i8* @rtnl_dereference(i64) #1

declare dso_local i32 @rcu_assign_pointer(i64, i32) #1

declare dso_local i32 @free_rx_sc(%struct.macsec_rx_sc*) #1

declare dso_local i32 @RCU_INIT_POINTER(i64, i32*) #1

declare dso_local i32 @clear_tx_sa(%struct.macsec_tx_sa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
