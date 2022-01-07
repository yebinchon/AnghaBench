; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_poll_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_poll_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.budget_av = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SLOTSTATUS_NONE = common dso_local global i32 0, align 4
@SAA7146_GPIO_INPUT = common dso_local global i32 0, align 4
@PSR = common dso_local global i32 0, align 4
@MASK_06 = common dso_local global i32 0, align 4
@SLOTSTATUS_PRESENT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"cam inserted A\0A\00", align 1
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@DEBICICAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cam inserted B\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cam ejected 5\0A\00", align 1
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
  %8 = alloca %struct.budget_av*, align 8
  %9 = alloca %struct.saa7146_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.budget_av*
  store %struct.budget_av* %14, %struct.budget_av** %8, align 8
  %15 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %16 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %17, align 8
  store %struct.saa7146_dev* %18, %struct.saa7146_dev** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %146

24:                                               ; preds = %3
  %25 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %26 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %24
  %31 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %32 = load i32, i32* @SAA7146_GPIO_INPUT, align 4
  %33 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %31, i32 3, i32 %32)
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %36 = load i32, i32* @PSR, align 4
  %37 = call i32 @saa7146_read(%struct.saa7146_dev* %35, i32 %36)
  %38 = load i32, i32* @MASK_06, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %30
  %42 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %43 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i8*, i8** @SLOTSTATUS_PRESENT, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %51 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %41
  br label %54

54:                                               ; preds = %53, %30
  %55 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %56 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %57 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %55, i32 3, i32 %56)
  br label %58

58:                                               ; preds = %54, %24
  %59 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %60 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %109, label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %69 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.saa7146_dev*, %struct.saa7146_dev** %70, align 8
  %72 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %73 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %71, i32 1, i32 %72)
  %74 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %75 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %74, i32 0, i32 1
  %76 = load i32, i32* @DEBICICAM, align 4
  %77 = call i32 @ttpci_budget_debiread(%struct.TYPE_2__* %75, i32 %76, i32 0, i32 1, i32 0, i32 1)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %67
  %81 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %82 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i8*, i8** @SLOTSTATUS_PRESENT, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %90 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %108

92:                                               ; preds = %80, %67
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %97 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ciintf_slot_shutdown(%struct.dvb_ca_en50221* %102, i32 %103)
  %105 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %146

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %92
  br label %108

108:                                              ; preds = %107, %86
  br label %109

109:                                              ; preds = %108, %64
  %110 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %111 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SLOTSTATUS_RESET, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @ciintf_read_attribute_mem(%struct.dvb_ca_en50221* %116, i32 %117, i32 0)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 29
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* @SLOTSTATUS_READY, align 4
  %123 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %124 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %115
  br label %126

126:                                              ; preds = %125, %109
  %127 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %128 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %126
  %133 = load %struct.budget_av*, %struct.budget_av** %8, align 8
  %134 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SLOTSTATUS_READY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %141 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_READY, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %4, align 4
  br label %146

143:                                              ; preds = %132
  %144 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  store i32 %144, i32* %4, align 4
  br label %146

145:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %143, %139, %101, %21
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ttpci_budget_debiread(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ciintf_slot_shutdown(%struct.dvb_ca_en50221*, i32) #1

declare dso_local i32 @ciintf_read_attribute_mem(%struct.dvb_ca_en50221*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
