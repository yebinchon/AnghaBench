; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_reg_writeable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_reg_writeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wm831x = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @wm831x_reg_writeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_reg_writeable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.wm831x* @dev_get_drvdata(%struct.device* %7)
  store %struct.wm831x* %8, %struct.wm831x** %6, align 8
  %9 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @wm831x_reg_locked(%struct.wm831x* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %17 [
    i32 132, label %16
    i32 131, label %16
    i32 145, label %16
    i32 128, label %16
    i32 149, label %16
    i32 144, label %16
    i32 237, label %16
    i32 137, label %16
    i32 136, label %16
    i32 148, label %16
    i32 194, label %16
    i32 193, label %16
    i32 191, label %16
    i32 189, label %16
    i32 187, label %16
    i32 185, label %16
    i32 183, label %16
    i32 133, label %16
    i32 192, label %16
    i32 190, label %16
    i32 188, label %16
    i32 186, label %16
    i32 184, label %16
    i32 140, label %16
    i32 139, label %16
    i32 143, label %16
    i32 142, label %16
    i32 141, label %16
    i32 138, label %16
    i32 130, label %16
    i32 129, label %16
    i32 250, label %16
    i32 249, label %16
    i32 238, label %16
    i32 242, label %16
    i32 241, label %16
    i32 240, label %16
    i32 239, label %16
    i32 203, label %16
    i32 202, label %16
    i32 201, label %16
    i32 200, label %16
    i32 199, label %16
    i32 198, label %16
    i32 197, label %16
    i32 196, label %16
    i32 195, label %16
    i32 210, label %16
    i32 209, label %16
    i32 208, label %16
    i32 207, label %16
    i32 206, label %16
    i32 205, label %16
    i32 204, label %16
    i32 247, label %16
    i32 246, label %16
    i32 245, label %16
    i32 248, label %16
    i32 135, label %16
    i32 134, label %16
    i32 236, label %16
    i32 235, label %16
    i32 218, label %16
    i32 150, label %16
    i32 234, label %16
    i32 233, label %16
    i32 231, label %16
    i32 230, label %16
    i32 232, label %16
    i32 229, label %16
    i32 228, label %16
    i32 226, label %16
    i32 225, label %16
    i32 227, label %16
    i32 224, label %16
    i32 223, label %16
    i32 222, label %16
    i32 221, label %16
    i32 220, label %16
    i32 219, label %16
    i32 217, label %16
    i32 216, label %16
    i32 177, label %16
    i32 176, label %16
    i32 175, label %16
    i32 174, label %16
    i32 173, label %16
    i32 172, label %16
    i32 171, label %16
    i32 170, label %16
    i32 169, label %16
    i32 168, label %16
    i32 167, label %16
    i32 166, label %16
    i32 165, label %16
    i32 164, label %16
    i32 163, label %16
    i32 162, label %16
    i32 161, label %16
    i32 160, label %16
    i32 159, label %16
    i32 158, label %16
    i32 157, label %16
    i32 156, label %16
    i32 155, label %16
    i32 154, label %16
    i32 153, label %16
    i32 152, label %16
    i32 151, label %16
    i32 182, label %16
    i32 181, label %16
    i32 180, label %16
    i32 179, label %16
    i32 178, label %16
    i32 147, label %16
    i32 146, label %16
    i32 244, label %16
    i32 243, label %16
    i32 215, label %16
    i32 214, label %16
    i32 213, label %16
    i32 212, label %16
    i32 211, label %16
  ]

16:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  store i32 1, i32* %3, align 4
  br label %18

17:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %16, %13
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.wm831x* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @wm831x_reg_locked(%struct.wm831x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
