; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_probe_reset_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_probe_reset_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"No reset GPIO defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"reset-duration\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"reset duration defaults to 200 ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*, %struct.device_node*)* @lan9303_probe_reset_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_probe_reset_gpio(%struct.lan9303* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan9303*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.lan9303* %0, %struct.lan9303** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %6 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %7 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %10 = call i32 @devm_gpiod_get_optional(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %12 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %14 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %20 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PTR_ERR(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %25 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %30 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

33:                                               ; preds = %23
  %34 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %35 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %34, i32 0, i32 0
  store i32 200, i32* %35, align 4
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %41 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %40, i32 0, i32 0
  %42 = call i32 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %41)
  br label %48

43:                                               ; preds = %33
  %44 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %45 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %50 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 1000
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %55 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %54, i32 0, i32 0
  store i32 1000, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %28, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @devm_gpiod_get_optional(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
