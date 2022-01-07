; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tfd_tb_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tfd_tb_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_tfh_tfd = type { %struct.iwl_tfh_tb* }
%struct.iwl_tfh_tb = type { i32 }
%struct.iwl_tfd = type { %struct.iwl_tfd_tb* }
%struct.iwl_tfd_tb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i8*, i64)* @iwl_pcie_tfd_tb_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_tfd_tb_get_addr(%struct.iwl_trans* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwl_tfh_tfd*, align 8
  %9 = alloca %struct.iwl_tfh_tb*, align 8
  %10 = alloca %struct.iwl_tfd*, align 8
  %11 = alloca %struct.iwl_tfd_tb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.iwl_tfh_tfd*
  store %struct.iwl_tfh_tfd* %22, %struct.iwl_tfh_tfd** %8, align 8
  %23 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %8, align 8
  %24 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %23, i32 0, i32 0
  %25 = load %struct.iwl_tfh_tb*, %struct.iwl_tfh_tb** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.iwl_tfh_tb, %struct.iwl_tfh_tb* %25, i64 %26
  store %struct.iwl_tfh_tb* %27, %struct.iwl_tfh_tb** %9, align 8
  %28 = load %struct.iwl_tfh_tb*, %struct.iwl_tfh_tb** %9, align 8
  %29 = getelementptr inbounds %struct.iwl_tfh_tb, %struct.iwl_tfh_tb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le64_to_cpu(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %44

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.iwl_tfd*
  store %struct.iwl_tfd* %34, %struct.iwl_tfd** %10, align 8
  %35 = load %struct.iwl_tfd*, %struct.iwl_tfd** %10, align 8
  %36 = getelementptr inbounds %struct.iwl_tfd, %struct.iwl_tfd* %35, i32 0, i32 0
  %37 = load %struct.iwl_tfd_tb*, %struct.iwl_tfd_tb** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.iwl_tfd_tb, %struct.iwl_tfd_tb* %37, i64 %38
  store %struct.iwl_tfd_tb* %39, %struct.iwl_tfd_tb** %11, align 8
  %40 = load %struct.iwl_tfd_tb*, %struct.iwl_tfd_tb** %11, align 8
  %41 = getelementptr inbounds %struct.iwl_tfd_tb, %struct.iwl_tfd_tb* %40, i32 0, i32 1
  %42 = call i32 @get_unaligned_le32(i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %32, %20
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
