; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_reload_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_reload_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_SMBCSR = common dso_local global i32 0, align 4
@SMBCSR_EEPROMD = common dso_local global i32 0, align 4
@SMBCSR_CNACK = common dso_local global i32 0, align 4
@SMBCSR_RELOAD = common dso_local global i32 0, align 4
@JME_EEPROM_RELOAD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"eeprom reload timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*)* @jme_reload_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_reload_eeprom(%struct.jme_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %3, align 8
  %6 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %7 = load i32, i32* @JME_SMBCSR, align 4
  %8 = call i32 @jread32(%struct.jme_adapter* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SMBCSR_EEPROMD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %1
  %14 = load i32, i32* @SMBCSR_CNACK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %18 = load i32, i32* @JME_SMBCSR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @jwrite32(%struct.jme_adapter* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @SMBCSR_RELOAD, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %25 = load i32, i32* @JME_SMBCSR, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @jwrite32(%struct.jme_adapter* %24, i32 %25, i32 %26)
  %28 = call i32 @mdelay(i32 12)
  %29 = load i32, i32* @JME_EEPROM_RELOAD_TIMEOUT, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %43, %13
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = call i32 @mdelay(i32 1)
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %36 = load i32, i32* @JME_SMBCSR, align 4
  %37 = call i32 @jread32(%struct.jme_adapter* %35, i32 %36)
  %38 = load i32, i32* @SMBCSR_RELOAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  br label %30

46:                                               ; preds = %41, %30
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %1
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
