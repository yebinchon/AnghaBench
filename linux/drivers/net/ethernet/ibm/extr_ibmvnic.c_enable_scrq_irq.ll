; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_enable_scrq_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_enable_scrq_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ibmvnic_sub_crq_queue = type { i32, i32 }
%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 (i32*)* }

@.str = private unnamed_addr constant [18 x i8] c"bad hw_irq = %lx\0A\00", align 1
@VNIC_RESET_MOBILITY = common dso_local global i64 0, align 8
@H_VIOCTL = common dso_local global i32 0, align 4
@H_ENABLE_VIO_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't enable scrq irq 0x%lx. rc=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*)* @enable_scrq_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_scrq_irq(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_sub_crq_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.ibmvnic_sub_crq_queue*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.irq_desc*, align 8
  %9 = alloca %struct.irq_chip*, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %4, align 8
  store %struct.ibmvnic_sub_crq_queue* %1, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %17, 4294967296
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %22 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 1, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %26, i32 0, i32 2
  %28 = call i64 @test_bit(i32 0, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VNIC_RESET_MOBILITY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %38 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.irq_desc* @irq_to_desc(i32 %39)
  store %struct.irq_desc* %40, %struct.irq_desc** %8, align 8
  %41 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  %42 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %41)
  store %struct.irq_chip* %42, %struct.irq_chip** %9, align 8
  %43 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %44 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %43, i32 0, i32 0
  %45 = load i32 (i32*)*, i32 (i32*)** %44, align 8
  %46 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  %47 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %46, i32 0, i32 0
  %48 = call i32 %45(i32* %47)
  br label %49

49:                                               ; preds = %36, %30, %25
  %50 = load i32, i32* @H_VIOCTL, align 4
  %51 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @H_ENABLE_VIO_INTERRUPT, align 4
  %57 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %58 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @plpar_hcall_norets(i32 %50, i32 %55, i32 %56, i32 %59, i32 0, i32 0)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %66 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %63, %49
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i64 @plpar_hcall_norets(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
