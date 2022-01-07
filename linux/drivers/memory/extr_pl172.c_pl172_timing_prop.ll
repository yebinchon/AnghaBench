; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_pl172.c_pl172_timing_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_pl172.c_pl172_timing_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.device_node = type { i32 }
%struct.pl172_data = type { i32, i32 }

@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s timing too tight\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: %u cycle(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.device_node*, i8*, i32, i32, i32)* @pl172_timing_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl172_timing_prop(%struct.amba_device* %0, %struct.device_node* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amba_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pl172_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.amba_device*, %struct.amba_device** %8, align 8
  %18 = call %struct.pl172_data* @amba_get_drvdata(%struct.amba_device* %17)
  store %struct.pl172_data* %18, %struct.pl172_data** %14, align 8
  %19 = load %struct.device_node*, %struct.device_node** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %19, i8* %20, i32* %16)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %16, align 4
  %25 = load %struct.pl172_data*, %struct.pl172_data** %14, align 8
  %26 = getelementptr inbounds %struct.pl172_data, %struct.pl172_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load i32, i32* @NSEC_PER_MSEC, align 4
  %30 = call i32 @DIV_ROUND_UP(i32 %28, i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %48

36:                                               ; preds = %23
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.amba_device*, %struct.amba_device** %8, align 8
  %42 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %41, i32 0, i32 0
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %70

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.pl172_data*, %struct.pl172_data** %14, align 8
  %51 = getelementptr inbounds %struct.pl172_data, %struct.pl172_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @writel(i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %48, %6
  %57 = load %struct.amba_device*, %struct.amba_device** %8, align 8
  %58 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %57, i32 0, i32 0
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.pl172_data*, %struct.pl172_data** %14, align 8
  %63 = getelementptr inbounds %struct.pl172_data, %struct.pl172_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i64 @readl(i32 %66)
  %68 = add nsw i64 %61, %67
  %69 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %59, i64 %68)
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %56, %40
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.pl172_data* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i64) #1

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
