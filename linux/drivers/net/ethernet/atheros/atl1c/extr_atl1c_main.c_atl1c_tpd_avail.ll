; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_tpd_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_tpd_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { %struct.atl1c_tpd_ring* }
%struct.atl1c_tpd_ring = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl1c_adapter*, i32)* @atl1c_tpd_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl1c_tpd_avail(%struct.atl1c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1c_tpd_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %8, i32 0, i32 0
  %10 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %10, i64 %12
  store %struct.atl1c_tpd_ring* %13, %struct.atl1c_tpd_ring** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %15 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %14, i32 0, i32 2
  %16 = call i64 @atomic_read(i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %18 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sgt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  %30 = sub nsw i64 %29, 1
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %33 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %36, %37
  %39 = sub nsw i64 %38, 1
  br label %40

40:                                               ; preds = %31, %26
  %41 = phi i64 [ %30, %26 ], [ %39, %31 ]
  ret i64 %41
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
