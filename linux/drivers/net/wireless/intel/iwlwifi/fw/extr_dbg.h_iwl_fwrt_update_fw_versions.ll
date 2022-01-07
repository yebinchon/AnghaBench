; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h_iwl_fwrt_update_fw_versions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h_iwl_fwrt_update_fw_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.iwl_lmac_alive = type { i32, i32, i32, i32 }
%struct.iwl_umac_alive = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_lmac_alive*, %struct.iwl_umac_alive*)* @iwl_fwrt_update_fw_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fwrt_update_fw_versions(%struct.iwl_fw_runtime* %0, %struct.iwl_lmac_alive* %1, %struct.iwl_umac_alive* %2) #0 {
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca %struct.iwl_lmac_alive*, align 8
  %6 = alloca %struct.iwl_umac_alive*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store %struct.iwl_lmac_alive* %1, %struct.iwl_lmac_alive** %5, align 8
  store %struct.iwl_umac_alive* %2, %struct.iwl_umac_alive** %6, align 8
  %7 = load %struct.iwl_lmac_alive*, %struct.iwl_lmac_alive** %5, align 8
  %8 = icmp ne %struct.iwl_lmac_alive* %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %3
  %10 = load %struct.iwl_lmac_alive*, %struct.iwl_lmac_alive** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_lmac_alive, %struct.iwl_lmac_alive* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  store i32 %12, i32* %16, align 4
  %17 = load %struct.iwl_lmac_alive*, %struct.iwl_lmac_alive** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_lmac_alive, %struct.iwl_lmac_alive* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  store i32 %19, i32* %23, align 8
  %24 = load %struct.iwl_lmac_alive*, %struct.iwl_lmac_alive** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_lmac_alive, %struct.iwl_lmac_alive* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le32_to_cpu(i32 %26)
  %28 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i8* %27, i8** %31, align 8
  %32 = load %struct.iwl_lmac_alive*, %struct.iwl_lmac_alive** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_lmac_alive, %struct.iwl_lmac_alive* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le32_to_cpu(i32 %34)
  %36 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i8* %35, i8** %39, align 8
  br label %40

40:                                               ; preds = %9, %3
  %41 = load %struct.iwl_umac_alive*, %struct.iwl_umac_alive** %6, align 8
  %42 = icmp ne %struct.iwl_umac_alive* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.iwl_umac_alive*, %struct.iwl_umac_alive** %6, align 8
  %45 = getelementptr inbounds %struct.iwl_umac_alive, %struct.iwl_umac_alive* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i8* %47, i8** %51, align 8
  %52 = load %struct.iwl_umac_alive*, %struct.iwl_umac_alive** %6, align 8
  %53 = getelementptr inbounds %struct.iwl_umac_alive, %struct.iwl_umac_alive* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %57 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  br label %60

60:                                               ; preds = %43, %40
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
