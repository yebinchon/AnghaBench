; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_get_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_get_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, %struct.hw_info* }
%struct.hw_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@MAX_BGX_PER_CN88XX = common dso_local global i32 0, align 4
@NIC_MAX_RSS_IDR_TBL_SIZE = common dso_local global i32 0, align 4
@MAX_BGX_PER_CN81XX = common dso_local global i32 0, align 4
@MAX_BGX_PER_CN83XX = common dso_local global i32 0, align 4
@MAX_QUEUES_PER_QSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*)* @nic_get_hw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_get_hw_info(%struct.nicpf* %0) #0 {
  %2 = alloca %struct.nicpf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw_info*, align 8
  store %struct.nicpf* %0, %struct.nicpf** %2, align 8
  %5 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %6 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %5, i32 0, i32 1
  %7 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  store %struct.hw_info* %7, %struct.hw_info** %4, align 8
  %8 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %9 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %12 = call i32 @pci_read_config_word(i32 %10, i32 %11, i32* %3)
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %87 [
    i32 128, label %14
    i32 130, label %37
    i32 129, label %63
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @MAX_BGX_PER_CN88XX, align 4
  %16 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %17 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %19 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %18, i32 0, i32 0
  store i32 16, i32* %19, align 4
  %20 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %21 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %20, i32 0, i32 1
  store i32 128, i32* %21, align 4
  %22 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %23 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %22, i32 0, i32 2
  store i32 2048, i32* %23, align 4
  %24 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %25 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %24, i32 0, i32 3
  store i32 4096, i32* %25, align 4
  %26 = load i32, i32* @NIC_MAX_RSS_IDR_TBL_SIZE, align 4
  %27 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %28 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %30 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %29, i32 0, i32 5
  store i32 256, i32* %30, align 4
  %31 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %32 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %31, i32 0, i32 6
  store i32 64, i32* %32, align 4
  %33 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %34 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %33, i32 0, i32 7
  store i32 2, i32* %34, align 4
  %35 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %36 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %35, i32 0, i32 8
  store i32 1, i32* %36, align 4
  br label %87

37:                                               ; preds = %1
  %38 = load i32, i32* @MAX_BGX_PER_CN81XX, align 4
  %39 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %40 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %42 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %41, i32 0, i32 0
  store i32 8, i32* %42, align 4
  %43 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %44 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %43, i32 0, i32 1
  store i32 32, i32* %44, align 4
  %45 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %46 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %45, i32 0, i32 9
  store i32 8, i32* %46, align 4
  %47 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %48 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %47, i32 0, i32 10
  store i32 24, i32* %48, align 4
  %49 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %50 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %49, i32 0, i32 2
  store i32 512, i32* %50, align 4
  %51 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %52 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %51, i32 0, i32 3
  store i32 256, i32* %52, align 4
  %53 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %54 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %53, i32 0, i32 4
  store i32 32, i32* %54, align 4
  %55 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %56 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %55, i32 0, i32 5
  store i32 64, i32* %56, align 4
  %57 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %58 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %57, i32 0, i32 6
  store i32 16, i32* %58, align 4
  %59 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %60 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %59, i32 0, i32 7
  store i32 10, i32* %60, align 4
  %61 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %62 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %61, i32 0, i32 8
  store i32 0, i32* %62, align 4
  br label %87

63:                                               ; preds = %1
  %64 = load i32, i32* @MAX_BGX_PER_CN83XX, align 4
  %65 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %66 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 4
  %67 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %68 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %67, i32 0, i32 0
  store i32 8, i32* %68, align 4
  %69 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %70 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %69, i32 0, i32 1
  store i32 32, i32* %70, align 4
  %71 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %72 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %71, i32 0, i32 10
  store i32 64, i32* %72, align 4
  %73 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %74 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %73, i32 0, i32 2
  store i32 2048, i32* %74, align 4
  %75 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %76 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %75, i32 0, i32 3
  store i32 1024, i32* %76, align 4
  %77 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %78 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %77, i32 0, i32 4
  store i32 64, i32* %78, align 4
  %79 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %80 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %79, i32 0, i32 5
  store i32 256, i32* %80, align 4
  %81 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %82 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %81, i32 0, i32 6
  store i32 64, i32* %82, align 4
  %83 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %84 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %83, i32 0, i32 7
  store i32 18, i32* %84, align 4
  %85 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %86 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %85, i32 0, i32 8
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %1, %63, %37, %14
  %88 = load i32, i32* @MAX_QUEUES_PER_QSET, align 4
  %89 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %90 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pci_sriov_get_totalvfs(i32 %91)
  %93 = mul nsw i32 %88, %92
  %94 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  %95 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %94, i32 0, i32 11
  store i32 %93, i32* %95, align 4
  ret void
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_sriov_get_totalvfs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
