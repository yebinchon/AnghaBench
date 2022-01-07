; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-patch.c_av7110_set22k.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-patch.c_av7110_set22k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_patch = type { i32 }

@COMTYPE_AUDIODAC = common dso_local global i32 0, align 4
@ON22K = common dso_local global i32 0, align 4
@OFF22K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.budget_patch*, i32)* @av7110_set22k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av7110_set22k(%struct.budget_patch* %0, i32 %1) #0 {
  %3 = alloca %struct.budget_patch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.budget_patch* %0, %struct.budget_patch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %7 = load i32, i32* @COMTYPE_AUDIODAC, align 4
  %8 = shl i32 %7, 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ON22K, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @OFF22K, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = or i32 %8, %16
  store i32 %17, i32* %6, align 4
  %18 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.budget_patch*, %struct.budget_patch** %3, align 8
  %20 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget_patch* %19)
  %21 = load %struct.budget_patch*, %struct.budget_patch** %3, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %23 = call i32 @budget_av7110_send_fw_cmd(%struct.budget_patch* %21, i32* %22, i32 2)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget_patch*) #1

declare dso_local i32 @budget_av7110_send_fw_cmd(%struct.budget_patch*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
