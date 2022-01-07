; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_init_ocr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_init_ocr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { %struct.mmc_host* }
%struct.mmc_host = type { i64 }
%struct.device = type { %struct.sh_mmcif_plat_data* }
%struct.sh_mmcif_plat_data = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Platform OCR mask is ignored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mmcif_host*)* @sh_mmcif_init_ocr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_init_ocr(%struct.sh_mmcif_host* %0) #0 {
  %2 = alloca %struct.sh_mmcif_host*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sh_mmcif_plat_data*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %2, align 8
  %6 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %7 = call %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host* %6)
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.sh_mmcif_plat_data*, %struct.sh_mmcif_plat_data** %9, align 8
  store %struct.sh_mmcif_plat_data* %10, %struct.sh_mmcif_plat_data** %4, align 8
  %11 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %12 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %11, i32 0, i32 0
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %5, align 8
  %14 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %15 = call i32 @mmc_regulator_get_supply(%struct.mmc_host* %14)
  %16 = load %struct.sh_mmcif_plat_data*, %struct.sh_mmcif_plat_data** %4, align 8
  %17 = icmp ne %struct.sh_mmcif_plat_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.sh_mmcif_plat_data*, %struct.sh_mmcif_plat_data** %4, align 8
  %26 = getelementptr inbounds %struct.sh_mmcif_plat_data, %struct.sh_mmcif_plat_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %40

30:                                               ; preds = %19
  %31 = load %struct.sh_mmcif_plat_data*, %struct.sh_mmcif_plat_data** %4, align 8
  %32 = getelementptr inbounds %struct.sh_mmcif_plat_data, %struct.sh_mmcif_plat_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %37 = call i32 @mmc_dev(%struct.mmc_host* %36)
  %38 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %18, %39, %24
  ret void
}

declare dso_local %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host*) #1

declare dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
