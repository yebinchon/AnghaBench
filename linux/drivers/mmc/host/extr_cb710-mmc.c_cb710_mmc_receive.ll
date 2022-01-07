; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }
%struct.mmc_data = type { i64, i32, i32, i32 }
%struct.sg_mapping_iter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@CB710_MMC_CONFIG2_PORT = common dso_local global i32 0, align 4
@CB710_MMC_C2_READ_PIO_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_slot*, %struct.mmc_data*)* @cb710_mmc_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_mmc_receive(%struct.cb710_slot* %0, %struct.mmc_data* %1) #0 {
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
  %14 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ true, %18 ], [ %27, %23 ]
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i1 [ false, %2 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %101

38:                                               ; preds = %30
  %39 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %43 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SG_MITER_TO_SG, align 4
  %46 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %6, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %48 = load i32, i32* @CB710_MMC_CONFIG2_PORT, align 4
  %49 = load i32, i32* @CB710_MMC_C2_READ_PIO_SIZE_MASK, align 4
  %50 = call i32 @cb710_modify_port_8(%struct.cb710_slot* %47, i32 %48, i64 15, i32 %49)
  %51 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %52 = call i32 @cb710_mmc_fifo_hack(%struct.cb710_slot* %51)
  br label %53

53:                                               ; preds = %96, %77, %38
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %8, align 8
  %56 = icmp ugt i64 %54, 0
  br i1 %56, label %57, label %97

57:                                               ; preds = %53
  %58 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %71, %57
  %63 = load i64, i64* %7, align 8
  %64 = icmp uge i64 %63, 16
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %67 = call i32 @cb710_mmc_receive_pio(%struct.cb710_slot* %66, %struct.sg_mapping_iter* %6, i64 4)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %98

71:                                               ; preds = %65
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, 16
  store i64 %73, i64* %7, align 8
  br label %62

74:                                               ; preds = %62
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %53

78:                                               ; preds = %74
  %79 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %80 = load i32, i32* @CB710_MMC_CONFIG2_PORT, align 4
  %81 = load i64, i64* %7, align 8
  %82 = sub i64 %81, 1
  %83 = load i32, i32* @CB710_MMC_C2_READ_PIO_SIZE_MASK, align 4
  %84 = call i32 @cb710_modify_port_8(%struct.cb710_slot* %79, i32 %80, i64 %82, i32 %83)
  %85 = load i64, i64* %7, align 8
  %86 = icmp uge i64 %85, 8
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 4, i32 2
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %7, align 8
  %90 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @cb710_mmc_receive_pio(%struct.cb710_slot* %90, %struct.sg_mapping_iter* %6, i64 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  br label %98

96:                                               ; preds = %78
  br label %53

97:                                               ; preds = %53
  br label %98

98:                                               ; preds = %97, %95, %70
  %99 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %6)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %35
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32, i32, i32) #1

declare dso_local i32 @cb710_modify_port_8(%struct.cb710_slot*, i32, i64, i32) #1

declare dso_local i32 @cb710_mmc_fifo_hack(%struct.cb710_slot*) #1

declare dso_local i32 @cb710_mmc_receive_pio(%struct.cb710_slot*, %struct.sg_mapping_iter*, i64) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
