; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx_host_sds_ring = type { i32, %struct.netxen_adapter* }
%struct.netxen_adapter = type { i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @netxen_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nx_host_sds_ring*, align 8
  %7 = alloca %struct.netxen_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nx_host_sds_ring*
  store %struct.nx_host_sds_ring* %11, %struct.nx_host_sds_ring** %6, align 8
  %12 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %6, align 8
  %13 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %12, i32 0, i32 1
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %13, align 8
  store %struct.netxen_adapter* %14, %struct.netxen_adapter** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @readl(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %88

28:                                               ; preds = %2
  %29 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @NX_IS_REVISION_P3(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @readl(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ISR_LEGACY_INT_TRIGGERED(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %3, align 4
  br label %88

46:                                               ; preds = %35
  br label %71

47:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  %48 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %49 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @readl(i32 %50)
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %54 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 7, %55
  %57 = call i32 @test_and_clear_bit(i64 %56, i64* %9)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @IRQ_NONE, align 4
  store i32 %60, i32* %3, align 4
  br label %88

61:                                               ; preds = %47
  %62 = load i64, i64* %9, align 8
  %63 = and i64 %62, 4294967295
  %64 = trunc i64 %63 to i32
  %65 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %66 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @writel(i32 %64, i32 %67)
  %69 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %6, align 8
  %70 = call i32 @netxen_nic_disable_int(%struct.nx_host_sds_ring* %69)
  br label %71

71:                                               ; preds = %61, %46
  %72 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %73 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @writel(i32 -1, i32 %74)
  %76 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %77 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @readl(i32 %78)
  %80 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %81 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @readl(i32 %82)
  %84 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %6, align 8
  %85 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %84, i32 0, i32 0
  %86 = call i32 @napi_schedule(i32* %85)
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %71, %59, %44, %26
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @readl(i32) #1

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @ISR_LEGACY_INT_TRIGGERED(i32) #1

declare dso_local i32 @test_and_clear_bit(i64, i64*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @netxen_nic_disable_int(%struct.nx_host_sds_ring*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
