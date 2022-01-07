; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_configure_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_configure_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_pf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.enetc_hw }
%struct.enetc_hw = type { i32 }

@ENETC_RSSHASH_KEY_SIZE = common dso_local global i32 0, align 4
@ENETC_VLAN_PROMISC_MAP_ALL = common dso_local global i32 0, align 4
@ENETC_PSIPMR = common dso_local global i32 0, align 4
@ENETC_PMR = common dso_local global i32 0, align 4
@ENETC_PMR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_pf*)* @enetc_configure_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_configure_port(%struct.enetc_pf* %0) #0 {
  %2 = alloca %struct.enetc_pf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.enetc_hw*, align 8
  store %struct.enetc_pf* %0, %struct.enetc_pf** %2, align 8
  %6 = load i32, i32* @ENETC_RSSHASH_KEY_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %11 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.enetc_hw* %13, %struct.enetc_hw** %5, align 8
  %14 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %15 = call i32 @enetc_configure_port_pmac(%struct.enetc_hw* %14)
  %16 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %17 = call i32 @enetc_configure_port_mac(%struct.enetc_hw* %16)
  %18 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %19 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @enetc_port_si_configure(%struct.TYPE_4__* %20)
  %22 = load i32, i32* @ENETC_RSSHASH_KEY_SIZE, align 4
  %23 = call i32 @get_random_bytes(i32* %9, i32 %22)
  %24 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %25 = call i32 @enetc_set_rss_key(%struct.enetc_hw* %24, i32* %9)
  %26 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %27 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @enetc_port_assign_rfs_entries(%struct.TYPE_4__* %28)
  %30 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %31 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @enetc_port_setup_primary_mac_address(%struct.TYPE_4__* %32)
  %34 = load i32, i32* @ENETC_VLAN_PROMISC_MAP_ALL, align 4
  %35 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %36 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %38 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %39 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @enetc_set_vlan_promisc(%struct.enetc_hw* %37, i32 %40)
  %42 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %43 = load i32, i32* @ENETC_PSIPMR, align 4
  %44 = call i32 @enetc_port_wr(%struct.enetc_hw* %42, i32 %43, i32 0)
  %45 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %46 = load i32, i32* @ENETC_PMR, align 4
  %47 = load i32, i32* @ENETC_PMR_EN, align 4
  %48 = call i32 @enetc_port_wr(%struct.enetc_hw* %45, i32 %46, i32 %47)
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @enetc_configure_port_pmac(%struct.enetc_hw*) #2

declare dso_local i32 @enetc_configure_port_mac(%struct.enetc_hw*) #2

declare dso_local i32 @enetc_port_si_configure(%struct.TYPE_4__*) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #2

declare dso_local i32 @enetc_set_rss_key(%struct.enetc_hw*, i32*) #2

declare dso_local i32 @enetc_port_assign_rfs_entries(%struct.TYPE_4__*) #2

declare dso_local i32 @enetc_port_setup_primary_mac_address(%struct.TYPE_4__*) #2

declare dso_local i32 @enetc_set_vlan_promisc(%struct.enetc_hw*, i32) #2

declare dso_local i32 @enetc_port_wr(%struct.enetc_hw*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
