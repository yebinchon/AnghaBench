; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-rds-gen.c_vivid_get_di.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-rds-gen.c_vivid_get_di.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_rds_gen = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vivid_rds_gen*, i32)* @vivid_get_di to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_get_di(%struct.vivid_rds_gen* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vivid_rds_gen*, align 8
  %5 = alloca i32, align 4
  store %struct.vivid_rds_gen* %0, %struct.vivid_rds_gen** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %39 [
    i32 0, label %7
    i32 1, label %15
    i32 2, label %23
    i32 3, label %31
  ]

7:                                                ; preds = %2
  %8 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %9 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 2
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 3
  %14 = or i32 %11, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %17 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 2
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 3
  %22 = or i32 %19, %21
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %25 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 2
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 3
  %30 = or i32 %27, %29
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.vivid_rds_gen*, %struct.vivid_rds_gen** %4, align 8
  %33 = getelementptr inbounds %struct.vivid_rds_gen, %struct.vivid_rds_gen* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 2
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 3
  %38 = or i32 %35, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %31, %23, %15, %7
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
