; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_pot_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_pot_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_g2_pot_clear(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca %struct.mv88e6xxx_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @mv88e6xxx_g2_pot_write(%struct.mv88e6xxx_chip* %9, i32 %10, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %19

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %5

19:                                               ; preds = %14, %5
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @mv88e6xxx_g2_pot_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
