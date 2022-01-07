; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_port_setup_primary_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_port_setup_primary_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { %struct.TYPE_2__*, %struct.enetc_hw }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_hw = type { i32 }
%struct.enetc_pf = type { i32 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"no MAC address specified for SI%d, using %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_si*)* @enetc_port_setup_primary_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_port_setup_primary_mac_address(%struct.enetc_si* %0) #0 {
  %2 = alloca %struct.enetc_si*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.enetc_pf*, align 8
  %6 = alloca %struct.enetc_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %2, align 8
  %8 = load i32, i32* @MAX_ADDR_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %13 = call %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si* %12)
  store %struct.enetc_pf* %13, %struct.enetc_pf** %5, align 8
  %14 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %15 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %14, i32 0, i32 1
  store %struct.enetc_hw* %15, %struct.enetc_hw** %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %41, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.enetc_pf*, %struct.enetc_pf** %5, align 8
  %19 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %16
  %24 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @enetc_pf_get_primary_mac_addr(%struct.enetc_hw* %24, i32 %25, i8* %11)
  %27 = call i32 @is_zero_ether_addr(i8* %11)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %41

30:                                               ; preds = %23
  %31 = call i32 @eth_random_addr(i8* %11)
  %32 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %33 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %11)
  %38 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @enetc_pf_set_primary_mac_addr(%struct.enetc_hw* %38, i32 %39, i8* %11)
  br label %41

41:                                               ; preds = %30, %29
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %16

44:                                               ; preds = %16
  %45 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si*) #2

declare dso_local i32 @enetc_pf_get_primary_mac_addr(%struct.enetc_hw*, i32, i8*) #2

declare dso_local i32 @is_zero_ether_addr(i8*) #2

declare dso_local i32 @eth_random_addr(i8*) #2

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #2

declare dso_local i32 @enetc_pf_set_primary_mac_addr(%struct.enetc_hw*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
