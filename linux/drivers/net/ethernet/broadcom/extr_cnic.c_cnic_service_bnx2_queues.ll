; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_service_bnx2_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_service_bnx2_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cnic_dev*)* @cnic_service_bnx2_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cnic_service_bnx2_queues(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 0
  %8 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  store %struct.cnic_local* %8, %struct.cnic_local** %3, align 8
  %9 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %10 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = call i32 (...) @rmb()
  %15 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %20 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %27, %1
  %22 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %23 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %24 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %23, i32 0, i32 0
  %25 = call i32 @cnic_get_kcqes(%struct.cnic_dev* %22, %struct.TYPE_2__* %24)
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @service_kcqes(%struct.cnic_dev* %28, i32 %29)
  %31 = call i32 (...) @barrier()
  %32 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %33 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %4, align 8
  %37 = call i32 (...) @rmb()
  %38 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %39 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %43 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %21

44:                                               ; preds = %21
  %45 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %46 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %51 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @CNIC_WR16(%struct.cnic_dev* %45, i32 %49, i32 %53)
  %55 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %56 = call i32 @cnic_chk_pkt_rings(%struct.cnic_local* %55)
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @cnic_get_kcqes(%struct.cnic_dev*, %struct.TYPE_2__*) #1

declare dso_local i32 @service_kcqes(%struct.cnic_dev*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i32, i32) #1

declare dso_local i32 @cnic_chk_pkt_rings(%struct.cnic_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
