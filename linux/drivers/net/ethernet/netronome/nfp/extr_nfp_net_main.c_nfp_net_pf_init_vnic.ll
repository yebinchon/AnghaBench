; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_init_vnic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_init_vnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32, i32 }
%struct.nfp_net = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.nfp_net*, i32)* @nfp_net_pf_init_vnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_pf_init_vnic(%struct.nfp_pf* %0, %struct.nfp_net* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %11 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @nfp_devlink_port_register(i32 %19, i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %95

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %31 = call i32 @nfp_net_init(%struct.nfp_net* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %83

35:                                               ; preds = %29
  %36 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %37 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %38 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nfp_net_debugfs_vnic_add(%struct.nfp_net* %36, i32 %39)
  %41 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %42 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %47 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @nfp_devlink_port_type_eth_set(i64 %48)
  br label %50

50:                                               ; preds = %45, %35
  %51 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %52 = call i32 @nfp_net_info(%struct.nfp_net* %51)
  %53 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %54 = call i64 @nfp_net_is_data_vnic(%struct.nfp_net* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %58 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %61 = call i32 @nfp_app_vnic_init(i32 %59, %struct.nfp_net* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %67

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %50
  store i32 0, i32* %4, align 4
  br label %95

67:                                               ; preds = %64
  %68 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %69 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %74 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @nfp_devlink_port_type_clear(i64 %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %79 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %78, i32 0, i32 2
  %80 = call i32 @nfp_net_debugfs_dir_clean(i32* %79)
  %81 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %82 = call i32 @nfp_net_clean(%struct.nfp_net* %81)
  br label %83

83:                                               ; preds = %77, %34
  %84 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %85 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %90 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @nfp_devlink_port_unregister(i64 %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %66, %26
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @nfp_devlink_port_register(i32, i64) #1

declare dso_local i32 @nfp_net_init(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_debugfs_vnic_add(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_devlink_port_type_eth_set(i64) #1

declare dso_local i32 @nfp_net_info(%struct.nfp_net*) #1

declare dso_local i64 @nfp_net_is_data_vnic(%struct.nfp_net*) #1

declare dso_local i32 @nfp_app_vnic_init(i32, %struct.nfp_net*) #1

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
