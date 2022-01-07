; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_msp430_ir_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_msp430_ir_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_ci = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, %struct.rc_dev* }
%struct.rc_dev = type { i32 }

@DEBINOSWAP = common dso_local global i32 0, align 4
@DEBIADDR_IR = common dso_local global i32 0, align 4
@ir_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"budget_ci: received byte 0x%02x\0A\00", align 1
@IR_DEVICE_ANY = common dso_local global i32 0, align 4
@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @msp430_ir_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp430_ir_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.budget_ci*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.budget_ci*
  store %struct.budget_ci* %7, %struct.budget_ci** %3, align 8
  %8 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %9 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  store %struct.rc_dev* %11, %struct.rc_dev** %4, align 8
  %12 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %13 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %12, i32 0, i32 1
  %14 = load i32, i32* @DEBINOSWAP, align 4
  %15 = load i32, i32* @DEBIADDR_IR, align 4
  %16 = call i32 @ttpci_budget_debiread(i32* %13, i32 %14, i32 %15, i32 2, i32 1, i32 0)
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* @ir_debug, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 127
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %31 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 63
  %35 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %36 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  br label %103

38:                                               ; preds = %23
  %39 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %40 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %103

45:                                               ; preds = %38
  %46 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %47 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %50 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IR_DEVICE_ANY, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %57 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 31
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %103

64:                                               ; preds = %55, %45
  %65 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %66 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %72 = load i32, i32* @RC_PROTO_RC5, align 4
  %73 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %74 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %78 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @RC_SCANCODE_RC5(i32 %76, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, 32
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @rc_keydown(%struct.rc_dev* %71, i32 %72, i32 %81, i32 %87)
  br label %103

89:                                               ; preds = %64
  %90 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %91 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %92 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %93 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 32
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @rc_keydown(%struct.rc_dev* %90, i32 %91, i32 %95, i32 %101)
  br label %103

103:                                              ; preds = %89, %70, %63, %44, %29
  ret void
}

declare dso_local i32 @ttpci_budget_debiread(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

declare dso_local i32 @RC_SCANCODE_RC5(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
