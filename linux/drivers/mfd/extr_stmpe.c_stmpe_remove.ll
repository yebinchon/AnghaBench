; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32, i32, i32 }

@STMPE_BLOCK_ADC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmpe_remove(%struct.stmpe* %0) #0 {
  %2 = alloca %struct.stmpe*, align 8
  store %struct.stmpe* %0, %struct.stmpe** %2, align 8
  %3 = load %struct.stmpe*, %struct.stmpe** %2, align 8
  %4 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @IS_ERR(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.stmpe*, %struct.stmpe** %2, align 8
  %10 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regulator_disable(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.stmpe*, %struct.stmpe** %2, align 8
  %15 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IS_ERR(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.stmpe*, %struct.stmpe** %2, align 8
  %21 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regulator_disable(i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.stmpe*, %struct.stmpe** %2, align 8
  %26 = load i32, i32* @STMPE_BLOCK_ADC, align 4
  %27 = call i32 @__stmpe_disable(%struct.stmpe* %25, i32 %26)
  %28 = load %struct.stmpe*, %struct.stmpe** %2, align 8
  %29 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mfd_remove_devices(i32 %30)
  ret i32 0
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @__stmpe_disable(%struct.stmpe*, i32) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
