; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_cfm.c_all_selection_criteria.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_cfm.c_all_selection_criteria.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.s_phy* }
%struct.s_phy = type { i32 }

@NUMPHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @all_selection_criteria(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.s_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %5, i32 0, i32 0
  %7 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  store %struct.s_phy* %7, %struct.s_phy** %3, align 8
  br label %8

8:                                                ; preds = %16, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NUMPHYS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %14 = load %struct.s_phy*, %struct.s_phy** %3, align 8
  %15 = call i32 @selection_criteria(%struct.s_smc* %13, %struct.s_phy* %14)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load %struct.s_phy*, %struct.s_phy** %3, align 8
  %20 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %19, i32 1
  store %struct.s_phy* %20, %struct.s_phy** %3, align 8
  br label %8

21:                                               ; preds = %8
  ret void
}

declare dso_local i32 @selection_criteria(%struct.s_smc*, %struct.s_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
