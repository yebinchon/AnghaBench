; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tfd_set_tb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tfd_set_tb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_tfd = type { i64, %struct.iwl_tfd_tb* }
%struct.iwl_tfd_tb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i8*, i64, i32, i32)* @iwl_pcie_tfd_set_tb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_tfd_set_tb(%struct.iwl_trans* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_tfd*, align 8
  %12 = alloca %struct.iwl_tfd_tb*, align 8
  %13 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.iwl_tfd*
  store %struct.iwl_tfd* %15, %struct.iwl_tfd** %11, align 8
  %16 = load %struct.iwl_tfd*, %struct.iwl_tfd** %11, align 8
  %17 = getelementptr inbounds %struct.iwl_tfd, %struct.iwl_tfd* %16, i32 0, i32 1
  %18 = load %struct.iwl_tfd_tb*, %struct.iwl_tfd_tb** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.iwl_tfd_tb, %struct.iwl_tfd_tb* %18, i64 %19
  store %struct.iwl_tfd_tb* %20, %struct.iwl_tfd_tb** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = shl i32 %21, 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.iwl_tfd_tb*, %struct.iwl_tfd_tb** %12, align 8
  %25 = getelementptr inbounds %struct.iwl_tfd_tb, %struct.iwl_tfd_tb* %24, i32 0, i32 1
  %26 = call i32 @put_unaligned_le32(i32 %23, i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @iwl_get_dma_hi_addr(i32 %27)
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.iwl_tfd_tb*, %struct.iwl_tfd_tb** %12, align 8
  %34 = getelementptr inbounds %struct.iwl_tfd_tb, %struct.iwl_tfd_tb* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  %37 = load %struct.iwl_tfd*, %struct.iwl_tfd** %11, align 8
  %38 = getelementptr inbounds %struct.iwl_tfd, %struct.iwl_tfd* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  ret void
}

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @iwl_get_dma_hi_addr(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
