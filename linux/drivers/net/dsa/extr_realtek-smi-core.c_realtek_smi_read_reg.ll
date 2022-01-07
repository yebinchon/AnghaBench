; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_smi*, i32, i32*)* @realtek_smi_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realtek_smi_read_reg(%struct.realtek_smi* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.realtek_smi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %12 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %11, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %16 = call i32 @realtek_smi_start(%struct.realtek_smi* %15)
  %17 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %18 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %19 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @realtek_smi_write_byte(%struct.realtek_smi* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %53

25:                                               ; preds = %3
  %26 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 255
  %29 = call i32 @realtek_smi_write_byte(%struct.realtek_smi* %26, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %53

33:                                               ; preds = %25
  %34 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 8
  %37 = call i32 @realtek_smi_write_byte(%struct.realtek_smi* %34, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %43 = call i32 @realtek_smi_read_byte0(%struct.realtek_smi* %42, i64* %8)
  %44 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %45 = call i32 @realtek_smi_read_byte1(%struct.realtek_smi* %44, i64* %9)
  %46 = load i64, i64* %8, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 8
  %51 = or i32 %47, %50
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %41, %40, %32, %24
  %54 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %55 = call i32 @realtek_smi_stop(%struct.realtek_smi* %54)
  %56 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %57 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %56, i32 0, i32 1
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @realtek_smi_start(%struct.realtek_smi*) #1

declare dso_local i32 @realtek_smi_write_byte(%struct.realtek_smi*, i32) #1

declare dso_local i32 @realtek_smi_read_byte0(%struct.realtek_smi*, i64*) #1

declare dso_local i32 @realtek_smi_read_byte1(%struct.realtek_smi*, i64*) #1

declare dso_local i32 @realtek_smi_stop(%struct.realtek_smi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
