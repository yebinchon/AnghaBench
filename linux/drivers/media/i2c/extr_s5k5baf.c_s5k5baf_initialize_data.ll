; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_initialize_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_initialize_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*)* @s5k5baf_initialize_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_initialize_data(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %3 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %4 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %6 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %5, i32 0, i32 0
  store i32 666, i32* %6, align 8
  %7 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %8 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %11 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %13 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
