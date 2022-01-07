; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_uninit_ae_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_uninit_ae_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hclge_mac }
%struct.hclge_mac = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_ae_dev*)* @hclge_uninit_ae_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_uninit_ae_dev(%struct.hnae3_ae_dev* %0) #0 {
  %2 = alloca %struct.hnae3_ae_dev*, align 8
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_mac*, align 8
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %2, align 8
  %5 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %5, i32 0, i32 0
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  store %struct.hclge_dev* %7, %struct.hclge_dev** %3, align 8
  %8 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.hclge_mac* %10, %struct.hclge_mac** %4, align 8
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %12 = call i32 @hclge_misc_affinity_teardown(%struct.hclge_dev* %11)
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %14 = call i32 @hclge_state_uninit(%struct.hclge_dev* %13)
  %15 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %16 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %21 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mdiobus_unregister(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %26 = call i32 @hclge_uninit_umv_space(%struct.hclge_dev* %25)
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %27, i32 0, i32 2
  %29 = call i32 @hclge_enable_vector(%struct.TYPE_4__* %28, i32 0)
  %30 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %31 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @synchronize_irq(i32 %33)
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %36 = call i32 @hclge_config_mac_tnl_int(%struct.hclge_dev* %35, i32 0)
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %38 = call i32 @hclge_config_nic_hw_error(%struct.hclge_dev* %37, i32 0)
  %39 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %40 = call i32 @hclge_config_rocee_ras_interrupt(%struct.hclge_dev* %39, i32 0)
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %42 = call i32 @hclge_cmd_uninit(%struct.hclge_dev* %41)
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %44 = call i32 @hclge_misc_irq_uninit(%struct.hclge_dev* %43)
  %45 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %46 = call i32 @hclge_pci_uninit(%struct.hclge_dev* %45)
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 1
  %49 = call i32 @mutex_destroy(i32* %48)
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %51 = call i32 @hclge_uninit_vport_mac_table(%struct.hclge_dev* %50)
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %53 = call i32 @hclge_uninit_vport_vlan_table(%struct.hclge_dev* %52)
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %54, i32 0, i32 0
  %56 = call i32 @mutex_destroy(i32* %55)
  %57 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %58 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %57, i32 0, i32 0
  store %struct.hclge_dev* null, %struct.hclge_dev** %58, align 8
  ret void
}

declare dso_local i32 @hclge_misc_affinity_teardown(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_state_uninit(%struct.hclge_dev*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @hclge_uninit_umv_space(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_enable_vector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @hclge_config_mac_tnl_int(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_config_nic_hw_error(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_config_rocee_ras_interrupt(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_cmd_uninit(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_misc_irq_uninit(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_pci_uninit(%struct.hclge_dev*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @hclge_uninit_vport_mac_table(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_uninit_vport_vlan_table(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
