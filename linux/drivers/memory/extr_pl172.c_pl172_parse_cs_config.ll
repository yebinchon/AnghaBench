; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_pl172.c_pl172_parse_cs_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_pl172.c_pl172_parse_cs_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"mpmc,cs\00", align 1
@PL172_MAX_CS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"cs%u invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"cs property required\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.device_node*)* @pl172_parse_cs_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl172_parse_cs_config(%struct.amba_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %5, align 8
  %8 = call i32 @of_property_read_u32(%struct.device_node* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PL172_MAX_CS, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %16 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %10
  %22 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @pl172_setup_static(%struct.amba_device* %22, %struct.device_node* %23, i64 %24)
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %28 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %21, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pl172_setup_static(%struct.amba_device*, %struct.device_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
