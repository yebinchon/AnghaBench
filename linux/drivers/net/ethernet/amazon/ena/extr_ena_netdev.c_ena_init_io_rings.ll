; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_init_io_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_init_io_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.ena_ring*, %struct.ena_ring*, %struct.ena_com_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ena_ring = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ena_com_dev = type { i32, i32 }

@DIM_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_init_io_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_init_io_rings(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 9
  %9 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  store %struct.ena_com_dev* %9, %struct.ena_com_dev** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %91, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %94

16:                                               ; preds = %10
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 8
  %19 = load %struct.ena_ring*, %struct.ena_ring** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %19, i64 %21
  store %struct.ena_ring* %22, %struct.ena_ring** %4, align 8
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %23, i32 0, i32 7
  %25 = load %struct.ena_ring*, %struct.ena_ring** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %25, i64 %27
  store %struct.ena_ring* %28, %struct.ena_ring** %5, align 8
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %30 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ena_init_io_rings_common(%struct.ena_adapter* %29, %struct.ena_ring* %30, i32 %31)
  %33 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %34 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ena_init_io_rings_common(%struct.ena_adapter* %33, %struct.ena_ring* %34, i32 %35)
  %37 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %41 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %43 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %48 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %51 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %56 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %58 = call i32 @ena_com_get_nonadaptive_moderation_interval_tx(%struct.ena_com_dev* %57)
  %59 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %60 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %65 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %70 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %75 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %77 = call i32 @ena_com_get_nonadaptive_moderation_interval_rx(%struct.ena_com_dev* %76)
  %78 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %79 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %81 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @DIM_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %83 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %82, i32* %90, align 4
  br label %91

91:                                               ; preds = %16
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %10

94:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ena_init_io_rings_common(%struct.ena_adapter*, %struct.ena_ring*, i32) #1

declare dso_local i32 @ena_com_get_nonadaptive_moderation_interval_tx(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_get_nonadaptive_moderation_interval_rx(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
