; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_i2400m.h_i2400m_brh_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_i2400m.h_i2400m_brh_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2400M_BRH_SIGNATURE = common dso_local global i32 0, align 4
@I2400M_BRH_DIRECT_ACCESS = common dso_local global i32 0, align 4
@I2400M_BRH_RESPONSE_REQUIRED = common dso_local global i32 0, align 4
@I2400M_BRH_USE_CHECKSUM = common dso_local global i32 0, align 4
@I2400M_BRH_OPCODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @i2400m_brh_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_brh_command(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @I2400M_BRH_SIGNATURE, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @I2400M_BRH_DIRECT_ACCESS, align 4
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  %15 = or i32 %7, %14
  %16 = load i32, i32* @I2400M_BRH_RESPONSE_REQUIRED, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @I2400M_BRH_USE_CHECKSUM, align 4
  br label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = or i32 %17, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @I2400M_BRH_OPCODE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = or i32 %25, %28
  %30 = call i32 @cpu_to_le32(i32 %29)
  ret i32 %30
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
