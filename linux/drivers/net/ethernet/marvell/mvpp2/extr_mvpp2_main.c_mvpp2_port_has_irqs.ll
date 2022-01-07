; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_port_has_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_port_has_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i64 }
%struct.device_node = type { i32 }

@MVPP21 = common dso_local global i64 0, align 8
@MVPP2_MAX_THREADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hif%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, %struct.device_node*, i64*)* @mvpp2_port_has_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_port_has_irqs(%struct.mvpp2* %0, %struct.device_node* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %6, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %45

13:                                               ; preds = %3
  %14 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %15 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MVPP21, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %45

20:                                               ; preds = %13
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = call i64 @mvpp22_port_has_legacy_tx_irqs(%struct.device_node* %21, i64* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %45

26:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MVPP2_MAX_THREADS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @snprintf(i8* %32, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %37 = call i64 @of_property_match_string(%struct.device_node* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %45

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %27

44:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %39, %25, %19, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @mvpp22_port_has_legacy_tx_irqs(%struct.device_node*, i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
