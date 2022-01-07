; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_num_sqs_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_num_sqs_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32 }

@MAX_SQS_PER_VF_SINGLE_NODE = common dso_local global i32 0, align 4
@MAX_QUEUES_PER_QSET = common dso_local global i64 0, align 8
@nr_node_ids = common dso_local global i32 0, align 4
@MAX_SQS_PER_VF = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@PCI_SRIOV_TOTAL_VF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicpf*, i32)* @nic_num_sqs_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_num_sqs_en(%struct.nicpf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nicpf* %0, %struct.nicpf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MAX_SQS_PER_VF_SINGLE_NODE, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i64 (...) @num_online_cpus()
  %11 = load i64, i64* @MAX_QUEUES_PER_QSET, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load i32, i32* @nr_node_ids, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @MAX_SQS_PER_VF, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %21 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %24 = call i32 @pci_find_ext_capability(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %26 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @PCI_SRIOV_TOTAL_VF, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @pci_read_config_word(i32 %27, i64 %31, i64* %8)
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i32 @min(i64 %36, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %19, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @pci_find_ext_capability(i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i64, i64*) #1

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
