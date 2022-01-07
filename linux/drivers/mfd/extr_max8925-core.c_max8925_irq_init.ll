; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_chip = type { i64, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.max8925_platform_data = type { i32 }

@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@MAX8925_CHG_IRQ1 = common dso_local global i32 0, align 4
@MAX8925_CHG_IRQ2 = common dso_local global i32 0, align 4
@MAX8925_ON_OFF_IRQ1 = common dso_local global i32 0, align 4
@MAX8925_ON_OFF_IRQ2 = common dso_local global i32 0, align 4
@MAX8925_RTC_IRQ = common dso_local global i32 0, align 4
@MAX8925_TSC_IRQ = common dso_local global i32 0, align 4
@MAX8925_ALARM0_CNTL = common dso_local global i32 0, align 4
@MAX8925_ALARM1_CNTL = common dso_local global i32 0, align 4
@MAX8925_CHG_IRQ1_MASK = common dso_local global i32 0, align 4
@MAX8925_CHG_IRQ2_MASK = common dso_local global i32 0, align 4
@MAX8925_ON_OFF_IRQ1_MASK = common dso_local global i32 0, align 4
@MAX8925_ON_OFF_IRQ2_MASK = common dso_local global i32 0, align 4
@MAX8925_RTC_IRQ_MASK = common dso_local global i32 0, align 4
@MAX8925_NR_IRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate interrupts, ret:%d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@max8925_irq_domain_ops = common dso_local global i32 0, align 4
@max8925_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"max8925\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to request core IRQ: %d\0A\00", align 1
@MAX8925_TSC_IRQ_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"No interrupt support on TSC IRQ\0A\00", align 1
@max8925_tsc_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"max8925-tsc\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to request TSC IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8925_chip*, i32, %struct.max8925_platform_data*)* @max8925_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_irq_init(%struct.max8925_chip* %0, i32 %1, %struct.max8925_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max8925_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.max8925_platform_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  store %struct.max8925_chip* %0, %struct.max8925_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.max8925_platform_data* %2, %struct.max8925_platform_data** %7, align 8
  %11 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  %12 = load i64, i64* @IRQF_ONESHOT, align 8
  %13 = or i64 %11, %12
  store i64 %13, i64* %8, align 8
  %14 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %15 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %10, align 8
  %19 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %20 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MAX8925_CHG_IRQ1, align 4
  %23 = call i32 @max8925_reg_read(i32 %21, i32 %22)
  %24 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %25 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAX8925_CHG_IRQ2, align 4
  %28 = call i32 @max8925_reg_read(i32 %26, i32 %27)
  %29 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %30 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MAX8925_ON_OFF_IRQ1, align 4
  %33 = call i32 @max8925_reg_read(i32 %31, i32 %32)
  %34 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %35 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAX8925_ON_OFF_IRQ2, align 4
  %38 = call i32 @max8925_reg_read(i32 %36, i32 %37)
  %39 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %40 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MAX8925_RTC_IRQ, align 4
  %43 = call i32 @max8925_reg_read(i32 %41, i32 %42)
  %44 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %45 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MAX8925_TSC_IRQ, align 4
  %48 = call i32 @max8925_reg_read(i32 %46, i32 %47)
  %49 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %50 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MAX8925_ALARM0_CNTL, align 4
  %53 = call i32 @max8925_reg_write(i32 %51, i32 %52, i32 0)
  %54 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %55 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MAX8925_ALARM1_CNTL, align 4
  %58 = call i32 @max8925_reg_write(i32 %56, i32 %57, i32 0)
  %59 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %60 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MAX8925_CHG_IRQ1_MASK, align 4
  %63 = call i32 @max8925_reg_write(i32 %61, i32 %62, i32 255)
  %64 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %65 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MAX8925_CHG_IRQ2_MASK, align 4
  %68 = call i32 @max8925_reg_write(i32 %66, i32 %67, i32 255)
  %69 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %70 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MAX8925_ON_OFF_IRQ1_MASK, align 4
  %73 = call i32 @max8925_reg_write(i32 %71, i32 %72, i32 255)
  %74 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %75 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MAX8925_ON_OFF_IRQ2_MASK, align 4
  %78 = call i32 @max8925_reg_write(i32 %76, i32 %77, i32 255)
  %79 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %80 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MAX8925_RTC_IRQ_MASK, align 4
  %83 = call i32 @max8925_reg_write(i32 %81, i32 %82, i32 255)
  %84 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %85 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %84, i32 0, i32 5
  %86 = call i32 @mutex_init(i32* %85)
  %87 = load i32, i32* @MAX8925_NR_IRQS, align 4
  %88 = call i64 @irq_alloc_descs(i32 -1, i32 0, i32 %87, i32 0)
  %89 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %90 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %92 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %3
  %96 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %97 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %100 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @dev_err(%struct.TYPE_3__* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %186

106:                                              ; preds = %3
  %107 = load %struct.device_node*, %struct.device_node** %10, align 8
  %108 = load i32, i32* @MAX8925_NR_IRQS, align 4
  %109 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %110 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %114 = call i32 @irq_domain_add_legacy(%struct.device_node* %107, i32 %108, i32 %112, i32 0, i32* @max8925_irq_domain_ops, %struct.max8925_chip* %113)
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %117 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %119 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %106
  %123 = load i32, i32* @EBUSY, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %186

125:                                              ; preds = %106
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @max8925_irq, align 4
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @IRQF_ONESHOT, align 8
  %130 = or i64 %128, %129
  %131 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %132 = call i32 @request_threaded_irq(i32 %126, i32* null, i32 %127, i64 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.max8925_chip* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %125
  %136 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %137 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %136, i32 0, i32 3
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @dev_err(%struct.TYPE_3__* %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %142 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %141, i32 0, i32 1
  store i32 0, i32* %142, align 8
  %143 = load i32, i32* @EBUSY, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %186

145:                                              ; preds = %125
  %146 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %147 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @MAX8925_TSC_IRQ_MASK, align 4
  %150 = call i32 @max8925_reg_write(i32 %148, i32 %149, i32 15)
  %151 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %7, align 8
  %152 = getelementptr inbounds %struct.max8925_platform_data, %struct.max8925_platform_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %145
  %156 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %157 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %156, i32 0, i32 3
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = call i32 @dev_warn(%struct.TYPE_3__* %158, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %186

160:                                              ; preds = %145
  %161 = load %struct.max8925_platform_data*, %struct.max8925_platform_data** %7, align 8
  %162 = getelementptr inbounds %struct.max8925_platform_data, %struct.max8925_platform_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %165 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %167 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @max8925_tsc_irq, align 4
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* @IRQF_ONESHOT, align 8
  %172 = or i64 %170, %171
  %173 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %174 = call i32 @request_threaded_irq(i32 %168, i32* null, i32 %169, i64 %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.max8925_chip* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %160
  %178 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %179 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %178, i32 0, i32 3
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @dev_err(%struct.TYPE_3__* %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  %183 = load %struct.max8925_chip*, %struct.max8925_chip** %5, align 8
  %184 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %183, i32 0, i32 2
  store i32 0, i32* %184, align 4
  br label %185

185:                                              ; preds = %177, %160
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %155, %135, %122, %95
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @max8925_reg_read(i32, i32) #1

declare dso_local i32 @max8925_reg_write(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @irq_alloc_descs(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @irq_domain_add_legacy(%struct.device_node*, i32, i32, i32, i32*, %struct.max8925_chip*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i64, i8*, %struct.max8925_chip*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
