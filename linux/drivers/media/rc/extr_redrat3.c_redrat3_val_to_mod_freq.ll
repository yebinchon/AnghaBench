; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_val_to_mod_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_val_to_mod_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_irdata = type { i32, i32 }

@RR3_CLK = common dso_local global i32 0, align 4
@RR3_CLK_PER_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.redrat3_irdata*)* @redrat3_val_to_mod_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redrat3_val_to_mod_freq(%struct.redrat3_irdata* %0) #0 {
  %2 = alloca %struct.redrat3_irdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.redrat3_irdata* %0, %struct.redrat3_irdata** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.redrat3_irdata*, %struct.redrat3_irdata** %2, align 8
  %6 = getelementptr inbounds %struct.redrat3_irdata, %struct.redrat3_irdata* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @be16_to_cpu(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i32, i32* @RR3_CLK, align 4
  %13 = load %struct.redrat3_irdata*, %struct.redrat3_irdata** %2, align 8
  %14 = getelementptr inbounds %struct.redrat3_irdata, %struct.redrat3_irdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be16_to_cpu(i32 %15)
  %17 = mul nsw i32 %12, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RR3_CLK_PER_COUNT, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sdiv i32 %17, %20
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %11, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
