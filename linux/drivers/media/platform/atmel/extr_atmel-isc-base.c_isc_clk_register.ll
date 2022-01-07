; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { %struct.TYPE_4__*, %struct.isc_clk*, %struct.regmap* }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i8* }
%struct.isc_clk = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__*, %struct.regmap* }
%struct.TYPE_5__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i8*, i32, i32* }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISC_ISPCK = common dso_local global i32 0, align 4
@ISC_MCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"isc-ispck\00", align 1
@isc_clk_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_GATE = common dso_local global i32 0, align 4
@CLK_SET_PARENT_GATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: clock register fail\0A\00", align 1
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isc_device*, i32)* @isc_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_clk_register(%struct.isc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.isc_clk*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %14 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %13, i32 0, i32 2
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %6, align 8
  %16 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %17 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %7, align 8
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = getelementptr inbounds %struct.device_node, %struct.device_node* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = call i32 @of_clk_get_parent_count(%struct.device_node* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %125

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ISC_ISPCK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 2, i32* %12, align 4
  br label %42

42:                                               ; preds = %41, %37, %34
  %43 = load %struct.device_node*, %struct.device_node** %7, align 8
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @of_clk_parent_fill(%struct.device_node* %43, i8** %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ISC_MCK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.device_node*, %struct.device_node** %7, align 8
  %52 = call i32 @of_property_read_string(%struct.device_node* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %10)
  br label %54

53:                                               ; preds = %42
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %56 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %55, i8*** %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @isc_clk_ops, i32** %61, align 8
  %62 = load i32, i32* @CLK_SET_RATE_GATE, align 4
  %63 = load i32, i32* @CLK_SET_PARENT_GATE, align 4
  %64 = or i32 %62, %63
  %65 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 %64, i32* %65, align 8
  %66 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %67 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %66, i32 0, i32 1
  %68 = load %struct.isc_clk*, %struct.isc_clk** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %68, i64 %70
  store %struct.isc_clk* %71, %struct.isc_clk** %8, align 8
  %72 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %73 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %74, align 8
  %75 = load %struct.regmap*, %struct.regmap** %6, align 8
  %76 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %77 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %76, i32 0, i32 5
  store %struct.regmap* %75, %struct.regmap** %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %80 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %82 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %85 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %84, i32 0, i32 4
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %85, align 8
  %86 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %87 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %86, i32 0, i32 3
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %90 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %93 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %92, i32 0, i32 2
  %94 = call i32 @clk_register(%struct.TYPE_4__* %91, %struct.TYPE_5__* %93)
  %95 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %96 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %98 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @IS_ERR(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %54
  %103 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %104 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @dev_err(%struct.TYPE_4__* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  %108 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %109 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @PTR_ERR(i32 %110)
  store i32 %111, i32* %3, align 4
  br label %125

112:                                              ; preds = %54
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @ISC_MCK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load %struct.device_node*, %struct.device_node** %7, align 8
  %118 = load i32, i32* @of_clk_src_simple_get, align 4
  %119 = load %struct.isc_clk*, %struct.isc_clk** %8, align 8
  %120 = getelementptr inbounds %struct.isc_clk, %struct.isc_clk* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @of_clk_add_provider(%struct.device_node* %117, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %116, %112
  br label %124

124:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %102, %31
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #1

declare dso_local i32 @of_clk_parent_fill(%struct.device_node*, i8**, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @clk_register(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
