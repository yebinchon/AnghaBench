; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cec-gpio/extr_cec-gpio.c_cec_gpio_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cec-gpio/extr_cec-gpio.c_cec_gpio_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.seq_file = type { i32 }
%struct.cec_gpio = type { i8*, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"mode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"low-drive\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"using irq: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"hpd: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"5V: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_adapter*, %struct.seq_file*)* @cec_gpio_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_gpio_status(%struct.cec_adapter* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.cec_gpio*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %7 = call %struct.cec_gpio* @cec_get_drvdata(%struct.cec_adapter* %6)
  store %struct.cec_gpio* %7, %struct.cec_gpio** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %10 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %18 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %21 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %22 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %28 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %33 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %25, %2
  %35 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %36 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %42 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %47 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %39, %34
  ret void
}

declare dso_local %struct.cec_gpio* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
