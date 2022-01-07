; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i64 }
%struct.mmc_data = type { i64, i32, i32, i32 }
%struct.sg_mapping_iter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@CB710_MMC_CONFIG2_PORT = common dso_local global i32 0, align 4
@CB710_MMC_C2_READ_PIO_SIZE_MASK = common dso_local global i32 0, align 4
@CB710_MMC_STATUS2_PORT = common dso_local global i32 0, align 4
@CB710_MMC_S2_FIFO_EMPTY = common dso_local global i32 0, align 4
@CB710_MMC_S1_PIO_TRANSFER_DONE = common dso_local global i32 0, align 4
@CB710_MMC_DATA_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_slot*, %struct.mmc_data*)* @cb710_mmc_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_mmc_send(%struct.cb710_slot* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cb710_slot*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca %struct.sg_mapping_iter, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cb710_slot* %0, %struct.cb710_slot** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 15
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i1 [ false, %2 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %86

31:                                               ; preds = %23
  %32 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %39 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %6, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %41 = load i32, i32* @CB710_MMC_CONFIG2_PORT, align 4
  %42 = load i32, i32* @CB710_MMC_C2_READ_PIO_SIZE_MASK, align 4
  %43 = call i32 @cb710_modify_port_8(%struct.cb710_slot* %40, i32 %41, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %81, %31
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %8, align 8
  %47 = icmp ugt i64 %45, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 15
  %53 = ashr i32 %52, 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %77, %48
  %56 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %57 = load i32, i32* @CB710_MMC_STATUS2_PORT, align 4
  %58 = call i32 @cb710_read_port_8(%struct.cb710_slot* %56, i32 %57)
  %59 = load i32, i32* @CB710_MMC_S2_FIFO_EMPTY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %64 = load i32, i32* @CB710_MMC_S1_PIO_TRANSFER_DONE, align 4
  %65 = call i32 @cb710_wait_for_event(%struct.cb710_slot* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %83

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %55
  %71 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %72 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CB710_MMC_DATA_PORT, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @cb710_sg_dwiter_read_to_io(%struct.sg_mapping_iter* %6, i64 %75, i32 4)
  br label %77

77:                                               ; preds = %70
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %55, label %81

81:                                               ; preds = %77
  br label %44

82:                                               ; preds = %44
  br label %83

83:                                               ; preds = %82, %68
  %84 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %6)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %28
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32, i32, i32) #1

declare dso_local i32 @cb710_modify_port_8(%struct.cb710_slot*, i32, i32, i32) #1

declare dso_local i32 @cb710_read_port_8(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_wait_for_event(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_sg_dwiter_read_to_io(%struct.sg_mapping_iter*, i64, i32) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
