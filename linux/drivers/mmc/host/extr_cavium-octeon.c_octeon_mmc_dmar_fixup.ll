; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-octeon.c_octeon_mmc_dmar_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-octeon.c_octeon_mmc_dmar_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i64 }
%struct.mmc_command = type { i64 }
%struct.mmc_data = type { i32, i32 }

@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_host*, %struct.mmc_command*, %struct.mmc_data*, i64)* @octeon_mmc_dmar_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mmc_dmar_fixup(%struct.cvm_mmc_host* %0, %struct.mmc_command* %1, %struct.mmc_data* %2, i64 %3) #0 {
  %5 = alloca %struct.cvm_mmc_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca i64, align 8
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %5, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %6, align 8
  store %struct.mmc_data* %2, %struct.mmc_data** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %10 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MMC_WRITE_MULTIPLE_BLOCK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %43

15:                                               ; preds = %4
  %16 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %20 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = icmp sle i32 %22, 1024
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %43

25:                                               ; preds = %15
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %26, %34
  %36 = sub nsw i64 %35, 1024
  %37 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %38 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %40 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @l2c_lock_mem_region(i64 %41, i32 512)
  br label %43

43:                                               ; preds = %25, %24, %14
  ret void
}

declare dso_local i32 @l2c_lock_mem_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
