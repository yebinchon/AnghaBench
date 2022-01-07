; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_of.c_brcmf_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_of.c_brcmf_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.brcmf_mp_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8*, i8* }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@BRCMF_BUSTYPE_SDIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"brcm,bcm4329-fmac\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"brcm,drive-strength\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"interrupt could not be mapped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_of_probe(%struct.device* %0, i32 %1, %struct.brcmf_mp_device* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_mp_device*, align 8
  %7 = alloca %struct.brcmfmac_sdio_pd*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.property*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.brcmf_mp_device* %2, %struct.brcmf_mp_device** %6, align 8
  %14 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %6, align 8
  %15 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.brcmfmac_sdio_pd* %16, %struct.brcmfmac_sdio_pd** %7, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %9, align 8
  %20 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %20, %struct.device_node** %8, align 8
  %21 = load %struct.device_node*, %struct.device_node** %8, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.device_node*, %struct.device_node** %8, align 8
  %25 = call %struct.property* @of_find_property(%struct.device_node* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store %struct.property* %25, %struct.property** %10, align 8
  %26 = load %struct.property*, %struct.property** %10, align 8
  %27 = call i32 @of_prop_next_string(%struct.property* %26, i32* null)
  %28 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %6, align 8
  %29 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.device_node*, %struct.device_node** %8, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  br label %32

32:                                               ; preds = %23, %3
  %33 = load %struct.device_node*, %struct.device_node** %9, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @BRCMF_BUSTYPE_SDIO, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.device_node*, %struct.device_node** %9, align 8
  %41 = call i32 @of_device_is_compatible(%struct.device_node* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %35, %32
  br label %76

44:                                               ; preds = %39
  %45 = load %struct.device_node*, %struct.device_node** %9, align 8
  %46 = call i64 @of_property_read_u32(%struct.device_node* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %13)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %13, align 8
  %50 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %7, align 8
  %51 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.device_node*, %struct.device_node** %9, align 8
  %54 = call %struct.property* @of_find_property(%struct.device_node* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %55 = icmp ne %struct.property* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %76

57:                                               ; preds = %52
  %58 = load %struct.device_node*, %struct.device_node** %9, align 8
  %59 = call i32 @irq_of_parse_and_map(%struct.device_node* %58, i32 0)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = call i32 @brcmf_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %76

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @irq_get_irq_data(i32 %65)
  %67 = call i8* @irqd_get_trigger_type(i32 %66)
  store i8* %67, i8** %12, align 8
  %68 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %7, align 8
  %69 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %7, align 8
  %72 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %7, align 8
  %75 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %64, %62, %56, %43
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_prop_next_string(%struct.property*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i8* @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
