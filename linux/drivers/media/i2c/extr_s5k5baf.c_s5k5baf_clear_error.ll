; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_clear_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_clear_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf*)* @s5k5baf_clear_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_clear_error(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  %3 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %4 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %5 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %8 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
