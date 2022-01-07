; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_parse_cb_no_ext_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_parse_cb_no_ext_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.goya_device*, %struct.asic_fixed_properties }
%struct.goya_device = type { i32 }
%struct.asic_fixed_properties = type { i32, i32, i32, i32 }
%struct.hl_cs_parser = type { i32, i64 }

@HW_CAP_MMU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Internal CB address %px + 0x%x is not in SRAM nor in DRAM\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*)* @goya_parse_cb_no_ext_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_parse_cb_no_ext_queue(%struct.hl_device* %0, %struct.hl_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_cs_parser*, align 8
  %6 = alloca %struct.asic_fixed_properties*, align 8
  %7 = alloca %struct.goya_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %5, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 2
  store %struct.asic_fixed_properties* %9, %struct.asic_fixed_properties** %6, align 8
  %10 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %11 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %10, i32 0, i32 1
  %12 = load %struct.goya_device*, %struct.goya_device** %11, align 8
  store %struct.goya_device* %12, %struct.goya_device** %7, align 8
  %13 = load %struct.goya_device*, %struct.goya_device** %7, align 8
  %14 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HW_CAP_MMU, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  %21 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %22 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %26 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %29 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %32 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @hl_mem_area_inside_range(i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %67

37:                                               ; preds = %20
  %38 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %39 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %43 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %46 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %49 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @hl_mem_area_inside_range(i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %67

54:                                               ; preds = %37
  %55 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %56 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %59 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %62 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %60, i32 %63)
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %54, %53, %36, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @hl_mem_area_inside_range(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
