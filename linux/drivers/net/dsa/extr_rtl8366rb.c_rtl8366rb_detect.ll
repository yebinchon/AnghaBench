; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"can't get chip ID (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"found an RTL8366S switch\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"this switch is not yet supported, submit patches!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"found an RTL8366RB switch\0A\00", align 1
@RTL8366RB_PORT_NUM_CPU = common dso_local global i32 0, align 4
@RTL8366RB_NUM_PORTS = common dso_local global i32 0, align 4
@RTL8366RB_NUM_VLANS = common dso_local global i32 0, align 4
@rtl8366rb_mib_counters = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"found an Unknown Realtek switch (id=0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_smi*)* @rtl8366rb_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_detect(%struct.realtek_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_smi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %3, align 8
  %7 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %8 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %7, i32 0, i32 6
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %11 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_read(i32 %12, i32 92, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %49 [
    i32 24615, label %23
    i32 22839, label %30
  ]

23:                                               ; preds = %21
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %61

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @RTL8366RB_PORT_NUM_CPU, align 4
  %34 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %35 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @RTL8366RB_NUM_PORTS, align 4
  %37 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %38 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @RTL8366RB_NUM_VLANS, align 4
  %40 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %41 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @rtl8366rb_mib_counters, align 4
  %43 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %44 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @rtl8366rb_mib_counters, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %48 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %53

49:                                               ; preds = %21
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %30
  %54 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %55 = call i32 @rtl8366rb_reset_chip(%struct.realtek_smi* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %58, %23, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @rtl8366rb_reset_chip(%struct.realtek_smi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
