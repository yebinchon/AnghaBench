; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm5102-tables.c_wm5102_volatile_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm5102-tables.c_wm5102_volatile_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @wm5102_volatile_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5102_volatile_register(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 132, label %7
    i32 189, label %7
    i32 131, label %7
    i32 130, label %7
    i32 129, label %7
    i32 128, label %7
    i32 138, label %7
    i32 134, label %7
    i32 133, label %7
    i32 137, label %7
    i32 136, label %7
    i32 135, label %7
    i32 162, label %7
    i32 195, label %7
    i32 194, label %7
    i32 193, label %7
    i32 192, label %7
    i32 191, label %7
    i32 190, label %7
    i32 163, label %7
    i32 150, label %7
    i32 149, label %7
    i32 148, label %7
    i32 147, label %7
    i32 146, label %7
    i32 145, label %7
    i32 144, label %7
    i32 143, label %7
    i32 142, label %7
    i32 141, label %7
    i32 157, label %7
    i32 156, label %7
    i32 155, label %7
    i32 154, label %7
    i32 153, label %7
    i32 152, label %7
    i32 151, label %7
    i32 140, label %7
    i32 196, label %7
    i32 199, label %7
    i32 198, label %7
    i32 197, label %7
    i32 188, label %7
    i32 176, label %7
    i32 175, label %7
    i32 174, label %7
    i32 173, label %7
    i32 172, label %7
    i32 171, label %7
    i32 170, label %7
    i32 169, label %7
    i32 168, label %7
    i32 167, label %7
    i32 166, label %7
    i32 187, label %7
    i32 186, label %7
    i32 185, label %7
    i32 184, label %7
    i32 183, label %7
    i32 182, label %7
    i32 165, label %7
    i32 164, label %7
    i32 181, label %7
    i32 180, label %7
    i32 179, label %7
    i32 178, label %7
    i32 177, label %7
    i32 160, label %7
    i32 159, label %7
    i32 161, label %7
    i32 158, label %7
    i32 139, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %34

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp uge i32 %9, 1048576
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 1073152
  br i1 %13, label %32, label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %5, align 4
  %16 = icmp uge i32 %15, 1572864
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 1574912
  br i1 %19, label %32, label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp uge i32 %21, 1638400
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %24, 1656832
  br i1 %25, label %32, label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %5, align 4
  %28 = icmp uge i32 %27, 1736704
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %30, 1742848
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %23, %17, %11
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %29, %26
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %7
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
