; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_ndo_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_ndo_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifla_vf_info = type { i32, i64, i32, i32, i64, i32 }
%struct.fm10k_intfc = type { %struct.fm10k_iov_data* }
%struct.fm10k_iov_data = type { i32, %struct.fm10k_vf_info* }
%struct.fm10k_vf_info = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_ndo_get_vf_config(%struct.net_device* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.fm10k_intfc*, align 8
  %9 = alloca %struct.fm10k_iov_data*, align 8
  %10 = alloca %struct.fm10k_vf_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %11)
  store %struct.fm10k_intfc* %12, %struct.fm10k_intfc** %8, align 8
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 0
  %15 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %14, align 8
  store %struct.fm10k_iov_data* %15, %struct.fm10k_iov_data** %9, align 8
  %16 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %9, align 8
  %17 = icmp ne %struct.fm10k_iov_data* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %9, align 8
  %21 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %58

27:                                               ; preds = %18
  %28 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %9, align 8
  %29 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %28, i32 0, i32 1
  %30 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %30, i64 %32
  store %struct.fm10k_vf_info* %33, %struct.fm10k_vf_info** %10, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %36 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %38 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %41 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %43 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %45 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %48 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ether_addr_copy(i32 %46, i32 %49)
  %51 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %52 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %55 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %57 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %27, %24
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
