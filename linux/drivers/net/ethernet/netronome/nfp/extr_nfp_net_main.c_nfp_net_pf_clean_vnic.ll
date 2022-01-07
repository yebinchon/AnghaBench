; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_clean_vnic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_clean_vnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_net = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_pf*, %struct.nfp_net*)* @nfp_net_pf_clean_vnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_pf_clean_vnic(%struct.nfp_pf* %0, %struct.nfp_net* %1) #0 {
  %3 = alloca %struct.nfp_pf*, align 8
  %4 = alloca %struct.nfp_net*, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %3, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %4, align 8
  %5 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %6 = call i64 @nfp_net_is_data_vnic(%struct.nfp_net* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %13 = call i32 @nfp_app_vnic_clean(i32 %11, %struct.nfp_net* %12)
  br label %14

14:                                               ; preds = %8, %2
  %15 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @nfp_devlink_port_type_clear(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %26 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %25, i32 0, i32 1
  %27 = call i32 @nfp_net_debugfs_dir_clean(i32* %26)
  %28 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %29 = call i32 @nfp_net_clean(%struct.nfp_net* %28)
  %30 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %31 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %36 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @nfp_devlink_port_unregister(i64 %37)
  br label %39

39:                                               ; preds = %34, %24
  ret void
}

declare dso_local i64 @nfp_net_is_data_vnic(%struct.nfp_net*) #1

declare dso_local i32 @nfp_app_vnic_clean(i32, %struct.nfp_net*) #1

declare dso_local i32 @nfp_devlink_port_type_clear(i64) #1

declare dso_local i32 @nfp_net_debugfs_dir_clean(i32*) #1

declare dso_local i32 @nfp_net_clean(%struct.nfp_net*) #1

declare dso_local i32 @nfp_devlink_port_unregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
