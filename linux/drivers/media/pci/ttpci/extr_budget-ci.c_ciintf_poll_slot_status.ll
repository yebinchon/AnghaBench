; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_ciintf_poll_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_ciintf_poll_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.budget_ci = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEBICICTL = common dso_local global i32 0, align 4
@DEBIADDR_CICONTROL = common dso_local global i32 0, align 4
@CICONTROL_CAMDETECT = common dso_local global i32 0, align 4
@SLOTSTATUS_NONE = common dso_local global i32 0, align 4
@SLOTSTATUS_PRESENT = common dso_local global i32 0, align 4
@SLOTSTATUS_RESET = common dso_local global i32 0, align 4
@SLOTSTATUS_READY = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_PRESENT = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32)* @ciintf_poll_slot_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciintf_poll_slot_status(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.budget_ci*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.budget_ci*
  store %struct.budget_ci* %13, %struct.budget_ci** %8, align 8
  %14 = load %struct.budget_ci*, %struct.budget_ci** %8, align 8
  %15 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %85

22:                                               ; preds = %3
  %23 = load %struct.budget_ci*, %struct.budget_ci** %8, align 8
  %24 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %23, i32 0, i32 1
  %25 = load i32, i32* @DEBICICTL, align 4
  %26 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %27 = call i32 @ttpci_budget_debiread(%struct.TYPE_2__* %24, i32 %25, i32 %26, i32 1, i32 1, i32 0)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @CICONTROL_CAMDETECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %22
  %33 = load %struct.budget_ci*, %struct.budget_ci** %8, align 8
  %34 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @SLOTSTATUS_PRESENT, align 4
  %41 = load %struct.budget_ci*, %struct.budget_ci** %8, align 8
  %42 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.budget_ci*, %struct.budget_ci** %8, align 8
  %45 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SLOTSTATUS_RESET, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ciintf_read_attribute_mem(%struct.dvb_ca_en50221* %51, i32 %52, i32 0)
  %54 = icmp eq i32 %53, 29
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @SLOTSTATUS_READY, align 4
  %57 = load %struct.budget_ci*, %struct.budget_ci** %8, align 8
  %58 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %50
  br label %60

60:                                               ; preds = %59, %43
  br label %65

61:                                               ; preds = %22
  %62 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %63 = load %struct.budget_ci*, %struct.budget_ci** %8, align 8
  %64 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %60
  %66 = load %struct.budget_ci*, %struct.budget_ci** %8, align 8
  %67 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load %struct.budget_ci*, %struct.budget_ci** %8, align 8
  %73 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SLOTSTATUS_READY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %80 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_READY, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %4, align 4
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %82, %78, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ttpci_budget_debiread(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ciintf_read_attribute_mem(%struct.dvb_ca_en50221*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
