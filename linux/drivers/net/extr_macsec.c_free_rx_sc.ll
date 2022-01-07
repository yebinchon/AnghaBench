; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_free_rx_sc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_free_rx_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_rx_sc = type { i32* }
%struct.macsec_rx_sa = type { i32 }

@MACSEC_NUM_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macsec_rx_sc*)* @free_rx_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rx_sc(%struct.macsec_rx_sc* %0) #0 {
  %2 = alloca %struct.macsec_rx_sc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.macsec_rx_sa*, align 8
  store %struct.macsec_rx_sc* %0, %struct.macsec_rx_sc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MACSEC_NUM_AN, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %2, align 8
  %11 = getelementptr inbounds %struct.macsec_rx_sc, %struct.macsec_rx_sc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.macsec_rx_sa* @rtnl_dereference(i32 %16)
  store %struct.macsec_rx_sa* %17, %struct.macsec_rx_sa** %4, align 8
  %18 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %2, align 8
  %19 = getelementptr inbounds %struct.macsec_rx_sc, %struct.macsec_rx_sc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @RCU_INIT_POINTER(i32 %24, i32* null)
  %26 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %4, align 8
  %27 = icmp ne %struct.macsec_rx_sa* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %9
  %29 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %4, align 8
  %30 = call i32 @clear_rx_sa(%struct.macsec_rx_sa* %29)
  br label %31

31:                                               ; preds = %28, %9
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %5

35:                                               ; preds = %5
  %36 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %2, align 8
  %37 = call i32 @macsec_rxsc_put(%struct.macsec_rx_sc* %36)
  ret void
}

declare dso_local %struct.macsec_rx_sa* @rtnl_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @clear_rx_sa(%struct.macsec_rx_sa*) #1

declare dso_local i32 @macsec_rxsc_put(%struct.macsec_rx_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
