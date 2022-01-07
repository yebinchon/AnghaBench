; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_netvf_main.c_nfp_netvf_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_netvf_main.c_nfp_netvf_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.nfp_net_vf = type { i32, i32, %struct.nfp_net* }
%struct.nfp_net = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @nfp_netvf_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_netvf_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.nfp_net_vf*, align 8
  %4 = alloca %struct.nfp_net*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.nfp_net_vf* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.nfp_net_vf* %6, %struct.nfp_net_vf** %3, align 8
  %7 = load %struct.nfp_net_vf*, %struct.nfp_net_vf** %3, align 8
  %8 = icmp ne %struct.nfp_net_vf* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.nfp_net_vf*, %struct.nfp_net_vf** %3, align 8
  %12 = getelementptr inbounds %struct.nfp_net_vf, %struct.nfp_net_vf* %11, i32 0, i32 2
  %13 = load %struct.nfp_net*, %struct.nfp_net** %12, align 8
  store %struct.nfp_net* %13, %struct.nfp_net** %4, align 8
  %14 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 3
  %16 = call i32 @nfp_net_debugfs_dir_clean(i32* %15)
  %17 = load %struct.nfp_net_vf*, %struct.nfp_net_vf** %3, align 8
  %18 = getelementptr inbounds %struct.nfp_net_vf, %struct.nfp_net_vf* %17, i32 0, i32 1
  %19 = call i32 @nfp_net_debugfs_dir_clean(i32* %18)
  %20 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %21 = call i32 @nfp_net_clean(%struct.nfp_net* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @nfp_net_irqs_disable(%struct.pci_dev* %22)
  %24 = load %struct.nfp_net_vf*, %struct.nfp_net_vf** %3, align 8
  %25 = getelementptr inbounds %struct.nfp_net_vf, %struct.nfp_net_vf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %10
  %29 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %30 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %34 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @iounmap(i32 %35)
  br label %42

37:                                               ; preds = %10
  %38 = load %struct.nfp_net_vf*, %struct.nfp_net_vf** %3, align 8
  %39 = getelementptr inbounds %struct.nfp_net_vf, %struct.nfp_net_vf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @iounmap(i32 %40)
  br label %42

42:                                               ; preds = %37, %28
  %43 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %44 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iounmap(i32 %46)
  %48 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %49 = call i32 @nfp_net_free(%struct.nfp_net* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = call i32 @pci_release_regions(%struct.pci_dev* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = call i32 @pci_disable_device(%struct.pci_dev* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = call i32 @pci_set_drvdata(%struct.pci_dev* %54, i32* null)
  %56 = load %struct.nfp_net_vf*, %struct.nfp_net_vf** %3, align 8
  %57 = call i32 @kfree(%struct.nfp_net_vf* %56)
  br label %58

58:                                               ; preds = %42, %9
  ret void
}

declare dso_local %struct.nfp_net_vf* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @nfp_net_debugfs_dir_clean(i32*) #1

declare dso_local i32 @nfp_net_clean(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_irqs_disable(%struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @nfp_net_free(%struct.nfp_net*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @kfree(%struct.nfp_net_vf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
