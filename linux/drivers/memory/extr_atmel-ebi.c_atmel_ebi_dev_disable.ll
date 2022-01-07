; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_atmel-ebi.c_atmel_ebi_dev_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_atmel-ebi.c_atmel_ebi_dev_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ebi = type { %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.property = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_ebi*, %struct.device_node*)* @atmel_ebi_dev_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ebi_dev_disable(%struct.atmel_ebi* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_ebi*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.property*, align 8
  store %struct.atmel_ebi* %0, %struct.atmel_ebi** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.atmel_ebi*, %struct.atmel_ebi** %4, align 8
  %9 = getelementptr inbounds %struct.atmel_ebi, %struct.atmel_ebi* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.property* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.property* %13, %struct.property** %7, align 8
  %14 = load %struct.property*, %struct.property** %7, align 8
  %15 = icmp ne %struct.property* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kstrdup(%struct.device* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.property*, %struct.property** %7, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.property*, %struct.property** %7, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kstrdup(%struct.device* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.property*, %struct.property** %7, align 8
  %37 = getelementptr inbounds %struct.property, %struct.property* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.property*, %struct.property** %7, align 8
  %39 = getelementptr inbounds %struct.property, %struct.property* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %32
  %46 = load %struct.property*, %struct.property** %7, align 8
  %47 = getelementptr inbounds %struct.property, %struct.property* %46, i32 0, i32 0
  store i32 9, i32* %47, align 8
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = load %struct.property*, %struct.property** %7, align 8
  %50 = call i32 @of_update_property(%struct.device_node* %48, %struct.property* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %42, %29, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.property* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_kstrdup(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_update_property(%struct.device_node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
