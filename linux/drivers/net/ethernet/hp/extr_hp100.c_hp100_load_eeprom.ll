; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_load_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_load_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@EEPROM_CTRL = common dso_local global i32 0, align 4
@HP100_EEPROM_LOAD = common dso_local global i32 0, align 4
@OPTION_MSW = common dso_local global i32 0, align 4
@HP100_EE_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"hp100: %s: hp100_load_eeprom - timeout\0A\00", align 1
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @hp100_load_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp100_load_eeprom(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @EEPROM_CTRL, align 4
  %18 = call i32 @hp100_page(i32 %17)
  %19 = load i32, i32* @HP100_EEPROM_LOAD, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @EEPROM_CTRL, align 4
  %22 = call i32 @hp100_andw(i32 %20, i32 %21)
  %23 = load i32, i32* @HP100_EEPROM_LOAD, align 4
  %24 = load i32, i32* @EEPROM_CTRL, align 4
  %25 = call i32 @hp100_orw(i32 %23, i32 %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %37, %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 10000
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, i32* @OPTION_MSW, align 4
  %31 = call i32 @hp100_inb(i32 %30)
  %32 = load i32, i32* @HP100_EE_LOAD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %45

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %26

40:                                               ; preds = %26
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @hp100_page(i32) #1

declare dso_local i32 @hp100_andw(i32, i32) #1

declare dso_local i32 @hp100_orw(i32, i32) #1

declare dso_local i32 @hp100_inb(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
