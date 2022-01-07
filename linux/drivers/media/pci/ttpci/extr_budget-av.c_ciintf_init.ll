; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_ciintf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_av = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.budget_av*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@MASK_11 = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ciintf_read_attribute_mem = common dso_local global i32 0, align 4
@ciintf_write_attribute_mem = common dso_local global i32 0, align 4
@ciintf_read_cam_control = common dso_local global i32 0, align 4
@ciintf_write_cam_control = common dso_local global i32 0, align 4
@ciintf_slot_reset = common dso_local global i32 0, align 4
@ciintf_slot_shutdown = common dso_local global i32 0, align 4
@ciintf_slot_ts_enable = common dso_local global i32 0, align 4
@ciintf_poll_slot_status = common dso_local global i32 0, align 4
@SLOTSTATUS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ci initialisation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ci interface initialised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget_av*)* @ciintf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciintf_init(%struct.budget_av* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.budget_av*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.budget_av* %0, %struct.budget_av** %3, align 8
  %6 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %7 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  store %struct.saa7146_dev* %9, %struct.saa7146_dev** %4, align 8
  %10 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %11 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %10, i32 0, i32 0
  %12 = call i32 @memset(%struct.TYPE_5__* %11, i32 0, i32 4)
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %14 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %15 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %13, i32 0, i32 %14)
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %17 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %18 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %16, i32 1, i32 %17)
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %20 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %21 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %19, i32 2, i32 %20)
  %22 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %23 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %24 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %22, i32 3, i32 %23)
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %26 = load i32, i32* @MC1, align 4
  %27 = load i32, i32* @MASK_27, align 4
  %28 = load i32, i32* @MASK_11, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @saa7146_write(%struct.saa7146_dev* %25, i32 %26, i32 %29)
  %31 = load i32, i32* @THIS_MODULE, align 4
  %32 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %33 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 9
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @ciintf_read_attribute_mem, align 4
  %36 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %37 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 8
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @ciintf_write_attribute_mem, align 4
  %40 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %41 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 7
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @ciintf_read_cam_control, align 4
  %44 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %45 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @ciintf_write_cam_control, align 4
  %48 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %49 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @ciintf_slot_reset, align 4
  %52 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %53 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @ciintf_slot_shutdown, align 4
  %56 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %57 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @ciintf_slot_ts_enable, align 4
  %60 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %61 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @ciintf_poll_slot_status, align 4
  %64 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %65 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %68 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %69 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store %struct.budget_av* %67, %struct.budget_av** %70, align 8
  %71 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %72 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load i32, i32* @SLOTSTATUS_NONE, align 4
  %75 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %76 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %78 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %81 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %80, i32 0, i32 0
  %82 = call i32 @dvb_ca_en50221_init(i32* %79, %struct.TYPE_5__* %81, i32 0, i32 1)
  store i32 %82, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %1
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %88

86:                                               ; preds = %1
  %87 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

88:                                               ; preds = %84
  %89 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %90 = load i32, i32* @MC1, align 4
  %91 = load i32, i32* @MASK_27, align 4
  %92 = call i32 @saa7146_write(%struct.saa7146_dev* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %88, %86
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @dvb_ca_en50221_init(i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
