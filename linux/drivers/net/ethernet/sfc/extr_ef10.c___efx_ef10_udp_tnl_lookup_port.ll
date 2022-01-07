; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c___efx_ef10_udp_tnl_lookup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c___efx_ef10_udp_tnl_lookup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_udp_tunnel = type { i64, i32 }
%struct.efx_nic = type { %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { %struct.efx_udp_tunnel* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efx_udp_tunnel* (%struct.efx_nic*, i64)* @__efx_ef10_udp_tnl_lookup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efx_udp_tunnel* @__efx_ef10_udp_tnl_lookup_port(%struct.efx_nic* %0, i64 %1) #0 {
  %3 = alloca %struct.efx_udp_tunnel*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.efx_ef10_nic_data*, align 8
  %7 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %9, align 8
  store %struct.efx_ef10_nic_data* %10, %struct.efx_ef10_nic_data** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %45, %2
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %14 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %13, i32 0, i32 0
  %15 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %14, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.efx_udp_tunnel* %15)
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %11
  %19 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %20 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %19, i32 0, i32 0
  %21 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %21, i64 %22
  %24 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %45

28:                                               ; preds = %18
  %29 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %30 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %29, i32 0, i32 0
  %31 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %31, i64 %32
  %34 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %40 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %39, i32 0, i32 0
  %41 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %41, i64 %42
  store %struct.efx_udp_tunnel* %43, %struct.efx_udp_tunnel** %3, align 8
  br label %49

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %11

48:                                               ; preds = %11
  store %struct.efx_udp_tunnel* null, %struct.efx_udp_tunnel** %3, align 8
  br label %49

49:                                               ; preds = %48, %38
  %50 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %3, align 8
  ret %struct.efx_udp_tunnel* %50
}

declare dso_local i64 @ARRAY_SIZE(%struct.efx_udp_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
